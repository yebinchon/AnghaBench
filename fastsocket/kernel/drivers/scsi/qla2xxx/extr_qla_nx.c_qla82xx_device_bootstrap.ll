; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_device_bootstrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_device_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA82XX_PEG_ALIVE_COUNTER = common dso_local global i32 0, align 4
@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_FAILED = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"HW State: INITIALIZING.\0A\00", align 1
@QLA8XXX_DEV_INITIALIZING = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HW State: FAILED.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"HW State: READY.\0A\00", align 1
@QLA8XXX_DEV_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @qla82xx_device_bootstrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_device_bootstrap(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %12 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  store %struct.qla_hw_data* %15, %struct.qla_hw_data** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %17 = call i32 @qla82xx_need_reset(%struct.qla_hw_data* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %19 = load i32, i32* @QLA82XX_PEG_ALIVE_COUNTER, align 4
  %20 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %18, i32 %19)
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %43, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = call i32 @msleep_interruptible(i32 200)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %30 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %31 = load i32, i32* @QLA8XXX_DEV_FAILED, align 4
  %32 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %101

34:                                               ; preds = %24
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %36 = load i32, i32* @QLA82XX_PEG_ALIVE_COUNTER, align 4
  %37 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %54 = call i32 @qla82xx_rom_lock_recovery(%struct.qla_hw_data* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %63

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %61 = call i32 @qla82xx_rom_lock_recovery(%struct.qla_hw_data* %60)
  br label %63

62:                                               ; preds = %56
  br label %92

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @ql_log_info, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @ql_log(i32 %64, %struct.TYPE_5__* %65, i32 158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %68 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %69 = load i32, i32* @QLA8XXX_DEV_INITIALIZING, align 4
  %70 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %67, i32 %68, i32 %69)
  %71 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %72 = call i32 @qla82xx_idc_unlock(%struct.qla_hw_data* %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = call i32 @qla82xx_start_firmware(%struct.TYPE_5__* %73)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %76 = call i32 @qla82xx_idc_lock(%struct.qla_hw_data* %75)
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @QLA_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %63
  %81 = load i32, i32* @ql_log_fatal, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = call i32 @ql_log(i32 %81, %struct.TYPE_5__* %82, i32 173, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %85 = call i32 @qla82xx_clear_drv_active(%struct.qla_hw_data* %84)
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %87 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %88 = load i32, i32* @QLA8XXX_DEV_FAILED, align 4
  %89 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %101

91:                                               ; preds = %63
  br label %92

92:                                               ; preds = %91, %62
  %93 = load i32, i32* @ql_log_info, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = call i32 @ql_log(i32 %93, %struct.TYPE_5__* %94, i32 174, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %97 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %98 = load i32, i32* @QLA8XXX_DEV_READY, align 4
  %99 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %96, i32 %97, i32 %98)
  %100 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %92, %80, %28
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @qla82xx_need_reset(%struct.qla_hw_data*) #1

declare dso_local i64 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @qla82xx_rom_lock_recovery(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_5__*, i32, i8*) #1

declare dso_local i32 @qla82xx_idc_unlock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_start_firmware(%struct.TYPE_5__*) #1

declare dso_local i32 @qla82xx_idc_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_clear_drv_active(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
