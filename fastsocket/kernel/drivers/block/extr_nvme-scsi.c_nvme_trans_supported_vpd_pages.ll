; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_supported_vpd_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_supported_vpd_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@STANDARD_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@INQ_SUPPORTED_VPD_PAGES_PAGE = common dso_local global i32 0, align 4
@INQ_NUM_SUPPORTED_VPD_PAGES = common dso_local global i32 0, align 4
@INQ_UNIT_SERIAL_NUMBER_PAGE = common dso_local global i32 0, align 4
@INQ_DEVICE_IDENTIFICATION_PAGE = common dso_local global i32 0, align 4
@INQ_EXTENDED_INQUIRY_DATA_PAGE = common dso_local global i32 0, align 4
@INQ_BDEV_CHARACTERISTICS_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* @nvme_trans_supported_vpd_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_supported_vpd_pages(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %14 = call i32 @memset(i32* %12, i32 0, i32 %13)
  %15 = load i32, i32* @INQ_SUPPORTED_VPD_PAGES_PAGE, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @INQ_NUM_SUPPORTED_VPD_PAGES, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @INQ_SUPPORTED_VPD_PAGES_PAGE, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @INQ_UNIT_SERIAL_NUMBER_PAGE, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 5
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @INQ_DEVICE_IDENTIFICATION_PAGE, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @INQ_EXTENDED_INQUIRY_DATA_PAGE, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 7
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @INQ_BDEV_CHARACTERISTICS_PAGE, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %38 = call i32 @min(i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %39, i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
