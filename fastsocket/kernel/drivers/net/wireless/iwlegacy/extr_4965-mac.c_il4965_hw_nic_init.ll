; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_nic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_hw_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, %struct.il_rx_queue }
%struct.il_rx_queue = type { i32, i32 }

@CSR_INT_COALESCING = common dso_local global i32 0, align 4
@IL_HOST_INT_CALIB_TIMEOUT_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to initialize Rx queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il4965_hw_nic_init(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.il_rx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %7 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %8 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %7, i32 0, i32 3
  store %struct.il_rx_queue* %8, %struct.il_rx_queue** %5, align 8
  %9 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %10 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %9, i32 0, i32 2
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %14 = call i32 @il_apm_init(%struct.il_priv* %13)
  %15 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %16 = load i32, i32* @CSR_INT_COALESCING, align 4
  %17 = load i32, i32* @IL_HOST_INT_CALIB_TIMEOUT_DEF, align 4
  %18 = call i32 @il_write8(%struct.il_priv* %15, i32 %16, i32 %17)
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = call i32 @il4965_set_pwr_vmain(%struct.il_priv* %23)
  %25 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %26 = call i32 @il4965_nic_config(%struct.il_priv* %25)
  %27 = load %struct.il_rx_queue*, %struct.il_rx_queue** %5, align 8
  %28 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %1
  %32 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %33 = call i32 @il_rx_queue_alloc(%struct.il_priv* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @IL_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %84

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = load %struct.il_rx_queue*, %struct.il_rx_queue** %5, align 8
  %44 = call i32 @il4965_rx_queue_reset(%struct.il_priv* %42, %struct.il_rx_queue* %43)
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = call i32 @il4965_rx_replenish(%struct.il_priv* %46)
  %48 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %49 = load %struct.il_rx_queue*, %struct.il_rx_queue** %5, align 8
  %50 = call i32 @il4965_rx_init(%struct.il_priv* %48, %struct.il_rx_queue* %49)
  %51 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 2
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.il_rx_queue*, %struct.il_rx_queue** %5, align 8
  %56 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %58 = load %struct.il_rx_queue*, %struct.il_rx_queue** %5, align 8
  %59 = call i32 @il_rx_queue_update_write_ptr(%struct.il_priv* %57, %struct.il_rx_queue* %58)
  %60 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 2
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %65 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %45
  %69 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %70 = call i32 @il4965_txq_ctx_alloc(%struct.il_priv* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %84

75:                                               ; preds = %68
  br label %79

76:                                               ; preds = %45
  %77 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %78 = call i32 @il4965_txq_ctx_reset(%struct.il_priv* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* @S_INIT, align 4
  %81 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 0
  %83 = call i32 @set_bit(i32 %80, i32* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %73, %36
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @il_apm_init(%struct.il_priv*) #1

declare dso_local i32 @il_write8(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @il4965_set_pwr_vmain(%struct.il_priv*) #1

declare dso_local i32 @il4965_nic_config(%struct.il_priv*) #1

declare dso_local i32 @il_rx_queue_alloc(%struct.il_priv*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @il4965_rx_queue_reset(%struct.il_priv*, %struct.il_rx_queue*) #1

declare dso_local i32 @il4965_rx_replenish(%struct.il_priv*) #1

declare dso_local i32 @il4965_rx_init(%struct.il_priv*, %struct.il_rx_queue*) #1

declare dso_local i32 @il_rx_queue_update_write_ptr(%struct.il_priv*, %struct.il_rx_queue*) #1

declare dso_local i32 @il4965_txq_ctx_alloc(%struct.il_priv*) #1

declare dso_local i32 @il4965_txq_ctx_reset(%struct.il_priv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
