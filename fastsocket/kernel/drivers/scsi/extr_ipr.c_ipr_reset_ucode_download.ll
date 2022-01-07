; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_ucode_download.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_ucode_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_4__, %struct.ipr_ioa_cfg* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.ipr_ioa_cfg = type { i64, %struct.ipr_sglist* }
%struct.ipr_sglist = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@ipr_reset_alert = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_RQTYPE_SCSICDB = common dso_local global i32 0, align 4
@WRITE_BUFFER = common dso_local global i32 0, align 4
@IPR_WR_BUF_DOWNLOAD_AND_SAVE = common dso_local global i32 0, align 4
@ipr_reset_ucode_download_done = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_WRITE_BUFFER_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_ucode_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_ucode_download(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca %struct.ipr_sglist*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %6 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %7 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %6, i32 0, i32 2
  %8 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  store %struct.ipr_ioa_cfg* %8, %struct.ipr_ioa_cfg** %4, align 8
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 1
  %11 = load %struct.ipr_sglist*, %struct.ipr_sglist** %10, align 8
  store %struct.ipr_sglist* %11, %struct.ipr_sglist** %5, align 8
  %12 = load i32, i32* @ENTER, align 4
  %13 = load i32, i32* @ipr_reset_alert, align 4
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %17 = icmp ne %struct.ipr_sglist* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %19, i32* %2, align 4
  br label %100

20:                                               ; preds = %1
  %21 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %22 = call i32 @cpu_to_be32(i32 %21)
  %23 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %24 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* @IPR_RQTYPE_SCSICDB, align 4
  %27 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %28 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 8
  %31 = load i32, i32* @WRITE_BUFFER, align 4
  %32 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %33 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %31, i32* %37, align 4
  %38 = load i32, i32* @IPR_WR_BUF_DOWNLOAD_AND_SAVE, align 4
  %39 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %40 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %38, i32* %44, align 4
  %45 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %46 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 16711680
  %49 = ashr i32 %48, 16
  %50 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %51 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 %49, i32* %55, align 4
  %56 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %57 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 65280
  %60 = ashr i32 %59, 8
  %61 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %62 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  store i32 %60, i32* %66, align 4
  %67 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %68 = getelementptr inbounds %struct.ipr_sglist, %struct.ipr_sglist* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %72 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  store i32 %70, i32* %76, align 4
  %77 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %78 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %20
  %82 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %83 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %84 = call i32 @ipr_build_ucode_ioadl64(%struct.ipr_cmnd* %82, %struct.ipr_sglist* %83)
  br label %89

85:                                               ; preds = %20
  %86 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %87 = load %struct.ipr_sglist*, %struct.ipr_sglist** %5, align 8
  %88 = call i32 @ipr_build_ucode_ioadl(%struct.ipr_cmnd* %86, %struct.ipr_sglist* %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* @ipr_reset_ucode_download_done, align 4
  %91 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %92 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %94 = load i32, i32* @ipr_reset_ioa_job, align 4
  %95 = load i32, i32* @ipr_timeout, align 4
  %96 = load i32, i32* @IPR_WRITE_BUFFER_TIMEOUT, align 4
  %97 = call i32 @ipr_do_req(%struct.ipr_cmnd* %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* @LEAVE, align 4
  %99 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %89, %18
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_build_ucode_ioadl64(%struct.ipr_cmnd*, %struct.ipr_sglist*) #1

declare dso_local i32 @ipr_build_ucode_ioadl(%struct.ipr_cmnd*, %struct.ipr_sglist*) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
