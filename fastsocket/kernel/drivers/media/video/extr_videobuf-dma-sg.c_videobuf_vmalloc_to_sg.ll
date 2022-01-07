; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_vmalloc_to_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-dma-sg.c_videobuf_vmalloc_to_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (i8*, i32)* @videobuf_vmalloc_to_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @videobuf_vmalloc_to_sg(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call %struct.scatterlist* @vzalloc(i32 %12)
  store %struct.scatterlist* %13, %struct.scatterlist** %6, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %15 = icmp eq %struct.scatterlist* null, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sg_init_table(%struct.scatterlist* %18, i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %42, %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct.page* @vmalloc_to_page(i8* %26)
  store %struct.page* %27, %struct.page** %7, align 8
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = icmp eq %struct.page* null, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %51

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i32 @PageHighMem(%struct.page* %32)
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %35, i64 %37
  %39 = load %struct.page*, %struct.page** %7, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @sg_set_page(%struct.scatterlist* %38, %struct.page* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i8*, i8** %4, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %4, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %50, %struct.scatterlist** %3, align 8
  br label %54

51:                                               ; preds = %30
  %52 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %53 = call i32 @vfree(%struct.scatterlist* %52)
  store %struct.scatterlist* null, %struct.scatterlist** %3, align 8
  br label %54

54:                                               ; preds = %51, %49, %16
  %55 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  ret %struct.scatterlist* %55
}

declare dso_local %struct.scatterlist* @vzalloc(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @vfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
