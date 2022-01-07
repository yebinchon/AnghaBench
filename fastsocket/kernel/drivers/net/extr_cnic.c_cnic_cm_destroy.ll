; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SK_F_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_cm_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_destroy(%struct.cnic_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %3, align 8
  %4 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %5 = call i32 @cnic_in_use(%struct.cnic_sock* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %12 = call i32 @csk_hold(%struct.cnic_sock* %11)
  %13 = load i32, i32* @SK_F_INUSE, align 4
  %14 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %15 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i64* %15)
  %17 = call i32 (...) @smp_mb__after_clear_bit()
  br label %18

18:                                               ; preds = %23, %10
  %19 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %20 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %19, i32 0, i32 1
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @msleep(i32 1)
  br label %18

25:                                               ; preds = %18
  %26 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %27 = call i32 @cnic_cm_cleanup(%struct.cnic_sock* %26)
  %28 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %29 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.cnic_sock*, %struct.cnic_sock** %3, align 8
  %31 = call i32 @csk_put(%struct.cnic_sock* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i32 @csk_hold(%struct.cnic_sock*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cnic_cm_cleanup(%struct.cnic_sock*) #1

declare dso_local i32 @csk_put(%struct.cnic_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
