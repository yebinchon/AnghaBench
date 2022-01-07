; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fill_all_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_fill_all_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@MODE_PAGE_CACHING_LEN = common dso_local global i64 0, align 8
@MODE_PAGE_CONTROL_LEN = common dso_local global i64 0, align 8
@MODE_PAGE_POW_CND_LEN = common dso_local global i64 0, align 8
@MODE_PAGE_INF_EXC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* @nvme_trans_fill_all_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_fill_all_pages(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %14, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @MODE_PAGE_CACHING_LEN, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @MODE_PAGE_CONTROL_LEN, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @MODE_PAGE_POW_CND_LEN, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %25 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i64, i64* @MODE_PAGE_CACHING_LEN, align 8
  %30 = call i32 @nvme_trans_fill_caching_page(%struct.nvme_ns* %24, %struct.sg_io_hdr* %25, i32* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %72

35:                                               ; preds = %4
  %36 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %37 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i64, i64* @MODE_PAGE_CONTROL_LEN, align 8
  %42 = call i32 @nvme_trans_fill_control_page(%struct.nvme_ns* %36, %struct.sg_io_hdr* %37, i32* %40, i64 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %72

47:                                               ; preds = %35
  %48 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %49 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i64, i64* @MODE_PAGE_POW_CND_LEN, align 8
  %54 = call i32 @nvme_trans_fill_pow_cnd_page(%struct.nvme_ns* %48, %struct.sg_io_hdr* %49, i32* %52, i64 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %72

59:                                               ; preds = %47
  %60 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %61 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* @MODE_PAGE_INF_EXC_LEN, align 4
  %66 = call i32 @nvme_trans_fill_inf_exc_page(%struct.nvme_ns* %60, %struct.sg_io_hdr* %61, i32* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  br label %72

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71, %70, %58, %46, %34
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @nvme_trans_fill_caching_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i64) #1

declare dso_local i32 @nvme_trans_fill_control_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i64) #1

declare dso_local i32 @nvme_trans_fill_pow_cnd_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i64) #1

declare dso_local i32 @nvme_trans_fill_inf_exc_page(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
