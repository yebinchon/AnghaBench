; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_main.c_lmc_driver_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_main.c_lmc_driver_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"lmc_driver_timeout in\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: Xmitter busy|\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@LMC_EVENT_XMTPRCTMO = common dso_local global i32 0, align 4
@csr_status = common dso_local global i32 0, align 4
@LMC_EVENT_RESET1 = common dso_local global i32 0, align 4
@LMC_EVENT_RESET2 = common dso_local global i32 0, align 4
@csr_command = common dso_local global i32 0, align 4
@csr_txpoll = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"lmc_driver_timout out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lmc_driver_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_driver_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.TYPE_12__* @dev_to_sc(%struct.net_device* %6)
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @lmc_trace(%struct.net_device* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load i64, i64* @TX_TIMEOUT, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %85

31:                                               ; preds = %1
  %32 = load i32, i32* @LMC_EVENT_XMTPRCTMO, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = load i32, i32* @csr_status, align 4
  %35 = call i32 @LMC_CSR_READ(%struct.TYPE_12__* %33, i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @LMC_EVENT_LOG(i32 %32, i32 %35, i32 %39)
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = call i32 @lmc_running_reset(%struct.net_device* %41)
  %43 = load i32, i32* @LMC_EVENT_RESET1, align 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = load i32, i32* @csr_status, align 4
  %46 = call i32 @LMC_CSR_READ(%struct.TYPE_12__* %44, i32 %45)
  %47 = call i32 @LMC_EVENT_LOG(i32 %43, i32 %46, i32 0)
  %48 = load i32, i32* @LMC_EVENT_RESET2, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = call i32 @lmc_mii_readreg(%struct.TYPE_12__* %49, i32 0, i32 16)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = call i32 @lmc_mii_readreg(%struct.TYPE_12__* %51, i32 0, i32 17)
  %53 = call i32 @LMC_EVENT_LOG(i32 %48, i32 %50, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = load i32, i32* @csr_command, align 4
  %56 = call i32 @LMC_CSR_READ(%struct.TYPE_12__* %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = load i32, i32* @csr_command, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 2
  %61 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %57, i32 %58, i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = load i32, i32* @csr_command, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, 8194
  %66 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %62, i32 %63, i32 %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = load i32, i32* @csr_txpoll, align 4
  %69 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %67, i32 %68, i32 0)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* @jiffies, align 8
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %31, %30
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = call i32 @lmc_trace(%struct.net_device* %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_12__* @dev_to_sc(%struct.net_device*) #1

declare dso_local i32 @lmc_trace(%struct.net_device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @LMC_EVENT_LOG(i32, i32, i32) #1

declare dso_local i32 @LMC_CSR_READ(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lmc_running_reset(%struct.net_device*) #1

declare dso_local i32 @lmc_mii_readreg(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
