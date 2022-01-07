; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { {}*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.Scsi_Host* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_14__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not 84xx, exiting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@A84_ISSUE_RESET_DIAG_FW = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Vendor request 84xx reset failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Vendor request 84xx reset completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @qla84xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla84xx_reset(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.qla_hw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %9 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %10 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %9, i32 0, i32 3
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host* %12)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  store %struct.qla_hw_data* %16, %struct.qla_hw_data** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  %18 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ql_dbg_user, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = call i32 @ql_dbg(i32 %21, %struct.TYPE_14__* %22, i32 28719, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %1
  %27 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %28 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %27, i32 0, i32 2
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @A84_ISSUE_RESET_DIAG_FW, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @qla84xx_reset_chip(%struct.TYPE_14__* %36, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %26
  %45 = load i32, i32* @ql_log_warn, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = call i32 @ql_log(i32 %45, %struct.TYPE_14__* %46, i32 28720, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @DID_ERROR, align 4
  %49 = shl i32 %48, 16
  store i32 %49, i32* %7, align 4
  br label %65

50:                                               ; preds = %26
  %51 = load i32, i32* @ql_dbg_user, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = call i32 @ql_dbg(i32 %51, %struct.TYPE_14__* %52, i32 28721, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @DID_OK, align 4
  %55 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %56 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %55, i32 0, i32 1
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %60 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %59, i32 0, i32 0
  %61 = bitcast {}** %60 to i32 (%struct.fc_bsg_job*)**
  %62 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %61, align 8
  %63 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %64 = call i32 %62(%struct.fc_bsg_job* %63)
  br label %65

65:                                               ; preds = %50, %44
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_14__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @qla84xx_reset_chip(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_14__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
