; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_dfc_rev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_get_dfc_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, i32, {}*, %struct.TYPE_16__*, %struct.TYPE_12__*, %struct.TYPE_9__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.get_mgmt_rev = type { i32 }
%struct.get_mgmt_rev_reply = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"2740 Received GET_DFC_REV request below minimum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"2741 Received GET_DFC_REV reply below minimum size\0A\00", align 1
@MANAGEMENT_MAJOR_REV = common dso_local global i32 0, align 4
@MANAGEMENT_MINOR_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_get_dfc_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_get_dfc_rev(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.get_mgmt_rev*, align 8
  %6 = alloca %struct.get_mgmt_rev_reply*, align 8
  %7 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %8 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %9 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %8, i32 0, i32 5
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %13, %struct.lpfc_vport** %3, align 8
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %14, i32 0, i32 0
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %15, align 8
  store %struct.lpfc_hba* %16, %struct.lpfc_hba** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %24 = load i32, i32* @KERN_WARNING, align 4
  %25 = load i32, i32* @LOG_LIBDFC, align 4
  %26 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %67

29:                                               ; preds = %1
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %30, i32 0, i32 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.get_mgmt_rev*
  store %struct.get_mgmt_rev* %37, %struct.get_mgmt_rev** %5, align 8
  %38 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %38, i32 0, i32 3
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.get_mgmt_rev_reply*
  store %struct.get_mgmt_rev_reply* %45, %struct.get_mgmt_rev_reply** %6, align 8
  %46 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %47 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 12
  br i1 %50, label %51, label %58

51:                                               ; preds = %29
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = load i32, i32* @LOG_LIBDFC, align 4
  %55 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %67

58:                                               ; preds = %29
  %59 = load i32, i32* @MANAGEMENT_MAJOR_REV, align 4
  %60 = load %struct.get_mgmt_rev_reply*, %struct.get_mgmt_rev_reply** %6, align 8
  %61 = getelementptr inbounds %struct.get_mgmt_rev_reply, %struct.get_mgmt_rev_reply* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @MANAGEMENT_MINOR_REV, align 4
  %64 = load %struct.get_mgmt_rev_reply*, %struct.get_mgmt_rev_reply** %6, align 8
  %65 = getelementptr inbounds %struct.get_mgmt_rev_reply, %struct.get_mgmt_rev_reply* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %51, %22
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %70 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %69, i32 0, i32 3
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %77 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %76, i32 0, i32 2
  %78 = bitcast {}** %77 to i32 (%struct.fc_bsg_job*)**
  %79 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %78, align 8
  %80 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %81 = call i32 %79(%struct.fc_bsg_job* %80)
  br label %82

82:                                               ; preds = %75, %67
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
