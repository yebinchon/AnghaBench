; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_dvb_usb_device_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_dvb_usb_device_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.pd_dvb_adapter }
%struct.pd_dvb_adapter = type { i32, i32, i32, i32, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pd_dvb_usb_device_exit(%struct.poseidon* %0) #0 {
  %2 = alloca %struct.poseidon*, align 8
  %3 = alloca %struct.pd_dvb_adapter*, align 8
  store %struct.poseidon* %0, %struct.poseidon** %2, align 8
  %4 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %5 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %4, i32 0, i32 0
  store %struct.pd_dvb_adapter* %5, %struct.pd_dvb_adapter** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %7, i32 0, i32 4
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %12, i32 0, i32 3
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ true, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %20 = call i32 @set_current_state(i32 %19)
  %21 = load i32, i32* @HZ, align 4
  %22 = call i32 @schedule_timeout(i32 %21)
  br label %6

23:                                               ; preds = %16
  %24 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %24, i32 0, i32 2
  %26 = call i32 @dvb_dmxdev_release(i32* %25)
  %27 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %27, i32 0, i32 1
  %29 = call i32 @dvb_unregister_frontend(i32* %28)
  %30 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %30, i32 0, i32 0
  %32 = call i32 @dvb_unregister_adapter(i32* %31)
  %33 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %34 = call i32 @pd_dvb_usb_device_cleanup(%struct.poseidon* %33)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @dvb_dmxdev_release(i32*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_unregister_adapter(i32*) #1

declare dso_local i32 @pd_dvb_usb_device_cleanup(%struct.poseidon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
