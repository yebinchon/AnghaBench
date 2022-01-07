; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_initiating_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_initiating_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@QLA83XX_IDC_RESET_DISABLED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"NIC Core reset has been disabled. idc-control=0x%x\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA83XX_IDC_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_READY = common dso_local global i32 0, align 4
@QLA8XXX_DEV_NEED_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"HW State: NEED RESET.\0A\00", align 1
@IDC_AUDIT_TIMESTAMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"HW State: %s.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @qla83xx_initiating_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla83xx_initiating_reset(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = call i32 @__qla83xx_get_idc_control(%struct.TYPE_13__* %11, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @QLA83XX_IDC_RESET_DISABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @ql_log_info, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %18, %struct.TYPE_13__* %19, i32 45184, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %26 = call i32 @qla83xx_rd_reg(%struct.TYPE_13__* %24, i32 %25, i32* %6)
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %39 = load i32, i32* @QLA8XXX_DEV_NEED_RESET, align 4
  %40 = call i32 @qla83xx_wr_reg(%struct.TYPE_13__* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @ql_log_info, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %41, %struct.TYPE_13__* %42, i32 45142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load i32, i32* @IDC_AUDIT_TIMESTAMP, align 4
  %46 = call i32 @qla83xx_idc_audit(%struct.TYPE_13__* %44, i32 %45)
  br label %68

47:                                               ; preds = %32, %23
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @qla83xx_dev_state_to_string(i32 %48)
  store i8* %49, i8** %7, align 8
  %50 = load i32, i32* @ql_log_info, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, ...) @ql_log(i32 %50, %struct.TYPE_13__* %51, i32 45143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %58, %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = call i32 @qla83xx_idc_unlock(%struct.TYPE_13__* %59, i32 0)
  %61 = call i32 @msleep(i32 200)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = call i32 @qla83xx_idc_lock(%struct.TYPE_13__* %62, i32 0)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = load i32, i32* @QLA83XX_IDC_DEV_STATE, align 4
  %66 = call i32 @qla83xx_rd_reg(%struct.TYPE_13__* %64, i32 %65, i32* %6)
  br label %54

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = call i32 @__qla83xx_set_drv_ack(%struct.TYPE_13__* %69)
  %71 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %68, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @__qla83xx_get_idc_control(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_13__*, i32, i8*, ...) #1

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @qla83xx_wr_reg(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @qla83xx_idc_audit(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @qla83xx_dev_state_to_string(i32) #1

declare dso_local i32 @qla83xx_idc_unlock(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qla83xx_idc_lock(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @__qla83xx_set_drv_ack(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
