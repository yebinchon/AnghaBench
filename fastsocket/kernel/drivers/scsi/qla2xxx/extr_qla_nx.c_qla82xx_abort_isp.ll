; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_abort_isp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_abort_isp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__, %struct.qla_hw_data* }
%struct.TYPE_14__ = type { i32 }
%struct.qla_hw_data = type { i64, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { {}* }
%struct.TYPE_12__ = type { i32, i64 }

@DFLG_DEV_FAILED = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Device in failed state, exiting.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ISP_ABORT_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"ISP error recover failed - board disabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ISP abort - retry remaining %d.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@MAX_RETRIES_OF_ISP_ABORT = common dso_local global i64 0, align 8
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"ISP error recovery - retrying (%d) more times.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_abort_isp(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DFLG_DEV_FAILED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @ql_log_warn, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %16, %struct.TYPE_15__* %17, i32 32804, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %19, i32* %2, align 4
  br label %118

20:                                               ; preds = %1
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %25 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = call i32 @qla82xx_set_reset_owner(%struct.TYPE_15__* %26)
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %29 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = call i32 @qla82xx_device_state_handler(%struct.TYPE_15__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %33 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %32)
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %35 = call i32 @qla82xx_clear_rst_ready(%struct.qla_hw_data* %34)
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %37 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @QLA_SUCCESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %20
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i32 @qla82xx_restart_isp(%struct.TYPE_15__* %48)
  br label %50

50:                                               ; preds = %41, %20
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %50
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %53
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load i32, i32* @ql_log_warn, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %68, %struct.TYPE_15__* %69, i32 32807, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %72 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.TYPE_15__*)**
  %76 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %75, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = call i32 %76(%struct.TYPE_15__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = call i32 @clear_bit(i32 %82, i32* %84)
  %86 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %86, i32* %4, align 4
  br label %99

87:                                               ; preds = %62
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* @ql_log_warn, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i32, %struct.TYPE_15__*, i32, i8*, ...) @ql_log(i32 %92, %struct.TYPE_15__* %93, i32 32822, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %87, %67
  br label %115

100:                                              ; preds = %53
  %101 = load i64, i64* @MAX_RETRIES_OF_ISP_ABORT, align 8
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @ql_dbg_taskm, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @ql_dbg(i32 %104, %struct.TYPE_15__* %105, i32 32809, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  %110 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  %114 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %100, %99
  br label %116

116:                                              ; preds = %115, %50
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %15
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_set_reset_owner(%struct.TYPE_15__*) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_device_state_handler(%struct.TYPE_15__*) #1

declare dso_local i32 @qla82xx_clear_rst_ready(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_restart_isp(%struct.TYPE_15__*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_15__*, i32, i8*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
