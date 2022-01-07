; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_chunk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_fore200e.c_fore200e_chunk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fore200e*, i32*, i32, i32)* }
%struct.chunk = type { i32, i32, i32, i32*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fore200e*, %struct.chunk*, i32, i32, i32)* @fore200e_chunk_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_chunk_alloc(%struct.fore200e* %0, %struct.chunk* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fore200e*, align 8
  %8 = alloca %struct.chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.fore200e* %0, %struct.fore200e** %7, align 8
  store %struct.chunk* %1, %struct.chunk** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %10, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ule i64 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.chunk*, %struct.chunk** %8, align 8
  %22 = getelementptr inbounds %struct.chunk, %struct.chunk* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.chunk*, %struct.chunk** %8, align 8
  %25 = getelementptr inbounds %struct.chunk, %struct.chunk* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.chunk*, %struct.chunk** %8, align 8
  %28 = getelementptr inbounds %struct.chunk, %struct.chunk* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.chunk*, %struct.chunk** %8, align 8
  %30 = getelementptr inbounds %struct.chunk, %struct.chunk* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load i32, i32* @GFP_DMA, align 4
  %34 = or i32 %32, %33
  %35 = call i32* @kzalloc(i32 %31, i32 %34)
  %36 = load %struct.chunk*, %struct.chunk** %8, align 8
  %37 = getelementptr inbounds %struct.chunk, %struct.chunk* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load %struct.chunk*, %struct.chunk** %8, align 8
  %39 = getelementptr inbounds %struct.chunk, %struct.chunk* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %17
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %78

45:                                               ; preds = %17
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.chunk*, %struct.chunk** %8, align 8
  %50 = getelementptr inbounds %struct.chunk, %struct.chunk* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @FORE200E_ALIGN(i32* %51, i32 %52)
  store i64 %53, i64* %12, align 8
  br label %54

54:                                               ; preds = %48, %45
  %55 = load %struct.chunk*, %struct.chunk** %8, align 8
  %56 = getelementptr inbounds %struct.chunk, %struct.chunk* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load %struct.chunk*, %struct.chunk** %8, align 8
  %61 = getelementptr inbounds %struct.chunk, %struct.chunk* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.fore200e*, %struct.fore200e** %7, align 8
  %63 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32 (%struct.fore200e*, i32*, i32, i32)*, i32 (%struct.fore200e*, i32*, i32, i32)** %65, align 8
  %67 = load %struct.fore200e*, %struct.fore200e** %7, align 8
  %68 = load %struct.chunk*, %struct.chunk** %8, align 8
  %69 = getelementptr inbounds %struct.chunk, %struct.chunk* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.chunk*, %struct.chunk** %8, align 8
  %72 = getelementptr inbounds %struct.chunk, %struct.chunk* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 %66(%struct.fore200e* %67, i32* %70, i32 %73, i32 %74)
  %76 = load %struct.chunk*, %struct.chunk** %8, align 8
  %77 = getelementptr inbounds %struct.chunk, %struct.chunk* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %54, %42
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @FORE200E_ALIGN(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
