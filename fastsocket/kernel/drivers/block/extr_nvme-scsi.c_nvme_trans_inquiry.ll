; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_inquiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@STANDARD_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INQ_STANDARD_INQUIRY_PAGE = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@SCSI_ASC_INVALID_CDB = common dso_local global i32 0, align 4
@SCSI_ASCQ_CAUSE_NOT_REPORTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i64*)* @nvme_trans_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_inquiry(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i64* %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = call i64 @GET_INQ_EVPD_BIT(i64* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = call i64 @GET_INQ_PAGE_CODE(i64* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = call i32 @GET_INQ_ALLOC_LENGTH(i64* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @kmalloc(i32 %19, i32 %20)
  store i64* %21, i64** %11, align 8
  %22 = load i64*, i64** %11, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @INQ_STANDARD_INQUIRY_PAGE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %36 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @nvme_trans_standard_inquiry_page(%struct.nvme_ns* %35, %struct.sg_io_hdr* %36, i64* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %47

40:                                               ; preds = %30
  %41 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %42 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %43 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %44 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %45 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %46 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %40, %34
  br label %86

48:                                               ; preds = %27
  %49 = load i64, i64* %9, align 8
  switch i64 %49, label %78 [
    i64 128, label %50
    i64 129, label %56
    i64 131, label %62
    i64 130, label %68
    i64 132, label %73
  ]

50:                                               ; preds = %48
  %51 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %52 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @nvme_trans_supported_vpd_pages(%struct.nvme_ns* %51, %struct.sg_io_hdr* %52, i64* %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %85

56:                                               ; preds = %48
  %57 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %58 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @nvme_trans_unit_serial_page(%struct.nvme_ns* %57, %struct.sg_io_hdr* %58, i64* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  br label %85

62:                                               ; preds = %48
  %63 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %64 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %65 = load i64*, i64** %11, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @nvme_trans_device_id_page(%struct.nvme_ns* %63, %struct.sg_io_hdr* %64, i64* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  br label %85

68:                                               ; preds = %48
  %69 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %70 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @nvme_trans_ext_inq_page(%struct.nvme_ns* %69, %struct.sg_io_hdr* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %85

73:                                               ; preds = %48
  %74 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %75 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @nvme_trans_bdev_char_page(%struct.nvme_ns* %74, %struct.sg_io_hdr* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %85

78:                                               ; preds = %48
  %79 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %80 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %81 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %82 = load i32, i32* @SCSI_ASC_INVALID_CDB, align 4
  %83 = load i32, i32* @SCSI_ASCQ_CAUSE_NOT_REPORTABLE, align 4
  %84 = call i32 @nvme_trans_completion(%struct.sg_io_hdr* %79, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %78, %73, %68, %62, %56, %50
  br label %86

86:                                               ; preds = %85, %47
  %87 = load i64*, i64** %11, align 8
  %88 = call i32 @kfree(i64* %87)
  br label %89

89:                                               ; preds = %86, %24
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @GET_INQ_EVPD_BIT(i64*) #1

declare dso_local i64 @GET_INQ_PAGE_CODE(i64*) #1

declare dso_local i32 @GET_INQ_ALLOC_LENGTH(i64*) #1

declare dso_local i64* @kmalloc(i32, i32) #1

declare dso_local i32 @nvme_trans_standard_inquiry_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i64*, i32) #1

declare dso_local i32 @nvme_trans_completion(%struct.sg_io_hdr*, i32, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_supported_vpd_pages(%struct.nvme_ns*, %struct.sg_io_hdr*, i64*, i32) #1

declare dso_local i32 @nvme_trans_unit_serial_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i64*, i32) #1

declare dso_local i32 @nvme_trans_device_id_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i64*, i32) #1

declare dso_local i32 @nvme_trans_ext_inq_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i32) #1

declare dso_local i32 @nvme_trans_bdev_char_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
