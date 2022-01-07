; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_target_reset_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_target_reset_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.bfad_itnim_s = type { i32 }
%struct.bfa_tskim_s = type { i32 }
%struct.bfa_itnim_s = type { i32 }
%struct.scsi_lun = type { i32 }
%struct.bfad_tskim_s = type { i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"target reset, fail to allocate tskim\0A\00", align 1
@BFA_STATUS_FAILED = common dso_local global i32 0, align 4
@FCP_TM_TARGET_RESET = common dso_local global i32 0, align 4
@BFAD_TARGET_RESET_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, %struct.scsi_cmnd*, %struct.bfad_itnim_s*)* @bfad_im_target_reset_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_target_reset_send(%struct.bfad_s* %0, %struct.scsi_cmnd* %1, %struct.bfad_itnim_s* %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.bfad_itnim_s*, align 8
  %7 = alloca %struct.bfa_tskim_s*, align 8
  %8 = alloca %struct.bfa_itnim_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_lun, align 4
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.bfad_itnim_s* %2, %struct.bfad_itnim_s** %6, align 8
  %11 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = bitcast %struct.scsi_cmnd* %14 to %struct.bfad_tskim_s*
  %16 = call %struct.bfa_tskim_s* @bfa_tskim_alloc(i32* %13, %struct.bfad_tskim_s* %15)
  store %struct.bfa_tskim_s* %16, %struct.bfa_tskim_s** %7, align 8
  %17 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %18 = icmp ne %struct.bfa_tskim_s* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @KERN_ERR, align 4
  %21 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %22 = load i32, i32* @bfa_log_level, align 4
  %23 = call i32 @BFA_LOG(i32 %20, %struct.bfad_s* %21, i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @BFA_STATUS_FAILED, align 4
  store i32 %24, i32* %9, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %31, i32 0, i32 0
  %33 = call %struct.bfa_itnim_s* @bfa_fcs_itnim_get_halitn(i32* %32)
  store %struct.bfa_itnim_s* %33, %struct.bfa_itnim_s** %8, align 8
  %34 = call i32 @memset(%struct.scsi_lun* %10, i32 0, i32 4)
  %35 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %36 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %37 = load i32, i32* @FCP_TM_TARGET_RESET, align 4
  %38 = load i32, i32* @BFAD_TARGET_RESET_TMO, align 4
  %39 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bfa_tskim_start(%struct.bfa_tskim_s* %35, %struct.bfa_itnim_s* %36, i32 %40, i32 %37, i32 %38)
  br label %42

42:                                               ; preds = %25, %19
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local %struct.bfa_tskim_s* @bfa_tskim_alloc(i32*, %struct.bfad_tskim_s*) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*) #1

declare dso_local %struct.bfa_itnim_s* @bfa_fcs_itnim_get_halitn(i32*) #1

declare dso_local i32 @memset(%struct.scsi_lun*, i32, i32) #1

declare dso_local i32 @bfa_tskim_start(%struct.bfa_tskim_s*, %struct.bfa_itnim_s*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
