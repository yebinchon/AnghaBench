; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_mode_page_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_mode_page_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32 }
%struct.sg_io_hdr = type { i32 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i64, i32, i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)*, i64)* @nvme_trans_mode_page_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_mode_page_create(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i64 %3, i32 %4, i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* %5, i64 %6) #0 {
  %8 = alloca %struct.nvme_ns*, align 8
  %9 = alloca %struct.sg_io_hdr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %8, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* %5, i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)** %13, align 8
  store i64 %6, i64* %14, align 8
  %26 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @GET_MODE_SENSE_DBD(i32* %27)
  store i32 %28, i32* %18, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @GET_MODE_SENSE_LLBAA(i32* %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @GET_MODE_SENSE_MPH_SIZE(i32 %31)
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = call i64 @nvme_trans_get_blk_desc_len(i32 %33, i32 %34)
  store i64 %35, i64* %23, align 8
  %36 = load i32, i32* %21, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %23, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %14, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %20, align 8
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 3, %42
  %44 = add nsw i32 3, %43
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %23, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %47, %48
  store i64 %49, i64* %25, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %24, align 8
  %52 = load i64, i64* %24, align 8
  %53 = load i64, i64* %23, align 8
  %54 = add nsw i64 %52, %53
  store i64 %54, i64* %22, align 8
  %55 = load i64, i64* %20, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kzalloc(i64 %55, i32 %56)
  store i32* %57, i32** %17, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %7
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %15, align 4
  br label %118

63:                                               ; preds = %7
  %64 = load i32*, i32** %17, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i64, i64* %25, align 8
  %70 = load i64, i64* %23, align 8
  %71 = call i32 @nvme_trans_fill_mode_parm_hdr(i32* %65, i32 %66, i32 %67, i32 %68, i64 %69, i64 %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %63
  br label %115

76:                                               ; preds = %63
  %77 = load i64, i64* %23, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %81 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %9, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i64, i64* %24, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i64, i64* %23, align 8
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @nvme_trans_fill_blk_desc(%struct.nvme_ns* %80, %struct.sg_io_hdr* %81, i32* %84, i64 %85, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %115

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %76
  %94 = load i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)*, i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)** %13, align 8
  %95 = load %struct.nvme_ns*, %struct.nvme_ns** %8, align 8
  %96 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %9, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i64, i64* %22, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i64, i64* %14, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 %94(%struct.nvme_ns* %95, %struct.sg_io_hdr* %96, i32* %99, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %115

107:                                              ; preds = %93
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %20, align 8
  %110 = call i32 @min(i64 %108, i64 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %9, align 8
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %111, i32* %112, i32 %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %107, %106, %91, %75
  %116 = load i32*, i32** %17, align 8
  %117 = call i32 @kfree(i32* %116)
  br label %118

118:                                              ; preds = %115, %60
  %119 = load i32, i32* %15, align 4
  ret i32 %119
}

declare dso_local i32 @GET_MODE_SENSE_DBD(i32*) #1

declare dso_local i32 @GET_MODE_SENSE_LLBAA(i32*) #1

declare dso_local i32 @GET_MODE_SENSE_MPH_SIZE(i32) #1

declare dso_local i64 @nvme_trans_get_blk_desc_len(i32, i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @nvme_trans_fill_mode_parm_hdr(i32*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @nvme_trans_fill_blk_desc(%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i64, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
