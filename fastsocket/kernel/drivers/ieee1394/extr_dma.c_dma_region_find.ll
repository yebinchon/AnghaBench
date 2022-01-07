; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dma.c_dma_region_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_region = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_region*, i64, i32, i64*)* @dma_region_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_region_find(%struct.dma_region* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.dma_region*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.dma_region* %0, %struct.dma_region** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %42, %4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.dma_region*, %struct.dma_region** %5, align 8
  %16 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.dma_region*, %struct.dma_region** %5, align 8
  %22 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i64 @sg_dma_len(i32* %26)
  %28 = icmp ult i64 %20, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %10, align 8
  %31 = load i64*, i64** %8, align 8
  store i64 %30, i64* %31, align 8
  br label %45

32:                                               ; preds = %19
  %33 = load %struct.dma_region*, %struct.dma_region** %5, align 8
  %34 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i64 @sg_dma_len(i32* %38)
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %13

45:                                               ; preds = %29, %13
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.dma_region*, %struct.dma_region** %5, align 8
  %48 = getelementptr inbounds %struct.dma_region, %struct.dma_region* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i64 @sg_dma_len(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
