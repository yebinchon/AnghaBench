; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_ring_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_ring_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_ring = type { i32, %struct.skge_element*, %struct.skge_element*, %struct.skge_element* }
%struct.skge_element = type { %struct.skge_element*, %struct.skge_tx_desc* }
%struct.skge_tx_desc = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skge_ring*, i8*, i8*)* @skge_ring_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_ring_alloc(%struct.skge_ring* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.skge_ring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.skge_tx_desc*, align 8
  %9 = alloca %struct.skge_element*, align 8
  %10 = alloca i32, align 4
  store %struct.skge_ring* %0, %struct.skge_ring** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %12 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.skge_element* @kcalloc(i32 %13, i32 16, i32 %14)
  %16 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %17 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %16, i32 0, i32 1
  store %struct.skge_element* %15, %struct.skge_element** %17, align 8
  %18 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %19 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %18, i32 0, i32 1
  %20 = load %struct.skge_element*, %struct.skge_element** %19, align 8
  %21 = icmp ne %struct.skge_element* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %85

25:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %26 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %27 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %26, i32 0, i32 1
  %28 = load %struct.skge_element*, %struct.skge_element** %27, align 8
  store %struct.skge_element* %28, %struct.skge_element** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = bitcast i8* %29 to %struct.skge_tx_desc*
  store %struct.skge_tx_desc* %30, %struct.skge_tx_desc** %8, align 8
  br label %31

31:                                               ; preds = %70, %25
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %34 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %77

37:                                               ; preds = %31
  %38 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %8, align 8
  %39 = load %struct.skge_element*, %struct.skge_element** %9, align 8
  %40 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %39, i32 0, i32 1
  store %struct.skge_tx_desc* %38, %struct.skge_tx_desc** %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %43 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %49 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %48, i32 0, i32 1
  %50 = load %struct.skge_element*, %struct.skge_element** %49, align 8
  %51 = load %struct.skge_element*, %struct.skge_element** %9, align 8
  %52 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %51, i32 0, i32 0
  store %struct.skge_element* %50, %struct.skge_element** %52, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %8, align 8
  %55 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  br label %69

56:                                               ; preds = %37
  %57 = load %struct.skge_element*, %struct.skge_element** %9, align 8
  %58 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %57, i64 1
  %59 = load %struct.skge_element*, %struct.skge_element** %9, align 8
  %60 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %59, i32 0, i32 0
  store %struct.skge_element* %58, %struct.skge_element** %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = getelementptr i8, i8* %61, i64 %65
  %67 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %8, align 8
  %68 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %56, %47
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = load %struct.skge_element*, %struct.skge_element** %9, align 8
  %74 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %73, i32 1
  store %struct.skge_element* %74, %struct.skge_element** %9, align 8
  %75 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %8, align 8
  %76 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %75, i32 1
  store %struct.skge_tx_desc* %76, %struct.skge_tx_desc** %8, align 8
  br label %31

77:                                               ; preds = %31
  %78 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %79 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %78, i32 0, i32 1
  %80 = load %struct.skge_element*, %struct.skge_element** %79, align 8
  %81 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %82 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %81, i32 0, i32 2
  store %struct.skge_element* %80, %struct.skge_element** %82, align 8
  %83 = load %struct.skge_ring*, %struct.skge_ring** %5, align 8
  %84 = getelementptr inbounds %struct.skge_ring, %struct.skge_ring* %83, i32 0, i32 3
  store %struct.skge_element* %80, %struct.skge_element** %84, align 8
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.skge_element* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
