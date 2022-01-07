; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_check_temp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_check_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@CRB_TEMP_STATE = common dso_local global i32 0, align 4
@QLA82XX_TEMP_PANIC = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Device temperature %d degrees C exceeds  maximum allowed. Hardware has been shut down.\0A\00", align 1
@QLA82XX_TEMP_WARN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"Device temperature %d degrees C exceeds operating range. Immediate action needed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @qla82xx_check_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_check_temp(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %12 = load i32, i32* @CRB_TEMP_STATE, align 4
  %13 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %11, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @qla82xx_get_temp_state(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @qla82xx_get_temp_val(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @QLA82XX_TEMP_PANIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @ql_log_warn, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @ql_log(i32 %22, %struct.TYPE_4__* %23, i32 24590, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %24)
  store i32 1, i32* %2, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @QLA82XX_TEMP_WARN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @ql_log_warn, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ql_log(i32 %31, %struct.TYPE_4__* %32, i32 24591, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @qla82xx_get_temp_state(i64) #1

declare dso_local i64 @qla82xx_get_temp_val(i64) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_4__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
