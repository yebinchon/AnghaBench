; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_reset_owner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_reset_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@QLA82XX_CRB_DEV_STATE = common dso_local global i32 0, align 4
@QLA8XXX_DEV_READY = common dso_local global i64 0, align 8
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"HW State: NEED RESET\0A\00", align 1
@QLA8XXX_DEV_NEED_RESET = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"reset_owner is 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Device state is 0x%x = %s.\0A\00", align 1
@MAX_STATES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_set_reset_owner(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %3, align 8
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %9 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %10 = call i64 @qla82xx_rd_32(%struct.qla_hw_data* %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @QLA8XXX_DEV_READY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load i32, i32* @ql_log_info, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %15, %struct.TYPE_7__* %16, i32 45103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %19 = load i32, i32* @QLA82XX_CRB_DEV_STATE, align 4
  %20 = load i32, i32* @QLA8XXX_DEV_NEED_RESET, align 4
  %21 = call i32 @qla82xx_wr_32(%struct.qla_hw_data* %18, i32 %19, i32 %20)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @ql_dbg_p3p, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ql_dbg(i32 %25, %struct.TYPE_7__* %26, i32 45104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %45

31:                                               ; preds = %1
  %32 = load i32, i32* @ql_log_info, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @MAX_STATES, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = call i8* @qdev_state(i64 %39)
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i8* [ %40, %38 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %41 ]
  %44 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %32, %struct.TYPE_7__* %33, i32 45105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %34, i8* %43)
  br label %45

45:                                               ; preds = %42, %14
  ret void
}

declare dso_local i64 @qla82xx_rd_32(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @qla82xx_wr_32(%struct.qla_hw_data*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32) #1

declare dso_local i8* @qdev_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
