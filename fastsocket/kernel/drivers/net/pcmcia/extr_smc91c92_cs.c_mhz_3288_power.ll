; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mhz_3288_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mhz_3288_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.smc_private = type { i64 }

@MEGAHERTZ_ISR = common dso_local global i64 0, align 8
@CISREG_COR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mhz_3288_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mhz_3288_power(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.smc_private* @netdev_priv(%struct.net_device* %9)
  store %struct.smc_private* %10, %struct.smc_private** %4, align 8
  %11 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %12 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MEGAHERTZ_ISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readb(i64 %15)
  %17 = call i32 @udelay(i32 5)
  %18 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %19 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MEGAHERTZ_ISR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readb(i64 %22)
  %24 = call i32 @mdelay(i32 200)
  %25 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %26 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = load i64, i64* @CISREG_COR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readb(i64 %34)
  store i32 %35, i32* %5, align 4
  %36 = call i32 @udelay(i32 5)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %39 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %42 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = load i64, i64* @CISREG_COR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writeb(i32 %37, i64 %47)
  ret i32 0
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
