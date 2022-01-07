; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_mbox_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_mbox_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, i32*, %struct.TYPE_10__*, {}*, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.dfc_mbox_req = type { i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"2737 Mix-and-match backward compatibility between MBOX_REQ old size:%d and new request size:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_bsg_mbox_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_mbox_cmd(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.dfc_mbox_req*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %7 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %8 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %7, i32 0, i32 5
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %3, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %13, i32 0, i32 0
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %14, align 8
  store %struct.lpfc_hba* %15, %struct.lpfc_hba** %4, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %21 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 20
  br i1 %24, label %25, label %48

25:                                               ; preds = %1
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = load i32, i32* @LOG_LIBDFC, align 4
  %29 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %30 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %34, i32 16)
  %36 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %37 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %36, i32 0, i32 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.dfc_mbox_req*
  store %struct.dfc_mbox_req* %43, %struct.dfc_mbox_req** %5, align 8
  %44 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %5, align 8
  %45 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %5, align 8
  %47 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %25, %1
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %50 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %52 = call i32 @lpfc_bsg_issue_mbox(%struct.lpfc_hba* %49, %struct.fc_bsg_job* %50, %struct.lpfc_vport* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %57 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %63 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %62, i32 0, i32 3
  %64 = bitcast {}** %63 to i32 (%struct.fc_bsg_job*)**
  %65 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %64, align 8
  %66 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %67 = call i32 %65(%struct.fc_bsg_job* %66)
  br label %81

68:                                               ; preds = %48
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %80

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %75 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %79 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %72, %71
  br label %81

81:                                               ; preds = %80, %55
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_bsg_issue_mbox(%struct.lpfc_hba*, %struct.fc_bsg_job*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
