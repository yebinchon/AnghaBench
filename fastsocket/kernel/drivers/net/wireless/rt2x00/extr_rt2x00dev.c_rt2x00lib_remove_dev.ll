; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_remove_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00dev.c_rt2x00lib_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_remove_dev(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 14
  %6 = call i32 @clear_bit(i32 %3, i32* %5)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2x00lib_disable_radio(%struct.rt2x00_dev* %7)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 13
  %11 = call i32 @cancel_work_sync(i32* %10)
  %12 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %13 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %12, i32 0, i32 12
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 11
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 10
  %24 = call i32 @hrtimer_cancel(i32* %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 9
  %27 = call i32 @cancel_work_sync(i32* %26)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %29 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %28, i32 0, i32 8
  %30 = call i32 @cancel_work_sync(i32* %29)
  br label %31

31:                                               ; preds = %21, %1
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @destroy_workqueue(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %42, i32 0, i32 6
  %44 = call i32 @kfifo_free(i32* %43)
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %45, i32 0, i32 5
  %47 = call i32 @tasklet_kill(i32* %46)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 4
  %50 = call i32 @tasklet_kill(i32* %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %52 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %51, i32 0, i32 3
  %53 = call i32 @tasklet_kill(i32* %52)
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %55 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %54, i32 0, i32 2
  %56 = call i32 @tasklet_kill(i32* %55)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %58 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %57, i32 0, i32 1
  %59 = call i32 @tasklet_kill(i32* %58)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %61 = call i32 @rt2x00lib_uninitialize(%struct.rt2x00_dev* %60)
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %63 = call i32 @rt2x00debug_deregister(%struct.rt2x00_dev* %62)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %65 = call i32 @rt2x00leds_unregister(%struct.rt2x00_dev* %64)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %67 = call i32 @rt2x00lib_remove_hw(%struct.rt2x00_dev* %66)
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %69 = call i32 @rt2x00lib_free_firmware(%struct.rt2x00_dev* %68)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %71 = call i32 @rt2x00queue_free(%struct.rt2x00_dev* %70)
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %73 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %41
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %78 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @kfree(i64 %79)
  br label %81

81:                                               ; preds = %76, %41
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_disable_radio(%struct.rt2x00_dev*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @rt2x00lib_uninitialize(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00debug_deregister(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00leds_unregister(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_remove_hw(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_free_firmware(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00queue_free(%struct.rt2x00_dev*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
