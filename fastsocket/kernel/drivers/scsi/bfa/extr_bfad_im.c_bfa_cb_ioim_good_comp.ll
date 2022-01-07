; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_good_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_good_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_ioim_s = type { i32 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64, %struct.bfad_itnim_data_s*, i32* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@bfa_lun_queue_depth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cb_ioim_good_comp(i8* %0, %struct.bfad_ioim_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfad_ioim_s*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.bfad_itnim_data_s*, align 8
  %7 = alloca %struct.bfad_itnim_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfad_ioim_s* %1, %struct.bfad_ioim_s** %4, align 8
  %8 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %4, align 8
  %9 = bitcast %struct.bfad_ioim_s* %8 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %5, align 8
  %10 = load i32, i32* @DID_OK, align 4
  %11 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %12 = call i32 @ScsiResult(i32 %10, i32 %11)
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load i64, i64* @bfa_lun_queue_depth, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %24
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %38, align 8
  store %struct.bfad_itnim_data_s* %39, %struct.bfad_itnim_data_s** %6, align 8
  %40 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %6, align 8
  %41 = icmp ne %struct.bfad_itnim_data_s* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %6, align 8
  %44 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %43, i32 0, i32 0
  %45 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %44, align 8
  store %struct.bfad_itnim_s* %45, %struct.bfad_itnim_s** %7, align 8
  %46 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %47 = icmp ne %struct.bfad_itnim_s* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s* %49, %struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %48, %42
  br label %55

55:                                               ; preds = %54, %34
  br label %56

56:                                               ; preds = %55, %24
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %57, i32 0, i32 0
  %59 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %58, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = call i32 %59(%struct.scsi_cmnd* %60)
  ret void
}

declare dso_local i32 @ScsiResult(i32, i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
