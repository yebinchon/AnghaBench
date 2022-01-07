; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_attempt_pcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_attempt_pcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynpcc_info = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dynpcc_info*, i32)* @jme_attempt_pcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_attempt_pcc(%struct.dynpcc_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dynpcc_info*, align 8
  %4 = alloca i32, align 4
  store %struct.dynpcc_info* %0, %struct.dynpcc_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %7 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %15 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %18 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %24 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %30 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.dynpcc_info*, %struct.dynpcc_info** %3, align 8
  %32 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %13, %27, %22
  ret void
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
