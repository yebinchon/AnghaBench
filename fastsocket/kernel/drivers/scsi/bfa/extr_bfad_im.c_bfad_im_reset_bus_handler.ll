; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_bus_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfad_im_reset_bus_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32 }
%struct.bfad_itnim_s = type { i32 }

@wq = common dso_local global i32 0, align 4
@MAX_FCP_TARGET = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@IO_DONE_BIT = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_OK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"target reset failure, status: %d\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @bfad_im_reset_bus_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_reset_bus_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.bfad_im_port_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfad_itnim_s*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %16, align 8
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %4, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %23, %struct.bfad_im_port_s** %5, align 8
  %24 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %25 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %24, i32 0, i32 0
  %26 = load %struct.bfad_s*, %struct.bfad_s** %25, align 8
  store %struct.bfad_s* %26, %struct.bfad_s** %6, align 8
  store i64 0, i64* %11, align 8
  %27 = load i32, i32* @wq, align 4
  %28 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %27)
  %29 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %30 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %92, %1
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @MAX_FCP_TARGET, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %33
  %38 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.bfad_itnim_s* @bfad_get_itnim(%struct.bfad_im_port_s* %38, i64 %39)
  store %struct.bfad_itnim_s* %40, %struct.bfad_itnim_s** %7, align 8
  %41 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %42 = icmp ne %struct.bfad_itnim_s* %41, null
  br i1 %42, label %43, label %91

43:                                               ; preds = %37
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* bitcast (i32* @wq to i8*), i8** %46, align 8
  %47 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %49 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %50 = call i64 @bfad_im_target_reset_send(%struct.bfad_s* %47, %struct.scsi_cmnd* %48, %struct.bfad_itnim_s* %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @BFA_STATUS_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %92

57:                                               ; preds = %43
  %58 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %59 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load i32, i32* @wq, align 4
  %63 = load i32, i32* @IO_DONE_BIT, align 4
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = bitcast i32* %66 to i64*
  %68 = call i32 @test_bit(i32 %63, i64* %67)
  %69 = call i32 @wait_event(i32 %62, i32 %68)
  %70 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %71 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @BFI_TSKIM_STS_OK, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %57
  %83 = load i32, i32* @KERN_ERR, align 4
  %84 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %85 = load i32, i32* @bfa_log_level, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @BFA_LOG(i32 %83, %struct.bfad_s* %84, i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %82, %57
  br label %91

91:                                               ; preds = %90, %37
  br label %92

92:                                               ; preds = %91, %54
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %33

95:                                               ; preds = %33
  %96 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %97 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %96, i32 0, i32 0
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @FAILED, align 4
  store i32 %103, i32* %2, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @SUCCESS, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfad_itnim_s* @bfad_get_itnim(%struct.bfad_im_port_s*, i64) #1

declare dso_local i64 @bfad_im_target_reset_send(%struct.bfad_s*, %struct.scsi_cmnd*, %struct.bfad_itnim_s*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
