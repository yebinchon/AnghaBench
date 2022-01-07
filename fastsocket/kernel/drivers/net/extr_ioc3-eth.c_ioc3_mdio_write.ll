; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ioc3_private = type { %struct.ioc3* }
%struct.ioc3 = type { i32 }

@MICR_BUSY = common dso_local global i32 0, align 4
@MICR_PHYADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @ioc3_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ioc3_private*, align 8
  %10 = alloca %struct.ioc3*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ioc3_private* %12, %struct.ioc3_private** %9, align 8
  %13 = load %struct.ioc3_private*, %struct.ioc3_private** %9, align 8
  %14 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %13, i32 0, i32 0
  %15 = load %struct.ioc3*, %struct.ioc3** %14, align 8
  store %struct.ioc3* %15, %struct.ioc3** %10, align 8
  br label %16

16:                                               ; preds = %21, %4
  %17 = call i32 (...) @ioc3_r_micr()
  %18 = load i32, i32* @MICR_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %16

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ioc3_w_midr_w(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MICR_PHYADDR_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @ioc3_w_micr(i32 %29)
  br label %31

31:                                               ; preds = %36, %22
  %32 = call i32 (...) @ioc3_r_micr()
  %33 = load i32, i32* @MICR_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %31

37:                                               ; preds = %31
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioc3_r_micr(...) #1

declare dso_local i32 @ioc3_w_midr_w(i32) #1

declare dso_local i32 @ioc3_w_micr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
