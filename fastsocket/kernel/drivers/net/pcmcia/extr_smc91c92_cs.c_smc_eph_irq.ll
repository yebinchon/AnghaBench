; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_eph_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_eph_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.smc_private = type { i32 }

@EPH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"%s: Ethernet protocol handler interrupt, status %4.4x.\0A\00", align 1
@COUNTER = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TCR_ENABLE = common dso_local global i32 0, align 4
@CTL_AUTO_RELEASE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@CTL_TE_ENABLE = common dso_local global i32 0, align 4
@CTL_CR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_eph_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_eph_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.smc_private* @netdev_priv(%struct.net_device* %7)
  store %struct.smc_private* %8, %struct.smc_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = call i32 @SMC_SELECT_BANK(i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @EPH, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inw(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @COUNTER, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @inw(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 15
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 15
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @TCR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inw(i64 %47)
  %49 = load i32, i32* @TCR_ENABLE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %52 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @TCR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @outw(i32 %54, i64 %58)
  %60 = call i32 @SMC_SELECT_BANK(i32 1)
  %61 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* @CONTROL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outw(i32 %61, i64 %65)
  %67 = load i32, i32* @CTL_AUTO_RELEASE, align 4
  %68 = load i32, i32* @CTL_TE_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CTL_CR_ENABLE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %4, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* @CONTROL, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outw(i32 %71, i64 %75)
  %77 = call i32 @SMC_SELECT_BANK(i32 2)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
