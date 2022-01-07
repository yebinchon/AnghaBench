; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dm9000.c_dm9000_phy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_dm9000.c_dm9000_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"phy_write[%02x] = %04x\0A\00", align 1
@DM9000_EPAR = common dso_local global i32 0, align 4
@DM9000_PHY = common dso_local global i32 0, align 4
@DM9000_EPDRL = common dso_local global i32 0, align 4
@DM9000_EPDRH = common dso_local global i32 0, align 4
@DM9000_EPCR = common dso_local global i32 0, align 4
@EPCR_EPOS = common dso_local global i32 0, align 4
@EPCR_ERPRW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @dm9000_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_phy_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.TYPE_6__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @dm9000_dbg(%struct.TYPE_6__* %14, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @readb(i32 %27)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = load i32, i32* @DM9000_EPAR, align 4
  %31 = load i32, i32* @DM9000_PHY, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @iow(%struct.TYPE_6__* %29, i32 %30, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = load i32, i32* @DM9000_EPDRL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @iow(%struct.TYPE_6__* %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = load i32, i32* @DM9000_EPDRH, align 4
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @iow(%struct.TYPE_6__* %39, i32 %40, i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = load i32, i32* @DM9000_EPCR, align 4
  %46 = load i32, i32* @EPCR_EPOS, align 4
  %47 = load i32, i32* @EPCR_ERPRW, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @iow(%struct.TYPE_6__* %44, i32 %45, i32 %48)
  %50 = load i64, i64* %11, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writeb(i64 %50, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = call i32 @dm9000_msleep(%struct.TYPE_6__* %59, i32 1)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @readb(i32 %67)
  store i64 %68, i64* %11, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %70 = load i32, i32* @DM9000_EPCR, align 4
  %71 = call i32 @iow(%struct.TYPE_6__* %69, i32 %70, i32 0)
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @writeb(i64 %72, i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  ret void
}

declare dso_local %struct.TYPE_6__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dm9000_dbg(%struct.TYPE_6__*, i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @readb(i32) #1

declare dso_local i32 @iow(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @writeb(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm9000_msleep(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
