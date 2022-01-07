; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_allocate_sg_chain_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_allocate_sg_chain_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot get memory for s/g chains.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (%struct.TYPE_5__*, i32, i32)* @cciss_allocate_sg_chain_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @cciss_allocate_sg_chain_blocks(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32** null, i32*** %4, align 8
  br label %63

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to i32**
  store i32** %20, i32*** %9, align 8
  %21 = load i32**, i32*** %9, align 8
  %22 = icmp ne i32** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  store i32** null, i32*** %4, align 8
  br label %63

24:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load i32**, i32*** %9, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* %36, i32** %40, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %29
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32**, i32*** %9, align 8
  store i32** %58, i32*** %4, align 8
  br label %63

59:                                               ; preds = %47
  %60 = load i32**, i32*** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @cciss_free_sg_chain_blocks(i32** %60, i32 %61)
  store i32** null, i32*** %4, align 8
  br label %63

63:                                               ; preds = %59, %57, %23, %12
  %64 = load i32**, i32*** %4, align 8
  ret i32** %64
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cciss_free_sg_chain_blocks(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
