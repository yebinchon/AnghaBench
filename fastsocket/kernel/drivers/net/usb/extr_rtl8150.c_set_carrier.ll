; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_set_carrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_set_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@CSCR = common dso_local global i32 0, align 4
@CSCR_LINK_STATUS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_carrier(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call i32* @netdev_priv(%struct.net_device* %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @CSCR, align 4
  %9 = call i32 @get_registers(i32* %7, i32 %8, i32 2, i16* %4)
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i32
  %12 = load i16, i16* @CSCR_LINK_STATUS, align 2
  %13 = sext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_carrier_on(%struct.net_device* %17)
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @get_registers(i32*, i32, i32, i16*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
