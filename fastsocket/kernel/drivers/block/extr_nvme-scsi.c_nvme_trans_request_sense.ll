; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_request_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@REQUEST_SENSE_DESC_OFFSET = common dso_local global i32 0, align 4
@REQUEST_SENSE_DESC_MASK = common dso_local global i32 0, align 4
@DESC_FMT_SENSE_DATA_SIZE = common dso_local global i32 0, align 4
@FIXED_FMT_SENSE_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DESCRIPTOR_FORMAT_SENSE_DATA_TYPE = common dso_local global i32 0, align 4
@DESC_FORMAT_SENSE_DATA = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASC_NO_SENSE = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@FIXED_SENSE_DATA = common dso_local global i32 0, align 4
@FIXED_SENSE_DATA_ADD_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*)* @nvme_trans_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_request_sense(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @GET_REQUEST_SENSE_ALLOC_LENGTH(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @REQUEST_SENSE_DESC_OFFSET, align 4
  %18 = call i32 @GET_U8_FROM_CDB(i32* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @REQUEST_SENSE_DESC_MASK, align 4
  %20 = load i32, i32* %11, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @DESC_FMT_SENSE_DATA_SIZE, align 4
  br label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @FIXED_FMT_SENSE_DATA_SIZE, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kzalloc(i32 %30, i32 %31)
  store i32* %32, i32** %12, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %81

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @DESCRIPTOR_FORMAT_SENSE_DATA_TYPE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* @DESC_FORMAT_SENSE_DATA, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @NO_SENSE, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %52, i32* %54, align 4
  br label %71

55:                                               ; preds = %38
  %56 = load i32, i32* @FIXED_SENSE_DATA, align 4
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @NO_SENSE, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @FIXED_SENSE_DATA_ADD_LENGTH, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @SCSI_ASC_NO_SENSE, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 12
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 13
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %55, %42
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @min(i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %75, i32* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @kfree(i32* %79)
  br label %81

81:                                               ; preds = %71, %35
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @GET_REQUEST_SENSE_ALLOC_LENGTH(i32*) #1

declare dso_local i32 @GET_U8_FROM_CDB(i32*, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
