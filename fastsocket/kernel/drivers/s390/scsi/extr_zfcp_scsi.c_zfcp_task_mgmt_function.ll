; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_task_mgmt_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_task_mgmt_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.zfcp_unit* }
%struct.zfcp_unit = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32 }
%struct.zfcp_fsf_req = type { i32, i32 }

@SUCCESS = common dso_local global i32 0, align 4
@ZFCP_STATUS_COMMON_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"nres\00", align 1
@FAILED = common dso_local global i32 0, align 4
@ZFCP_STATUS_FSFREQ_TMFUNCFAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@ZFCP_STATUS_FSFREQ_TMFUNCNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"nsup\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"okay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32)* @zfcp_task_mgmt_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_task_mgmt_function(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_unit*, align 8
  %7 = alloca %struct.zfcp_adapter*, align 8
  %8 = alloca %struct.zfcp_fsf_req*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.zfcp_unit*, %struct.zfcp_unit** %15, align 8
  store %struct.zfcp_unit* %16, %struct.zfcp_unit** %6, align 8
  %17 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %18 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %20, align 8
  store %struct.zfcp_adapter* %21, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %8, align 8
  %22 = load i32, i32* @SUCCESS, align 4
  store i32 %22, i32* %9, align 4
  store i32 3, i32* %11, align 4
  br label %23

23:                                               ; preds = %56, %2
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %11, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.zfcp_fsf_req* @zfcp_fsf_send_fcp_ctm(%struct.zfcp_unit* %28, i32 %29)
  store %struct.zfcp_fsf_req* %30, %struct.zfcp_fsf_req** %8, align 8
  %31 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %32 = icmp ne %struct.zfcp_fsf_req* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %36 = call i32 @zfcp_erp_wait(%struct.zfcp_adapter* %35)
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %101

43:                                               ; preds = %34
  %44 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  %45 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %44, i32 0, i32 0
  %46 = call i32 @atomic_read(i32* %45)
  %47 = load i32, i32* @ZFCP_STATUS_COMMON_RUNNING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %54 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %51, %struct.zfcp_unit* %52, %struct.scsi_cmnd* %53)
  %55 = load i32, i32* @SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %101

56:                                               ; preds = %43
  br label %23

57:                                               ; preds = %33, %23
  %58 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %59 = icmp ne %struct.zfcp_fsf_req* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @FAILED, align 4
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %57
  %63 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %64 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %63, i32 0, i32 1
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %67 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ZFCP_STATUS_FSFREQ_TMFUNCFAILED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %76 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %73, %struct.zfcp_unit* %74, %struct.scsi_cmnd* %75)
  %77 = load i32, i32* @FAILED, align 4
  store i32 %77, i32* %9, align 4
  br label %97

78:                                               ; preds = %62
  %79 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %80 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ZFCP_STATUS_FSFREQ_TMFUNCNOTSUPP, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %89 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %86, %struct.zfcp_unit* %87, %struct.scsi_cmnd* %88)
  %90 = load i32, i32* @FAILED, align 4
  store i32 %90, i32* %9, align 4
  br label %96

91:                                               ; preds = %78
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.zfcp_unit*, %struct.zfcp_unit** %6, align 8
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %95 = call i32 @zfcp_dbf_scsi_devreset(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %92, %struct.zfcp_unit* %93, %struct.scsi_cmnd* %94)
  br label %96

96:                                               ; preds = %91, %85
  br label %97

97:                                               ; preds = %96, %72
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %99 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %60, %50, %41
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_send_fcp_ctm(%struct.zfcp_unit*, i32) #1

declare dso_local i32 @zfcp_erp_wait(%struct.zfcp_adapter*) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @zfcp_dbf_scsi_devreset(i8*, i32, %struct.zfcp_unit*, %struct.scsi_cmnd*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
