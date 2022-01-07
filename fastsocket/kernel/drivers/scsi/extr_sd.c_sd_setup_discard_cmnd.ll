; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_setup_discard_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_setup_discard_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i32*, i32, i32, i32*, i32, i32 }
%struct.scsi_disk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@SD_TIMEOUT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@BLKPREP_DEFER = common dso_local global i32 0, align 4
@UNMAP = common dso_local global i32 0, align 4
@WRITE_SAME_16 = common dso_local global i32 0, align 4
@WRITE_SAME = common dso_local global i8 0, align 1
@BLKPREP_KILL = common dso_local global i32 0, align 4
@BLKPREP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.request*)* @sd_setup_discard_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setup_discard_cmnd(%struct.scsi_device* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.scsi_disk* @scsi_disk(i32 %16)
  store %struct.scsi_disk* %17, %struct.scsi_disk** %6, align 8
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = call i32 @blk_rq_pos(%struct.request* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.request*, %struct.request** %5, align 8
  %21 = call i32 @blk_rq_sectors(%struct.request* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = call i32 @blk_rq_bytes(%struct.request* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ilog2(i32 %26)
  %28 = sub nsw i32 %27, 9
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ilog2(i32 %33)
  %35 = sub nsw i32 %34, 9
  %36 = load i32, i32* %8, align 4
  %37 = lshr i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @SD_TIMEOUT, align 4
  %39 = load %struct.request*, %struct.request** %5, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.request*, %struct.request** %5, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.request*, %struct.request** %5, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @memset(i32* %43, i32 0, i32 %46)
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = load i32, i32* @__GFP_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.page* @alloc_page(i32 %50)
  store %struct.page* %51, %struct.page** %13, align 8
  %52 = load %struct.page*, %struct.page** %13, align 8
  %53 = icmp ne %struct.page* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %2
  %55 = load i32, i32* @BLKPREP_DEFER, align 4
  store i32 %55, i32* %3, align 4
  br label %186

56:                                               ; preds = %2
  %57 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  switch i32 %59, label %157 [
    i32 131, label %60
    i32 129, label %88
    i32 130, label %119
    i32 128, label %119
  ]

60:                                               ; preds = %56
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = call i8* @page_address(%struct.page* %61)
  store i8* %62, i8** %12, align 8
  %63 = load %struct.request*, %struct.request** %5, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 1
  store i32 10, i32* %64, align 8
  %65 = load i32, i32* @UNMAP, align 4
  %66 = load %struct.request*, %struct.request** %5, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.request*, %struct.request** %5, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  store i32 24, i32* %73, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = call i32 @put_unaligned_be16(i32 22, i8* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = call i32 @put_unaligned_be16(i32 16, i8* %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 8
  %83 = call i32 @put_unaligned_be64(i32 %80, i8* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 16
  %87 = call i32 @put_unaligned_be32(i32 %84, i8* %86)
  store i32 24, i32* %10, align 4
  br label %159

88:                                               ; preds = %56
  %89 = load %struct.request*, %struct.request** %5, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 1
  store i32 16, i32* %90, align 8
  %91 = load i32, i32* @WRITE_SAME_16, align 4
  %92 = load %struct.request*, %struct.request** %5, align 8
  %93 = getelementptr inbounds %struct.request, %struct.request* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.request*, %struct.request** %5, align 8
  %97 = getelementptr inbounds %struct.request, %struct.request* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 8, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.request*, %struct.request** %5, align 8
  %102 = getelementptr inbounds %struct.request, %struct.request* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = bitcast i32* %104 to i8*
  %106 = call i32 @put_unaligned_be64(i32 %100, i8* %105)
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.request*, %struct.request** %5, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 10
  %112 = bitcast i32* %111 to i8*
  %113 = call i32 @put_unaligned_be32(i32 %107, i8* %112)
  %114 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  br label %159

119:                                              ; preds = %56, %56
  %120 = load %struct.request*, %struct.request** %5, align 8
  %121 = getelementptr inbounds %struct.request, %struct.request* %120, i32 0, i32 1
  store i32 10, i32* %121, align 8
  %122 = load i8, i8* @WRITE_SAME, align 1
  %123 = sext i8 %122 to i32
  %124 = load %struct.request*, %struct.request** %5, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %123, i32* %127, align 4
  %128 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %129 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 130
  br i1 %131, label %132, label %137

132:                                              ; preds = %119
  %133 = load %struct.request*, %struct.request** %5, align 8
  %134 = getelementptr inbounds %struct.request, %struct.request* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 8, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %119
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.request*, %struct.request** %5, align 8
  %140 = getelementptr inbounds %struct.request, %struct.request* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = bitcast i32* %142 to i8*
  %144 = call i32 @put_unaligned_be32(i32 %138, i8* %143)
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.request*, %struct.request** %5, align 8
  %147 = getelementptr inbounds %struct.request, %struct.request* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 7
  %150 = bitcast i32* %149 to i8*
  %151 = call i32 @put_unaligned_be16(i32 %145, i8* %150)
  %152 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %153 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %152, i32 0, i32 1
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %10, align 4
  br label %159

157:                                              ; preds = %56
  %158 = load i32, i32* @BLKPREP_KILL, align 4
  store i32 %158, i32* %11, align 4
  br label %175

159:                                              ; preds = %137, %88, %60
  %160 = load %struct.request*, %struct.request** %5, align 8
  %161 = load %struct.page*, %struct.page** %13, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @blk_add_request_payload(%struct.request* %160, %struct.page* %161, i32 %162)
  %164 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %165 = load %struct.request*, %struct.request** %5, align 8
  %166 = call i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device* %164, %struct.request* %165)
  store i32 %166, i32* %11, align 4
  %167 = load %struct.page*, %struct.page** %13, align 8
  %168 = call i8* @page_address(%struct.page* %167)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.request*, %struct.request** %5, align 8
  %171 = getelementptr inbounds %struct.request, %struct.request* %170, i32 0, i32 3
  store i32* %169, i32** %171, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.request*, %struct.request** %5, align 8
  %174 = getelementptr inbounds %struct.request, %struct.request* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %159, %157
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* @BLKPREP_OK, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.page*, %struct.page** %13, align 8
  %181 = call i32 @__free_page(%struct.page* %180)
  %182 = load %struct.request*, %struct.request** %5, align 8
  %183 = getelementptr inbounds %struct.request, %struct.request* %182, i32 0, i32 3
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %179, %175
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %54
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.scsi_disk* @scsi_disk(i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @put_unaligned_be16(i32, i8*) #1

declare dso_local i32 @put_unaligned_be64(i32, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @blk_add_request_payload(%struct.request*, %struct.page*, i32) #1

declare dso_local i32 @scsi_setup_blk_pc_cmnd(%struct.scsi_device*, %struct.request*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
