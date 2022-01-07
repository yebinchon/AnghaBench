; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_dvb_usb_device_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_pd_dvb_usb_device_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.pd_dvb_adapter }
%struct.pd_dvb_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pd_dvb_usb_device_cleanup(%struct.poseidon* %0) #0 {
  %2 = alloca %struct.poseidon*, align 8
  %3 = alloca %struct.pd_dvb_adapter*, align 8
  store %struct.poseidon* %0, %struct.poseidon** %2, align 8
  %4 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %5 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %4, i32 0, i32 0
  store %struct.pd_dvb_adapter* %5, %struct.pd_dvb_adapter** %3, align 8
  %6 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %3, align 8
  %7 = call i32 @dvb_urb_cleanup(%struct.pd_dvb_adapter* %6)
  ret void
}

declare dso_local i32 @dvb_urb_cleanup(%struct.pd_dvb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
