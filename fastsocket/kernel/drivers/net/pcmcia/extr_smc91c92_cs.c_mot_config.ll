; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mot_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_mot_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.smc_private = type { i64 }

@MOT_UART = common dso_local global i64 0, align 8
@CISREG_IOBASE_0 = common dso_local global i64 0, align 8
@CISREG_IOBASE_1 = common dso_local global i64 0, align 8
@MOT_NORMAL = common dso_local global i32 0, align 4
@CISREG_COR = common dso_local global i64 0, align 8
@MOT_LAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @mot_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mot_config(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.smc_private* @netdev_priv(%struct.net_device* %10)
  store %struct.smc_private* %11, %struct.smc_private** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %22 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MOT_UART, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i64, i64* @CISREG_IOBASE_0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writeb(i32 %20, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %33 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MOT_UART, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64, i64* @CISREG_IOBASE_1, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writeb(i32 %31, i64 %38)
  %40 = load i32, i32* @MOT_NORMAL, align 4
  %41 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %42 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MOT_UART, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @CISREG_COR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writeb(i32 %40, i64 %47)
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %52 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MOT_LAN, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* @CISREG_IOBASE_0, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writeb(i32 %50, i64 %57)
  %59 = load i32, i32* %5, align 4
  %60 = lshr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %63 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MOT_LAN, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* @CISREG_IOBASE_1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writeb(i32 %61, i64 %68)
  %70 = load i32, i32* @MOT_NORMAL, align 4
  %71 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %72 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @MOT_LAN, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @CISREG_COR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writeb(i32 %70, i64 %77)
  %79 = call i32 @mdelay(i32 100)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
