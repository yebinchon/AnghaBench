; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_outb_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c505.c_outb_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.TYPE_2__ = type { i8 }

@PORT_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.net_device*)* @outb_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outb_control(i8 zeroext %0, %struct.net_device* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.net_device*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load i8, i8* %3, align 1
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PORT_CONTROL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb(i8 zeroext %5, i64 %10)
  %12 = load i8, i8* %3, align 1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i64 @netdev_priv(%struct.net_device* %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i8 %12, i8* %16, align 1
  ret void
}

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
