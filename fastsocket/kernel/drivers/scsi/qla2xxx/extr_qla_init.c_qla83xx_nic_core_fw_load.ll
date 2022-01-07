; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_nic_core_fw_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_nic_core_fw_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA83XX_IDC_INITIALIZATION_TIMEOUT = common dso_local global i32 0, align 4
@QLA83XX_IDC_RESET_ACK_TIMEOUT = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error while setting DRV-Presence.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA83XX_IDC_MAJOR_VERSION = common dso_local global i32 0, align 4
@QLA83XX_SUPP_IDC_MAJOR_VERSION = common dso_local global i64 0, align 8
@QLA83XX_IDC_LOCK_RECOVERY = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Failing load, idc_major_ver=%d, expected_major_ver=%d.\0A\00", align 1
@QLA83XX_IDC_MINOR_VERSION = common dso_local global i32 0, align 4
@QLA83XX_SUPP_IDC_MINOR_VERSION = common dso_local global i32 0, align 4
@QLA83XX_IDC_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @qla83xx_nic_core_fw_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla83xx_nic_core_fw_load(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i32], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %4, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %12, i32 0)
  %14 = load i32, i32* @QLA83XX_IDC_INITIALIZATION_TIMEOUT, align 4
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @QLA83XX_IDC_RESET_ACK_TIMEOUT, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %21 = call i32 @__qla83xx_set_drv_presence(%struct.TYPE_16__* %20)
  %22 = load i32, i32* @QLA_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @ql_dbg_p3p, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = call i32 @ql_dbg(i32 %25, %struct.TYPE_16__* %26, i32 45175, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %101

29:                                               ; preds = %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = call i32 @qla83xx_reset_ownership(%struct.TYPE_16__* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = load i32, i32* @QLA83XX_IDC_MAJOR_VERSION, align 4
  %34 = call i32 @qla83xx_rd_reg(%struct.TYPE_16__* %32, i32 %33, i64* %5)
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i64, i64* @QLA83XX_SUPP_IDC_MAJOR_VERSION, align 8
  store i64 %41, i64* %5, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = load i32, i32* @QLA83XX_IDC_MAJOR_VERSION, align 4
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @qla83xx_wr_reg(%struct.TYPE_16__* %42, i32 %43, i64 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = load i32, i32* @QLA83XX_IDC_LOCK_RECOVERY, align 4
  %48 = call i32 @qla83xx_wr_reg(%struct.TYPE_16__* %46, i32 %47, i64 0)
  br label %63

49:                                               ; preds = %29
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @QLA83XX_SUPP_IDC_MAJOR_VERSION, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32, i32* @ql_log_warn, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @QLA83XX_SUPP_IDC_MAJOR_VERSION, align 8
  %58 = call i32 @ql_log(i32 %54, %struct.TYPE_16__* %55, i32 45181, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = call i32 @__qla83xx_clear_drv_presence(%struct.TYPE_16__* %59)
  %61 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = load i32, i32* @QLA83XX_IDC_MINOR_VERSION, align 4
  %66 = call i32 @qla83xx_rd_reg(%struct.TYPE_16__* %64, i32 %65, i64* %6)
  %67 = load i32, i32* @QLA83XX_SUPP_IDC_MINOR_VERSION, align 4
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 2
  %72 = shl i32 %67, %71
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %6, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %77 = load i32, i32* @QLA83XX_IDC_MINOR_VERSION, align 4
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @qla83xx_wr_reg(%struct.TYPE_16__* %76, i32 %77, i64 %78)
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %81 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %63
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %87 = call i32 @memset(i32* %86, i32 0, i32 16)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %90 = call i32 @qla81xx_get_port_config(%struct.TYPE_16__* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %85
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %94 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %95 = load i64, i64* @QLA8XXX_DEV_READY, align 8
  %96 = call i32 @qla83xx_wr_reg(%struct.TYPE_16__* %93, i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %85
  br label %98

98:                                               ; preds = %97, %63
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %100 = call i32 @qla83xx_idc_state_handler(%struct.TYPE_16__* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %53, %24
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %103 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %102, i32 0)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @qla83xx_idc_lock(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @__qla83xx_set_drv_presence(%struct.TYPE_16__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i32 @qla83xx_reset_ownership(%struct.TYPE_16__*) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_16__*, i32, i64*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_16__*, i32, i8*, i64, i64) #1

declare dso_local i32 @__qla83xx_clear_drv_presence(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qla81xx_get_port_config(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @qla83xx_idc_state_handler(%struct.TYPE_16__*) #1

declare dso_local i32 @qla83xx_idc_unlock(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
