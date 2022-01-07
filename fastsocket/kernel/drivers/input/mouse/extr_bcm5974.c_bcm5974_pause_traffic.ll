; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_bcm5974_pause_traffic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_bcm5974.c_bcm5974_pause_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm5974 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm5974*)* @bcm5974_pause_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm5974_pause_traffic(%struct.bcm5974* %0) #0 {
  %2 = alloca %struct.bcm5974*, align 8
  store %struct.bcm5974* %0, %struct.bcm5974** %2, align 8
  %3 = load %struct.bcm5974*, %struct.bcm5974** %2, align 8
  %4 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @usb_kill_urb(i32 %5)
  %7 = load %struct.bcm5974*, %struct.bcm5974** %2, align 8
  %8 = getelementptr inbounds %struct.bcm5974, %struct.bcm5974* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @usb_kill_urb(i32 %9)
  %11 = load %struct.bcm5974*, %struct.bcm5974** %2, align 8
  %12 = call i32 @bcm5974_wellspring_mode(%struct.bcm5974* %11, i32 0)
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @bcm5974_wellspring_mode(%struct.bcm5974*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
