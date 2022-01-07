; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_state_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla83xx_idc_state_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i64, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Initialization TIMEOUT!\0A\00", align 1
@QLA83XX_IDC_DEV_STATE = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HW State: FAILED.\0A\00", align 1
@IDC_AUDIT_COMPLETION = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Reset_owner reset by 0x%x.\0A\00", align 1
@ql2xdontresethba = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknow Device State: %x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla83xx_idc_state_handler(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %3, align 8
  %10 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HZ, align 8
  %16 = mul i64 %14, %15
  %17 = add i64 %11, %16
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %1, %173
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @time_after_eq(i64 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* @ql_log_warn, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %24, %struct.TYPE_16__* %25, i32 45166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %29 = call i32 @qla83xx_wr_reg(%struct.TYPE_16__* %27, i32 %28, i32 133)
  %30 = load i32, i32* @ql_log_info, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %30, %struct.TYPE_16__* %31, i32 45167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %36 = call i32 @qla83xx_rd_reg(%struct.TYPE_16__* %34, i32 %35, i32* %6)
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %161 [
    i32 128, label %38
    i32 134, label %58
    i32 132, label %74
    i32 130, label %80
    i32 131, label %106
    i32 129, label %112
    i32 133, label %132
    i32 135, label %155
  ]

38:                                               ; preds = %33
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = load i32, i32* @IDC_AUDIT_COMPLETION, align 4
  %47 = call i32 @qla83xx_idc_audit(%struct.TYPE_16__* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* @ql_dbg_p3p, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ql_dbg(i32 %52, %struct.TYPE_16__* %53, i32 45168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %174

58:                                               ; preds = %33
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = call i32 @qla83xx_device_bootstrap(%struct.TYPE_16__* %65)
  store i32 %66, i32* %4, align 4
  br label %73

67:                                               ; preds = %58
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %68, i32 0)
  %70 = call i32 @msleep(i32 1000)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %71, i32 0)
  br label %73

73:                                               ; preds = %67, %64
  br label %173

74:                                               ; preds = %33
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %76 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %75, i32 0)
  %77 = call i32 @msleep(i32 1000)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %79 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %78, i32 0)
  br label %173

80:                                               ; preds = %33
  %81 = load i32, i32* @ql2xdontresethba, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %85 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %91 = call i32 @qla83xx_need_reset_handler(%struct.TYPE_16__* %90)
  br label %98

92:                                               ; preds = %83, %80
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %94 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %93, i32 0)
  %95 = call i32 @msleep(i32 1000)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %96, i32 0)
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i64, i64* @jiffies, align 8
  %100 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %101 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HZ, align 8
  %104 = mul i64 %102, %103
  %105 = add i64 %99, %104
  store i64 %105, i64* %5, align 8
  br label %173

106:                                              ; preds = %33
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %107, i32 0)
  %109 = call i32 @msleep(i32 1000)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %110, i32 0)
  br label %173

112:                                              ; preds = %33
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %114 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %174

119:                                              ; preds = %112
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %120, i32 0)
  %122 = call i32 @msleep(i32 1000)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %123, i32 0)
  %125 = load i64, i64* @jiffies, align 8
  %126 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %127 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @HZ, align 8
  %130 = mul i64 %128, %129
  %131 = add i64 %125, %130
  store i64 %131, i64* %5, align 8
  br label %173

132:                                              ; preds = %33
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = load i32, i32* @IDC_AUDIT_COMPLETION, align 4
  %141 = call i32 @qla83xx_idc_audit(%struct.TYPE_16__* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %132
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %147 = call i32 @__qla83xx_clear_drv_presence(%struct.TYPE_16__* %146)
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %149 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %148, i32 0)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %151 = call i32 @qla8xxx_dev_failed_handler(%struct.TYPE_16__* %150)
  %152 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %152, i32* %4, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %153, i32 0)
  br label %174

155:                                              ; preds = %33
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %157 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %156, i32 0)
  %158 = call i32 @msleep(i32 1000)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %160 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %159, i32 0)
  br label %173

161:                                              ; preds = %33
  %162 = load i32, i32* @ql_log_warn, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %162, %struct.TYPE_16__* %163, i32 45169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = call i32 @qla83xx_idc_unlock(%struct.TYPE_16__* %166, i32 0)
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %169 = call i32 @qla8xxx_dev_failed_handler(%struct.TYPE_16__* %168)
  %170 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %170, i32* %4, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %172 = call i32 @qla83xx_idc_lock(%struct.TYPE_16__* %171, i32 0)
  br label %174

173:                                              ; preds = %155, %119, %106, %98, %74, %73
  br label %18

174:                                              ; preds = %161, %142, %118, %48
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @qla83xx_idc_audit(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @qla83xx_device_bootstrap(%struct.TYPE_16__*) #1

declare dso_local i32 @qla83xx_idc_unlock(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla83xx_idc_lock(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @qla83xx_need_reset_handler(%struct.TYPE_16__*) #1

declare dso_local i32 @__qla83xx_clear_drv_presence(%struct.TYPE_16__*) #1

declare dso_local i32 @qla8xxx_dev_failed_handler(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
