; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_lun_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_lun_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32, %struct.bfad_itnim_data_s*, %struct.Scsi_Host* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32 }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, i32 }
%struct.bfa_tskim_s = type { i32 }
%struct.bfa_itnim_s = type { i32 }
%struct.scsi_lun = type { i32 }
%struct.bfad_tskim_s = type { i32 }

@wq = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"LUN reset, fail to allocate tskim\00", align 1
@FCP_TM_LUN_RESET = common dso_local global i32 0, align 4
@BFAD_LUN_RESET_TMO = common dso_local global i32 0, align 4
@IO_DONE_BIT = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"LUN reset failure, status: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @bfad_im_reset_lun_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_reset_lun_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  %5 = alloca %struct.bfad_itnim_data_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfa_tskim_s*, align 8
  %8 = alloca %struct.bfad_itnim_s*, align 8
  %9 = alloca %struct.bfa_itnim_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_lun, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %17, align 8
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %3, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %24, %struct.bfad_im_port_s** %4, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %28, align 8
  store %struct.bfad_itnim_data_s* %29, %struct.bfad_itnim_data_s** %5, align 8
  %30 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %30, i32 0, i32 0
  %32 = load %struct.bfad_s*, %struct.bfad_s** %31, align 8
  store %struct.bfad_s* %32, %struct.bfad_s** %6, align 8
  %33 = load i32, i32* @wq, align 4
  %34 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %33)
  %35 = load i32, i32* @SUCCESS, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %37 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %5, align 8
  %41 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %40, i32 0, i32 0
  %42 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %41, align 8
  store %struct.bfad_itnim_s* %42, %struct.bfad_itnim_s** %8, align 8
  %43 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %44 = icmp ne %struct.bfad_itnim_s* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %1
  %46 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %47 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %46, i32 0, i32 0
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* @FAILED, align 4
  store i32 %50, i32* %10, align 4
  br label %122

51:                                               ; preds = %1
  %52 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %53 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %52, i32 0, i32 1
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %55 = bitcast %struct.scsi_cmnd* %54 to %struct.bfad_tskim_s*
  %56 = call %struct.bfa_tskim_s* @bfa_tskim_alloc(i32* %53, %struct.bfad_tskim_s* %55)
  store %struct.bfa_tskim_s* %56, %struct.bfa_tskim_s** %7, align 8
  %57 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %58 = icmp ne %struct.bfa_tskim_s* %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %62 = load i32, i32* @bfa_log_level, align 4
  %63 = call i32 (i32, %struct.bfad_s*, i32, i8*, ...) @BFA_LOG(i32 %60, %struct.bfad_s* %61, i32 %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %65 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %64, i32 0, i32 0
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @FAILED, align 4
  store i32 %68, i32* %10, align 4
  br label %122

69:                                               ; preds = %51
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 2
  store i32* null, i32** %71, align 8
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i8* bitcast (i32* @wq to i8*), i8** %74, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %79 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %78, i32 0, i32 0
  %80 = call %struct.bfa_itnim_s* @bfa_fcs_itnim_get_halitn(i32* %79)
  store %struct.bfa_itnim_s* %80, %struct.bfa_itnim_s** %9, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @int_to_scsilun(i32 %85, %struct.scsi_lun* %13)
  %87 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %88 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %9, align 8
  %89 = load i32, i32* @FCP_TM_LUN_RESET, align 4
  %90 = load i32, i32* @BFAD_LUN_RESET_TMO, align 4
  %91 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %13, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bfa_tskim_start(%struct.bfa_tskim_s* %87, %struct.bfa_itnim_s* %88, i32 %92, i32 %89, i32 %90)
  %94 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %95 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %94, i32 0, i32 0
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* @wq, align 4
  %99 = load i32, i32* @IO_DONE_BIT, align 4
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = bitcast i32* %102 to i64*
  %104 = call i32 @test_bit(i32 %99, i64* %103)
  %105 = call i32 @wait_event(i32 %98, i32 %104)
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @BFI_TSKIM_STS_OK, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %69
  %115 = load i32, i32* @KERN_ERR, align 4
  %116 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %117 = load i32, i32* @bfa_log_level, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 (i32, %struct.bfad_s*, i32, i8*, ...) @BFA_LOG(i32 %115, %struct.bfad_s* %116, i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @FAILED, align 4
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %114, %69
  br label %122

122:                                              ; preds = %121, %59, %45
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_tskim_s* @bfa_tskim_alloc(i32*, %struct.bfad_tskim_s*) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, ...) #1

declare dso_local %struct.bfa_itnim_s* @bfa_fcs_itnim_get_halitn(i32*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @bfa_tskim_start(%struct.bfa_tskim_s*, %struct.bfa_itnim_s*, i32, i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
