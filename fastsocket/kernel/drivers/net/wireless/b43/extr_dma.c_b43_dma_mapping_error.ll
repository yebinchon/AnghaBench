; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_mapping_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_b43_dma_mapping_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_dmaring*, i32, i64, i32)* @b43_dma_mapping_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_dma_mapping_error(%struct.b43_dmaring* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_dmaring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %11 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dma_mapping_error(i32 %16, i32 %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %50

22:                                               ; preds = %4
  %23 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %24 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %43 [
    i32 130, label %26
    i32 129, label %34
    i32 128, label %42
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %28, %29
  %31 = icmp ugt i64 %30, 1073741824
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %44

33:                                               ; preds = %26
  br label %43

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = icmp ugt i64 %38, 4294967296
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %44

41:                                               ; preds = %34
  br label %43

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %22, %42, %41, %33
  store i32 0, i32* %5, align 4
  br label %50

44:                                               ; preds = %40, %32
  %45 = load %struct.b43_dmaring*, %struct.b43_dmaring** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @unmap_descbuffer(%struct.b43_dmaring* %45, i32 %46, i64 %47, i32 %48)
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %43, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43_dmaring*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
