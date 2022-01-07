; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i32, i32, i32, i32, %struct.lpfc_hba*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.lpfc_hba = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lpfc_dmabuf = type { i8*, i32, i32, i32 }

@SLI4_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_QUEUE_MIN_REPOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lpfc_queue* @lpfc_sli4_queue_alloc(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_queue*, align 8
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @SLI4_PAGE_SIZE, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %25, %3
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = add i64 48, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.lpfc_queue*
  store %struct.lpfc_queue* %35, %struct.lpfc_queue** %8, align 8
  %36 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %37 = icmp ne %struct.lpfc_queue* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %4, align 8
  br label %170

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ALIGN(i32 %42, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = sdiv i32 %44, %45
  %47 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %48 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %50 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %49, i32 0, i32 8
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %53 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %52, i32 0, i32 6
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %56 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %55, i32 0, i32 7
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %139, %39
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %61 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %142

64:                                               ; preds = %58
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kzalloc(i32 24, i32 %65)
  %67 = bitcast i8* %66 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %67, %struct.lpfc_dmabuf** %9, align 8
  %68 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %69 = icmp ne %struct.lpfc_dmabuf* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %167

71:                                               ; preds = %64
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %78 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %77, i32 0, i32 3
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i8* @dma_alloc_coherent(i32* %75, i32 %76, i32* %78, i32 %79)
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %82 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %84 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %71
  %88 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %89 = call i32 @kfree(%struct.lpfc_dmabuf* %88)
  br label %167

90:                                               ; preds = %71
  %91 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %92 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @memset(i8* %93, i32 0, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %98 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %100 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %99, i32 0, i32 2
  %101 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %102 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %101, i32 0, i32 6
  %103 = call i32 @list_add_tail(i32* %100, i32* %102)
  %104 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %105 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %12, align 8
  br label %107

107:                                              ; preds = %131, %90
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %115 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = sext i32 %113 to i64
  %118 = getelementptr i8, i8* %116, i64 %117
  %119 = icmp ult i8* %112, %118
  br label %120

120:                                              ; preds = %111, %107
  %121 = phi i1 [ false, %107 ], [ %119, %111 ]
  br i1 %121, label %122, label %138

122:                                              ; preds = %120
  %123 = load i8*, i8** %12, align 8
  %124 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %125 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %124, i32 0, i32 5
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i8* %123, i8** %130, align 8
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i8*, i8** %12, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr i8, i8* %135, i64 %136
  store i8* %137, i8** %12, align 8
  br label %107

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %58

142:                                              ; preds = %58
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %145 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %148 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = ashr i32 %149, 3
  %151 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %152 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %154 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LPFC_QUEUE_MIN_REPOST, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %142
  %159 = load i32, i32* @LPFC_QUEUE_MIN_REPOST, align 4
  %160 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %161 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %142
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %164 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %165 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %164, i32 0, i32 4
  store %struct.lpfc_hba* %163, %struct.lpfc_hba** %165, align 8
  %166 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  store %struct.lpfc_queue* %166, %struct.lpfc_queue** %4, align 8
  br label %170

167:                                              ; preds = %87, %70
  %168 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %169 = call i32 @lpfc_sli4_queue_free(%struct.lpfc_queue* %168)
  store %struct.lpfc_queue* null, %struct.lpfc_queue** %4, align 8
  br label %170

170:                                              ; preds = %167, %162, %38
  %171 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  ret %struct.lpfc_queue* %171
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_sli4_queue_free(%struct.lpfc_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
