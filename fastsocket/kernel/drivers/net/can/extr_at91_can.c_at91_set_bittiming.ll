; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.at91_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i32, i32, i32, i32 }

@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"writing AT91_BR: 0x%08x\0A\00", align 1
@AT91_BR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @at91_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca %struct.can_bittiming*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.at91_priv* %7, %struct.at91_priv** %3, align 8
  %8 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %9 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store %struct.can_bittiming* %10, %struct.can_bittiming** %4, align 8
  %11 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %12 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %16 = and i32 %14, %15
  %17 = shl i32 %16, 24
  %18 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %19 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = shl i32 %21, 16
  %23 = or i32 %17, %22
  %24 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %25 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 %27, 12
  %29 = or i32 %23, %28
  %30 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %31 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %33, 8
  %35 = or i32 %29, %34
  %36 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %37 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = shl i32 %39, 4
  %41 = or i32 %35, %40
  %42 = load %struct.can_bittiming*, %struct.can_bittiming** %4, align 8
  %43 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = shl i32 %45, 0
  %47 = or i32 %41, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_info(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %55 = load i32, i32* @AT91_BR, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @at91_write(%struct.at91_priv* %54, i32 %55, i32 %56)
  ret i32 0
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
