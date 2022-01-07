; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_clock.c_ptp_clock_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_clock.c_ptp_clock_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { i32, i32, i32, i64, i32 }

@ptp_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptp_clock_unregister(%struct.ptp_clock* %0) #0 {
  %2 = alloca %struct.ptp_clock*, align 8
  store %struct.ptp_clock* %0, %struct.ptp_clock** %2, align 8
  %3 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %4 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %6 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 4
  %7 = call i32 @wake_up_interruptible(i32* %6)
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %9 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %14 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pps_unregister_source(i64 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %19 = call i32 @ptp_cleanup_sysfs(%struct.ptp_clock* %18)
  %20 = load i32, i32* @ptp_class, align 4
  %21 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %22 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_destroy(i32 %20, i32 %23)
  %25 = load %struct.ptp_clock*, %struct.ptp_clock** %2, align 8
  %26 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %25, i32 0, i32 1
  %27 = call i32 @posix_clock_unregister(i32* %26)
  ret i32 0
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @pps_unregister_source(i64) #1

declare dso_local i32 @ptp_cleanup_sysfs(%struct.ptp_clock*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @posix_clock_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
