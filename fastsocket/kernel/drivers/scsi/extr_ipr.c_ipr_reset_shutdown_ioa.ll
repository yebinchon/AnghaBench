; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_shutdown_ioa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_shutdown_ioa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_8__, %struct.TYPE_5__, %struct.ipr_ioa_cfg* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ipr_ioa_cfg = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@ENTER = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_IOA_SHUTDOWN = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_NORMAL = common dso_local global i32 0, align 4
@IPR_SHUTDOWN_TIMEOUT = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_PREPARE_FOR_NORMAL = common dso_local global i32 0, align 4
@IPR_INTERNAL_TIMEOUT = common dso_local global i64 0, align 8
@ipr_dual_ioa_raid = common dso_local global i64 0, align 8
@IPR_DUAL_IOA_ABBR_SHUTDOWN_TO = common dso_local global i64 0, align 8
@IPR_ABBREV_SHUTDOWN_TIMEOUT = common dso_local global i64 0, align 8
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@ipr_reset_ucode_download = common dso_local global i32 0, align 4
@ipr_reset_alert = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_shutdown_ioa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_shutdown_ioa(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 3
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %3, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @ENTER, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %1
  %20 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %21 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %88, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %30 = call i32 @cpu_to_be32(i32 %29)
  %31 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %32 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %35 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %36 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = load i32, i32* @IPR_IOA_SHUTDOWN, align 4
  %40 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %41 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %39, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %48 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IPR_SHUTDOWN_NORMAL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %28
  %57 = load i64, i64* @IPR_SHUTDOWN_TIMEOUT, align 8
  store i64 %57, i64* %5, align 8
  br label %78

58:                                               ; preds = %28
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @IPR_SHUTDOWN_PREPARE_FOR_NORMAL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64, i64* @IPR_INTERNAL_TIMEOUT, align 8
  store i64 %63, i64* %5, align 8
  br label %77

64:                                               ; preds = %58
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i64, i64* @ipr_dual_ioa_raid, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* @IPR_DUAL_IOA_ABBR_SHUTDOWN_TO, align 8
  store i64 %73, i64* %5, align 8
  br label %76

74:                                               ; preds = %69, %64
  %75 = load i64, i64* @IPR_ABBREV_SHUTDOWN_TIMEOUT, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %76, %62
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %80 = load i32, i32* @ipr_reset_ioa_job, align 4
  %81 = load i32, i32* @ipr_timeout, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @ipr_do_req(%struct.ipr_cmnd* %79, i32 %80, i32 %81, i64 %82)
  %84 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @ipr_reset_ucode_download, align 4
  %86 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %87 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %92

88:                                               ; preds = %19, %1
  %89 = load i32, i32* @ipr_reset_alert, align 4
  %90 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %91 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %78
  %93 = load i32, i32* @LEAVE, align 4
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
