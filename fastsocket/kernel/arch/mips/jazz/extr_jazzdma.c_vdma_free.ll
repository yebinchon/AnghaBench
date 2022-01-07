; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/jazz/extr_jazzdma.c_vdma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@pgtbl = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [57 x i8] c"vdma_free: trying to free other's dma pages, laddr=%8lx\0A\00", align 1
@VDMA_PGTBL_ENTRIES = common dso_local global i32 0, align 4
@VDMA_PAGE_EMPTY = common dso_local global i64 0, align 8
@vdma_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"vdma_free: freed %ld pages starting from %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdma_free(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = lshr i64 %5, 12
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 -1, i32* %2, align 4
  br label %58

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @VDMA_PGTBL_ENTRIES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %25, %21
  %35 = phi i1 [ false, %21 ], [ %33, %25 ]
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = load i64, i64* @VDMA_PAGE_EMPTY, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pgtbl, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %37, i64* %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %21

45:                                               ; preds = %34
  %46 = load i32, i32* @vdma_debug, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %3, align 8
  %52 = lshr i64 %51, 12
  %53 = sub i64 %50, %52
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %3, align 8
  %56 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %55)
  br label %57

57:                                               ; preds = %48, %45
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
