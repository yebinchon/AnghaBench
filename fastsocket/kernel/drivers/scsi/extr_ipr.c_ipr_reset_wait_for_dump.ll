; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_wait_for_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_wait_for_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { i64, i32 }

@GET_DUMP = common dso_local global i64 0, align 8
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@READ_DUMP = common dso_local global i64 0, align 8
@ABORT_DUMP = common dso_local global i64 0, align 8
@ipr_reset_alert = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_wait_for_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_wait_for_dump(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %4 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %5 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %4, i32 0, i32 1
  %6 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %5, align 8
  store %struct.ipr_ioa_cfg* %6, %struct.ipr_ioa_cfg** %3, align 8
  %7 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %8 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GET_DUMP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %14 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %18 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @READ_DUMP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i64, i64* @ABORT_DUMP, align 8
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %25 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @ipr_reset_alert, align 4
  %31 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %32 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
