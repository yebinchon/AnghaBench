; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_device_id_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-scsi.c_nvme_trans_device_id_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, %struct.nvme_dev* }
%struct.nvme_dev = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sg_io_hdr = type { i32 }
%struct.nvme_id_ctrl = type { i32* }

@SNTI_TRANSLATION_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STANDARD_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@INQ_DEVICE_IDENTIFICATION_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_ns*, %struct.sg_io_hdr*, i32*, i32)* @nvme_trans_device_id_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_trans_device_id_page(%struct.nvme_ns* %0, %struct.sg_io_hdr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nvme_ns*, align 8
  %6 = alloca %struct.sg_io_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nvme_id_ctrl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvme_ns* %0, %struct.nvme_ns** %5, align 8
  store %struct.sg_io_hdr* %1, %struct.sg_io_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %19 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %18, i32 0, i32 1
  %20 = load %struct.nvme_dev*, %struct.nvme_dev** %19, align 8
  store %struct.nvme_dev* %20, %struct.nvme_dev** %9, align 8
  %21 = load i32, i32* @SNTI_TRANSLATION_SUCCESS, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.nvme_ns*, %struct.nvme_ns** %5, align 8
  %23 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpu_to_be32(i32 %24)
  store i32 %25, i32* %17, align 4
  %26 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %27 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @dma_alloc_coherent(i32* %29, i32 4, i32* %10, i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  br label %193

37:                                               ; preds = %4
  %38 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @nvme_identify(%struct.nvme_dev* %38, i32 0, i32 1, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @nvme_trans_status_code(%struct.sg_io_hdr* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %185

47:                                               ; preds = %37
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %13, align 4
  br label %185

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  %54 = bitcast i8* %53 to %struct.nvme_id_ctrl*
  store %struct.nvme_id_ctrl* %54, %struct.nvme_id_ctrl** %12, align 8
  %55 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %12, align 8
  %56 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %60, i32* %61, align 16
  %62 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %12, align 8
  %63 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %12, align 8
  %69 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 4
  %74 = or i32 %67, %73
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %12, align 8
  %77 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 4
  %82 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %12, align 8
  %83 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 4
  %88 = or i32 %81, %87
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.nvme_id_ctrl*, %struct.nvme_id_ctrl** %12, align 8
  %91 = getelementptr inbounds %struct.nvme_id_ctrl, %struct.nvme_id_ctrl* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 4
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %99 = call i32 @memset(i32* %97, i32 0, i32 %98)
  %100 = load i32, i32* @INQ_DEVICE_IDENTIFICATION_PAGE, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  store i32 20, i32* %104, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32 1, i32* %106, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 5
  store i32 3, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  store i32 0, i32* %110, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  store i32 16, i32* %112, align 4
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 96, %114
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 8
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 9
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 10
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %131 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 65280
  %136 = ashr i32 %135, 8
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 12
  store i32 %136, i32* %138, align 4
  %139 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %140 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 255
  %145 = load i32*, i32** %7, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 13
  store i32 %144, i32* %146, align 4
  %147 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %148 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 14
  store i32 %151, i32* %153, align 4
  %154 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %155 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 15
  store i32 %158, i32* %160, align 4
  %161 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %162 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 16
  store i32 %165, i32* %167, align 4
  %168 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %169 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 17
  store i32 %172, i32* %174, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 18
  %177 = call i32 @memcpy(i32* %176, i32* %17, i32 4)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @STANDARD_INQUIRY_LENGTH, align 4
  %180 = call i32 @min(i32 %178, i32 %179)
  store i32 %180, i32* %16, align 4
  %181 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr* %181, i32* %182, i32 %183)
  store i32 %184, i32* %13, align 4
  br label %185

185:                                              ; preds = %52, %50, %46
  %186 = load %struct.nvme_dev*, %struct.nvme_dev** %9, align 8
  %187 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %186, i32 0, i32 2
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i8*, i8** %11, align 8
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @dma_free_coherent(i32* %189, i32 4, i8* %190, i32 %191)
  br label %193

193:                                              ; preds = %185, %34
  %194 = load i32, i32* %13, align 4
  ret i32 %194
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @nvme_identify(%struct.nvme_dev*, i32, i32, i32) #1

declare dso_local i32 @nvme_trans_status_code(%struct.sg_io_hdr*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @nvme_trans_copy_to_user(%struct.sg_io_hdr*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
