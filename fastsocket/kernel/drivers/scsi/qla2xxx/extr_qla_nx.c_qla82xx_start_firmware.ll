; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_start_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32 }

@CRB_DMA_SHIFT = common dso_local global i32 0, align 4
@QLA82XX_DMA_SHIFT_VALUE = common dso_local global i32 0, align 4
@CRB_CMDPEG_STATE = common dso_local global i32 0, align 4
@CRB_RCVPEG_STATE = common dso_local global i32 0, align 4
@QLA82XX_PEG_HALT_STATUS1 = common dso_local global i32 0, align 4
@QLA82XX_PEG_HALT_STATUS2 = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error trying to start fw.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Error during card handshake.\0A\00", align 1
@PCI_EXP_LNKSTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_start_firmware(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = load i32, i32* @CRB_DMA_SHIFT, align 4
  %11 = load i32, i32* @QLA82XX_DMA_SHIFT_VALUE, align 4
  %12 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %9, i32 %10, i32 %11)
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = load i32, i32* @CRB_CMDPEG_STATE, align 4
  %15 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %13, i32 %14, i32 0)
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = load i32, i32* @CRB_RCVPEG_STATE, align 4
  %18 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %16, i32 %17, i32 0)
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %20 = load i32, i32* @QLA82XX_PEG_HALT_STATUS1, align 4
  %21 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %19, i32 %20, i32 0)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %23 = load i32, i32* @QLA82XX_PEG_HALT_STATUS2, align 4
  %24 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %22, i32 %23, i32 0)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call i64 @qla82xx_load_fw(%struct.TYPE_5__* %25)
  %27 = load i64, i64* @QLA_SUCCESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @ql_log_fatal, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = call i32 @ql_log(i32 %30, %struct.TYPE_5__* %31, i32 167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %57

34:                                               ; preds = %1
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %36 = call i64 @qla82xx_check_cmdpeg_state(%struct.qla_hw_data* %35)
  %37 = load i64, i64* @QLA_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @ql_log_fatal, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = call i32 @ql_log(i32 %40, %struct.TYPE_5__* %41, i32 170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %43, i32* %2, align 4
  br label %57

44:                                               ; preds = %34
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCI_EXP_LNKSTA, align 4
  %49 = call i32 @pcie_capability_read_word(i32 %47, i32 %48, i32* %4)
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 4
  %52 = and i32 %51, 63
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %56 = call i32 @qla82xx_check_rcvpeg_state(%struct.qla_hw_data* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %44, %39, %29
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i64 @qla82xx_load_fw(%struct.TYPE_5__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @qla82xx_check_cmdpeg_state(%struct.qla_hw_data*) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i32 @qla82xx_check_rcvpeg_state(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
