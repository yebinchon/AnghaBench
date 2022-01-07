; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_fill_sg_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_fill_sg_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_user_dma = type { i32, %struct.TYPE_2__*, %struct.scatterlist* }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_udma_fill_sg_array(%struct.ivtv_user_dma* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ivtv_user_dma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.ivtv_user_dma* %0, %struct.ivtv_user_dma** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %12 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %11, i32 0, i32 2
  %13 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %13, %struct.scatterlist** %10, align 8
  br label %14

14:                                               ; preds = %63, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %17 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %22 = call i64 @sg_dma_len(%struct.scatterlist* %21)
  %23 = call i8* @cpu_to_le32(i64 %22)
  %24 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %25 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i8* %23, i8** %30, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %32 = call i64 @sg_dma_address(%struct.scatterlist* %31)
  %33 = call i8* @cpu_to_le32(i64 %32)
  %34 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %35 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i8* %33, i8** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i8* @cpu_to_le32(i64 %41)
  %43 = load %struct.ivtv_user_dma*, %struct.ivtv_user_dma** %5, align 8
  %44 = getelementptr inbounds %struct.ivtv_user_dma, %struct.ivtv_user_dma* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i8* %42, i8** %49, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %51 = call i64 @sg_dma_len(%struct.scatterlist* %50)
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %55 = call i64 @sg_dma_len(%struct.scatterlist* %54)
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %20
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %60, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %67 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %66, i32 1
  store %struct.scatterlist* %67, %struct.scatterlist** %10, align 8
  br label %14

68:                                               ; preds = %14
  ret void
}

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
