; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_unit_serial_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_unit_serial_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { %struct.nvme_dev* }
%struct.nvme_dev = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@STANDARD_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@INQ_UNIT_SERIAL_NUMBER_PAGE = common dso_local global i32 0, align 4
@INQ_SERIAL_NUMBER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* @nvme_trans_unit_serial_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_unit_serial_page(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %13 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %12, i32 0, i32 0
  %14 = load %struct.nvme_dev*, %struct.nvme_dev** %13, align 8
  store %struct.nvme_dev* %14, %struct.nvme_dev** %9, align 8
  %15 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %18 = call i32 @memset(i32* %16, i32 0, i32 %17)
  %19 = load i32, i32* @INQ_UNIT_SERIAL_NUMBER_PAGE, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @INQ_SERIAL_NUMBER_LENGTH, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %28 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @INQ_SERIAL_NUMBER_LENGTH, align 4
  %31 = call i32 @strncpy(i32* %26, i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %35, i32* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  ret i32 %39
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
