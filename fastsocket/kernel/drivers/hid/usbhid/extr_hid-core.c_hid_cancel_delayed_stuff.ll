; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_cancel_delayed_stuff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_hid_cancel_delayed_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhid_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhid_device*)* @hid_cancel_delayed_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_cancel_delayed_stuff(%struct.usbhid_device* %0) #0 {
  %2 = alloca %struct.usbhid_device*, align 8
  store %struct.usbhid_device* %0, %struct.usbhid_device** %2, align 8
  %3 = load %struct.usbhid_device*, %struct.usbhid_device** %2, align 8
  %4 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %3, i32 0, i32 2
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.usbhid_device*, %struct.usbhid_device** %2, align 8
  %7 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %6, i32 0, i32 1
  %8 = call i32 @cancel_work_sync(i32* %7)
  %9 = load %struct.usbhid_device*, %struct.usbhid_device** %2, align 8
  %10 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %9, i32 0, i32 0
  %11 = call i32 @cancel_work_sync(i32* %10)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
