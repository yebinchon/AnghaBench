; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_setup_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_setup_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }

@TG3_CPMU_EEE_LNKIDL_PCIE_NL0 = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_LNKIDL_UART_IDL = common dso_local global i32 0, align 4
@CHIPREV_ID_57765_A0 = common dso_local global i64 0, align 8
@TG3_CPMU_EEE_LNKIDL_APE_TX_MT = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_LNKIDL_CTRL = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_CTRL = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_CTRL_EXIT_20_1_US = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_ERLY_L1_XIT_DET = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_LPI_IN_TX = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_LPI_IN_RX = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_EEE_ENABLE = common dso_local global i32 0, align 4
@ASIC_REV_5717 = common dso_local global i64 0, align 8
@TG3_CPMU_EEEMD_SND_IDX_DET_EN = common dso_local global i32 0, align 4
@ENABLE_APE = common dso_local global i32 0, align 4
@TG3_CPMU_EEEMD_APE_TX_DET_EN = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_MODE = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_DBTMR1 = common dso_local global i32 0, align 4
@TG3_CPMU_DBTMR1_PCIEXIT_2047US = common dso_local global i32 0, align 4
@TG3_CPMU_EEE_DBTMR2 = common dso_local global i32 0, align 4
@TG3_CPMU_DBTMR2_APE_TX_2047US = common dso_local global i32 0, align 4
@TG3_CPMU_DBTMR2_TXIDXEQ_2047US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_setup_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_setup_eee(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %4 = load i32, i32* @TG3_CPMU_EEE_LNKIDL_PCIE_NL0, align 4
  %5 = load i32, i32* @TG3_CPMU_EEE_LNKIDL_UART_IDL, align 4
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.tg3*, %struct.tg3** %2, align 8
  %8 = call i64 @tg3_chip_rev_id(%struct.tg3* %7)
  %9 = load i64, i64* @CHIPREV_ID_57765_A0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @TG3_CPMU_EEE_LNKIDL_APE_TX_MT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @TG3_CPMU_EEE_LNKIDL_CTRL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @tw32_f(i32 %16, i32 %17)
  %19 = load i32, i32* @TG3_CPMU_EEE_CTRL, align 4
  %20 = load i32, i32* @TG3_CPMU_EEE_CTRL_EXIT_20_1_US, align 4
  %21 = call i32 @tw32_f(i32 %19, i32 %20)
  %22 = load i32, i32* @TG3_CPMU_EEEMD_ERLY_L1_XIT_DET, align 4
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @TG3_CPMU_EEEMD_LPI_IN_TX, align 4
  br label %31

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = or i32 %22, %32
  %34 = load i32, i32* @TG3_CPMU_EEEMD_LPI_IN_RX, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TG3_CPMU_EEEMD_EEE_ENABLE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %3, align 4
  %38 = load %struct.tg3*, %struct.tg3** %2, align 8
  %39 = call i64 @tg3_asic_rev(%struct.tg3* %38)
  %40 = load i64, i64* @ASIC_REV_5717, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @TG3_CPMU_EEEMD_SND_IDX_DET_EN, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %31
  %47 = load %struct.tg3*, %struct.tg3** %2, align 8
  %48 = load i32, i32* @ENABLE_APE, align 4
  %49 = call i64 @tg3_flag(%struct.tg3* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @TG3_CPMU_EEEMD_APE_TX_DET_EN, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @TG3_CPMU_EEE_MODE, align 4
  %57 = load %struct.tg3*, %struct.tg3** %2, align 8
  %58 = getelementptr inbounds %struct.tg3, %struct.tg3* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %3, align 4
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = call i32 @tw32_f(i32 %56, i32 %66)
  %68 = load i32, i32* @TG3_CPMU_EEE_DBTMR1, align 4
  %69 = load i32, i32* @TG3_CPMU_DBTMR1_PCIEXIT_2047US, align 4
  %70 = load %struct.tg3*, %struct.tg3** %2, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 65535
  %75 = or i32 %69, %74
  %76 = call i32 @tw32_f(i32 %68, i32 %75)
  %77 = load i32, i32* @TG3_CPMU_EEE_DBTMR2, align 4
  %78 = load i32, i32* @TG3_CPMU_DBTMR2_APE_TX_2047US, align 4
  %79 = load i32, i32* @TG3_CPMU_DBTMR2_TXIDXEQ_2047US, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @tw32_f(i32 %77, i32 %80)
  ret void
}

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
