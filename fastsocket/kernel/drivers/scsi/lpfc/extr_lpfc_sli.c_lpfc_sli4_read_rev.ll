; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_read_rev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_read_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.lpfc_mqe }
%struct.lpfc_mqe = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@lpfc_mbx_rd_rev_vpd = common dso_local global i32 0, align 4
@lpfc_mbx_rd_rev_avail_len = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.TYPE_12__*, i32*, i64*)* @lpfc_sli4_read_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_read_rev(%struct.lpfc_hba* %0, %struct.TYPE_12__* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_mqe*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lpfc_dmabuf* @kzalloc(i32 8, i32 %14)
  store %struct.lpfc_dmabuf* %15, %struct.lpfc_dmabuf** %12, align 8
  %16 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %17 = icmp ne %struct.lpfc_dmabuf* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %150

21:                                               ; preds = %4
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %30 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @dma_alloc_coherent(i32* %27, i64 %28, i32* %30, i32 %31)
  %33 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %34 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %36 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %21
  %40 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %41 = call i32 @kfree(%struct.lpfc_dmabuf* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %150

44:                                               ; preds = %21
  %45 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %46 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @memset(i32 %47, i32 0, i64 %48)
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %52 = call i32 @lpfc_read_rev(%struct.lpfc_hba* %50, %struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store %struct.lpfc_mqe* %55, %struct.lpfc_mqe** %13, align 8
  %56 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %57 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @putPaddrHigh(i32 %58)
  %60 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %61 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 4
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %65 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @putPaddrLow(i32 %66)
  %68 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %69 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %73 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 65535
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @lpfc_mbx_rd_rev_vpd, align 4
  %79 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %80 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call i32 @bf_set(i32 %78, %struct.TYPE_13__* %81, i64 1)
  %83 = load i32, i32* @lpfc_mbx_rd_rev_avail_len, align 4
  %84 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %85 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @bf_set(i32 %83, %struct.TYPE_13__* %86, i64 %87)
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = load i32, i32* @MBX_POLL, align 4
  %92 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %89, %struct.TYPE_12__* %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %44
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %97 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %102 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dma_free_coherent(i32* %99, i64 %100, i32 %103, i32 %106)
  %108 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %109 = call i32 @kfree(%struct.lpfc_dmabuf* %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %150

112:                                              ; preds = %44
  %113 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %114 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %13, align 8
  %123 = getelementptr inbounds %struct.lpfc_mqe, %struct.lpfc_mqe* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** %9, align 8
  store i64 %126, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %112
  %129 = load i32*, i32** %8, align 8
  %130 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %131 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i64*, i64** %9, align 8
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @memcpy(i32* %129, i32 %132, i64 %134)
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %142 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %145 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dma_free_coherent(i32* %139, i64 %140, i32 %143, i32 %146)
  %148 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %149 = call i32 @kfree(%struct.lpfc_dmabuf* %148)
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %128, %95, %39, %18
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @lpfc_read_rev(%struct.lpfc_hba*, %struct.TYPE_12__*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @bf_set(i32, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
