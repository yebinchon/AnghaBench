; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_need_qsnt_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_need_qsnt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.qla_hw_data* }
%struct.TYPE_8__ = type { i64 }
%struct.qla_hw_data = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@QLA82XX_CRB_DRV_STATE = common dso_local global i32 0, align 4
@QLA82XX_CRB_DRV_ACTIVE = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s : QUIESCENT TIMEOUT DRV_ACTIVE:%d DRV_STATE:%d.\0A\00", align 1
@QLA2XXX_DRIVER_NAME = common dso_local global i32 0, align 4
@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"HW State: DEV_READY.\0A\00", align 1
@QLA8XXX_DEV_NEED_QUIESCENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"HW State: DEV_QUIESCENT.\0A\00", align 1
@QLA8XXX_DEV_QUIESCENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @qla82xx_need_qsnt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla82xx_need_qsnt_handler(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = call i32 @qla2x00_quiesce_io(%struct.TYPE_9__* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %21 = call i32 @qla82xx_set_qsnt_ready(%struct.qla_hw_data* %20)
  %22 = load i32, i32* @jiffies, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 30, %23
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %28 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %29 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %31 = load i32, i32* @QLA82XX_CRB_DRV_ACTIVE, align 4
  %32 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %66, %19
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load i32, i32* @jiffies, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @time_after_eq(i32 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i32, i32* @ql_log_info, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = load i32, i32* @QLA2XXX_DRIVER_NAME, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %45, %struct.TYPE_9__* %46, i32 45091, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %52 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %53 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %54 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @ql_log_info, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %57 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %55, %struct.TYPE_9__* %56, i32 45093, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %59 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = call i32 @qla2x00_perform_loop_resync(%struct.TYPE_9__* %60)
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %63 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = call i32 @qla82xx_clear_qsnt_ready(%struct.TYPE_9__* %64)
  br label %95

66:                                               ; preds = %39
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %68 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %67)
  %69 = call i32 @msleep(i32 1000)
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %70)
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %73 = load i32, i32* @QLA82XX_CRB_DRV_STATE, align 4
  %74 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %76 = load i32, i32* @QLA82XX_CRB_DRV_ACTIVE, align 4
  %77 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %35

80:                                               ; preds = %35
  %81 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %82 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %83 = call i32 @qla82xx_rd_32(%struct.qla_hw_data* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @QLA8XXX_DEV_NEED_QUIESCENT, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load i32, i32* @ql_log_info, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %88, %struct.TYPE_9__* %89, i32 45094, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %92 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %93 = load i32, i32* @QLA8XXX_DEV_QUIESCENT, align 4
  %94 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %44, %87, %80
  ret void
}

declare dso_local i32 @qla2x00_quiesce_io(%struct.TYPE_9__*) #1

declare dso_local i32 @qla82xx_set_qsnt_ready(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_perform_loop_resync(%struct.TYPE_9__*) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_clear_qsnt_ready(%struct.TYPE_9__*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
