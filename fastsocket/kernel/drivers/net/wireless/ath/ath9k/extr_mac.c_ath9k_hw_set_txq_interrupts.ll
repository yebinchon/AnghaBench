; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_txq_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_txq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32, i32, i32 }
%struct.ath9k_tx_queue_info = type { i32 }

@INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"tx ok 0x%x err 0x%x desc 0x%x eol 0x%x urn 0x%x\0A\00", align 1
@AR_IMR_S0 = common dso_local global i32 0, align 4
@AR_IMR_S0_QCU_TXOK = common dso_local global i32 0, align 4
@AR_IMR_S0_QCU_TXDESC = common dso_local global i32 0, align 4
@AR_IMR_S1 = common dso_local global i32 0, align 4
@AR_IMR_S1_QCU_TXERR = common dso_local global i32 0, align 4
@AR_IMR_S1_QCU_TXEOL = common dso_local global i32 0, align 4
@AR_IMR_S2_QCU_TXURN = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, %struct.ath9k_tx_queue_info*)* @ath9k_hw_set_txq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_set_txq_interrupts(%struct.ath_hw* %0, %struct.ath9k_tx_queue_info* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_tx_queue_info*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_tx_queue_info* %1, %struct.ath9k_tx_queue_info** %4, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %6 = call i32 @ath9k_hw_common(%struct.ath_hw* %5)
  %7 = load i32, i32* @INTERRUPT, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ath_dbg(i32 %6, i32 %7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %27 = load i32, i32* @AR_IMR_S0, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AR_IMR_S0_QCU_TXOK, align 4
  %32 = call i32 @SM(i32 %30, i32 %31)
  %33 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_IMR_S0_QCU_TXDESC, align 4
  %37 = call i32 @SM(i32 %35, i32 %36)
  %38 = or i32 %32, %37
  %39 = call i32 @REG_WRITE(%struct.ath_hw* %26, i32 %27, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = load i32, i32* @AR_IMR_S1, align 4
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AR_IMR_S1_QCU_TXERR, align 4
  %46 = call i32 @SM(i32 %44, i32 %45)
  %47 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AR_IMR_S1_QCU_TXEOL, align 4
  %51 = call i32 @SM(i32 %49, i32 %50)
  %52 = or i32 %46, %51
  %53 = call i32 @REG_WRITE(%struct.ath_hw* %40, i32 %41, i32 %52)
  %54 = load i32, i32* @AR_IMR_S2_QCU_TXURN, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AR_IMR_S2_QCU_TXURN, align 4
  %64 = and i32 %62, %63
  %65 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %66 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %70 = load i32, i32* @AR_IMR_S2, align 4
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @REG_WRITE(%struct.ath_hw* %69, i32 %70, i32 %73)
  %75 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %76 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %75)
  ret void
}

declare dso_local i32 @ath_dbg(i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
