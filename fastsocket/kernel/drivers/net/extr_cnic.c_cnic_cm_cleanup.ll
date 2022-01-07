; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64, %struct.cnic_dev* }
%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_sock*)* @cnic_cm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_cleanup(%struct.cnic_sock* %0) #0 {
  %2 = alloca %struct.cnic_sock*, align 8
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %2, align 8
  %5 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %11 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %10, i32 0, i32 1
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %11, align 8
  store %struct.cnic_dev* %12, %struct.cnic_dev** %3, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 0
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %4, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 0
  %18 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %19 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @be16_to_cpu(i64 %20)
  %22 = call i32 @cnic_free_id(i32* %17, i32 %21)
  %23 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %24 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @cnic_free_id(i32*, i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
