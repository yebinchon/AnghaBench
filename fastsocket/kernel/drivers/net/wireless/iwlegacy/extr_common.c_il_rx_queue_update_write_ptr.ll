; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_rx_queue_update_write_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_rx_queue_update_write_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.il_rx_queue = type { i64, i32, i32, i32 }

@S_POWER_PMI = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1 = common dso_local global i32 0, align 4
@CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Rx queue requesting wakeup, GP1 = 0x%x\0A\00", align 1
@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_rx_queue_update_write_ptr(%struct.il_priv* %0, %struct.il_rx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_queue* %1, %struct.il_rx_queue** %4, align 8
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %12, i32 0, i32 3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %71

21:                                               ; preds = %2
  %22 = load i32, i32* @S_POWER_PMI, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %29 = load i32, i32* @CSR_UCODE_DRV_GP1, align 4
  %30 = call i32 @_il_rd(%struct.il_priv* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @D_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %39 = load i32, i32* @CSR_GP_CNTRL, align 4
  %40 = load i32, i32* @CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ, align 4
  %41 = call i32 @il_set_bit(%struct.il_priv* %38, i32 %39, i32 %40)
  br label %71

42:                                               ; preds = %27
  %43 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %44 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -8
  %47 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %48 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %52 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @il_wr(%struct.il_priv* %49, i32 %50, i32 %53)
  br label %68

55:                                               ; preds = %21
  %56 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %57 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -8
  %60 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %61 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %65 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @il_wr(%struct.il_priv* %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %55, %42
  %69 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %70 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %35, %20
  %72 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %73 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %72, i32 0, i32 3
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @_il_rd(%struct.il_priv*, i32) #1

declare dso_local i32 @D_INFO(i8*, i32) #1

declare dso_local i32 @il_set_bit(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @il_wr(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
