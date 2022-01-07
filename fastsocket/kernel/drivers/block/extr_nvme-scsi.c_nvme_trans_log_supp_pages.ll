; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_supp_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_log_supp_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@LOG_PAGE_SUPPORTED_LOG_PAGES_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOG_PAGE_SUPPORTED_LOG_PAGES_PAGE = common dso_local global i32 0, align 4
@SUPPORTED_LOG_PAGES_PAGE_LENGTH = common dso_local global i32 0, align 4
@LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE = common dso_local global i32 0, align 4
@LOG_PAGE_TEMPERATURE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32)* @nvme_trans_log_supp_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_log_supp_pages(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @LOG_PAGE_SUPPORTED_LOG_PAGES_LENGTH, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kzalloc(i32 %11, i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* @LOG_PAGE_SUPPORTED_LOG_PAGES_PAGE, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @SUPPORTED_LOG_PAGES_PAGE_LENGTH, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @LOG_PAGE_SUPPORTED_LOG_PAGES_PAGE, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @LOG_PAGE_INFORMATIONAL_EXCEPTIONS_PAGE, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @LOG_PAGE_TEMPERATURE_PAGE, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @LOG_PAGE_SUPPORTED_LOG_PAGES_LENGTH, align 4
  %37 = call i32 @min(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %38, i32* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @kfree(i32* %42)
  br label %44

44:                                               ; preds = %19, %16
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

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
