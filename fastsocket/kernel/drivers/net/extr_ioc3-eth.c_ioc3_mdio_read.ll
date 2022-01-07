; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { %struct.ioc3* }
%struct.ioc3 = type { i32 }

@MICR_BUSY = common dso_local global i32 0, align 4
@MICR_PHYADDR_SHIFT = common dso_local global i32 0, align 4
@MICR_READTRIG = common dso_local global i32 0, align 4
@MIDR_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ioc3_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ioc3_private*, align 8
  %8 = alloca %struct.ioc3*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %9)
  store %struct.ioc3_private* %10, %struct.ioc3_private** %7, align 8
  %11 = load %struct.ioc3_private*, %struct.ioc3_private** %7, align 8
  %12 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %11, i32 0, i32 0
  %13 = load %struct.ioc3*, %struct.ioc3** %12, align 8
  store %struct.ioc3* %13, %struct.ioc3** %8, align 8
  br label %14

14:                                               ; preds = %19, %3
  %15 = call i32 (...) @ioc3_r_micr()
  %16 = load i32, i32* @MICR_BUSY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %14

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MICR_PHYADDR_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MICR_READTRIG, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ioc3_w_micr(i32 %27)
  br label %29

29:                                               ; preds = %34, %20
  %30 = call i32 (...) @ioc3_r_micr()
  %31 = load i32, i32* @MICR_BUSY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %29

35:                                               ; preds = %29
  %36 = call i32 (...) @ioc3_r_midr_r()
  %37 = load i32, i32* @MIDR_DATA_MASK, align 4
  %38 = and i32 %36, %37
  ret i32 %38
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioc3_r_micr(...) #1

declare dso_local i32 @ioc3_w_micr(i32) #1

declare dso_local i32 @ioc3_r_midr_r(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
