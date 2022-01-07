; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_ext_inq_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_ext_inq_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ctrl = type { i32 }
%struct.nvme_id_ns = type { i32, i64 }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@__const.nvme_trans_ext_inq_page.spt_lut = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 2, i32 1, i32 4, i32 6, i32 5, i32 7], align 16
@EXTENDED_INQUIRY_DATA_PAGE_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INQ_EXTENDED_INQUIRY_DATA_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32)* @nvme_trans_ext_inq_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_ext_inq_page(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_ns*, align 8
  %5 = alloca %struct.sg_io_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvme_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nvme_id_ctrl*, align 8
  %14 = alloca %struct.nvme_id_ns*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [8 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %4, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %28 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %27, i32 0, i32 1
  %29 = load %struct.nvme_dev*, %struct.nvme_dev** %28, align 8
  store %struct.nvme_dev* %29, %struct.nvme_dev** %10, align 8
  store i32 128, i32* %16, align 4
  %30 = bitcast [8 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([8 x i32]* @__const.nvme_trans_ext_inq_page.spt_lut to i8*), i64 32, i1 false)
  store i32 32, i32* %23, align 4
  store i32 1, i32* %25, align 4
  %31 = load i32, i32* @EXTENDED_INQUIRY_DATA_PAGE_LENGTH, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmalloc(i32 %31, i32 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %165

39:                                               ; preds = %3
  %40 = load %struct.nvme_dev*, %struct.nvme_dev** %10, align 8
  %41 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @dma_alloc_coherent(i32* %43, i32 16, i32* %11, i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %162

51:                                               ; preds = %39
  %52 = load %struct.nvme_dev*, %struct.nvme_dev** %10, align 8
  %53 = load %struct.nvme_ns*, %struct.nvme_ns** %4, align 8
  %54 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @nvme_identify(%struct.nvme_dev* %52, i32 %55, i32 0, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %154

64:                                               ; preds = %51
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %8, align 4
  br label %154

69:                                               ; preds = %64
  %70 = load i8*, i8** %12, align 8
  %71 = bitcast i8* %70 to %struct.nvme_id_ns*
  store %struct.nvme_id_ns* %71, %struct.nvme_id_ns** %14, align 8
  %72 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %14, align 8
  %73 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 7
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 3
  store i32 %79, i32* %17, align 4
  %80 = load %struct.nvme_id_ns*, %struct.nvme_id_ns** %14, align 8
  %81 = getelementptr inbounds %struct.nvme_id_ns, %struct.nvme_id_ns* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  store i32 1, i32* %22, align 4
  br label %86

85:                                               ; preds = %69
  store i32 0, i32* %22, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = phi i32 [ 1, %84 ], [ 0, %85 ]
  %88 = load i32, i32* %22, align 4
  %89 = shl i32 %88, 2
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %22, align 4
  %91 = shl i32 %90, 1
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %22, align 4
  store i32 %92, i32* %21, align 4
  %93 = load %struct.nvme_dev*, %struct.nvme_dev** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @nvme_identify(%struct.nvme_dev* %93, i32 0, i32 1, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %154

102:                                              ; preds = %86
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %8, align 4
  br label %154

107:                                              ; preds = %102
  %108 = load i8*, i8** %12, align 8
  %109 = bitcast i8* %108 to %struct.nvme_id_ctrl*
  store %struct.nvme_id_ctrl* %109, %struct.nvme_id_ctrl** %13, align 8
  %110 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %13, align 8
  %111 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %24, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @EXTENDED_INQUIRY_DATA_PAGE_LENGTH, align 4
  %115 = call i32 @memset(i32* %113, i32 0, i32 %114)
  %116 = load i32, i32* @INQ_EXTENDED_INQUIRY_DATA_PAGE, align 4
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32 0, i32* %120, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 60, i32* %122, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %17, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* %19, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %20, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %21, align 4
  %131 = or i32 %129, %130
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %23, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 5
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %24, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 6
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 7
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 8
  store i32 0, i32* %144, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 9
  store i32 0, i32* %146, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @EXTENDED_INQUIRY_DATA_PAGE_LENGTH, align 4
  %149 = call i32 @min(i32 %147, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %5, align 8
  %151 = load i32*, i32** %7, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %150, i32* %151, i32 %152)
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %107, %105, %101, %67, %63
  %155 = load %struct.nvme_dev*, %struct.nvme_dev** %10, align 8
  %156 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i8*, i8** %12, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @dma_free_coherent(i32* %158, i32 16, i8* %159, i32 %160)
  br label %162

162:                                              ; preds = %154, %48
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @kfree(i32* %163)
  br label %165

165:                                              ; preds = %162, %36
  %166 = load i32, i32* %8, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #2

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #2

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
