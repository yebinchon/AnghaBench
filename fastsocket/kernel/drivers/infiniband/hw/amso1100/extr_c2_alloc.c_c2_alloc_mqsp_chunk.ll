; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_alloc.c_c2_alloc_mqsp_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_alloc.c_c2_alloc_mqsp_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sp_chunk = type { i32*, i64, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mapping = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2_dev*, i32, %struct.sp_chunk**)* @c2_alloc_mqsp_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c2_alloc_mqsp_chunk(%struct.c2_dev* %0, i32 %1, %struct.sp_chunk** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.c2_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sp_chunk**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sp_chunk*, align 8
  %10 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sp_chunk** %2, %struct.sp_chunk*** %7, align 8
  %11 = load %struct.c2_dev*, %struct.c2_dev** %5, align 8
  %12 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.sp_chunk* @dma_alloc_coherent(i32* %14, i32 %15, i32* %10, i32 %16)
  store %struct.sp_chunk* %17, %struct.sp_chunk** %9, align 8
  %18 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %19 = icmp eq %struct.sp_chunk* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %26 = getelementptr inbounds %struct.sp_chunk, %struct.sp_chunk* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %28 = load i32, i32* @mapping, align 4
  %29 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %30 = getelementptr inbounds %struct.sp_chunk, %struct.sp_chunk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pci_unmap_addr_set(%struct.sp_chunk* %27, i32 %28, i32 %31)
  %33 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %34 = getelementptr inbounds %struct.sp_chunk, %struct.sp_chunk* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %36 = getelementptr inbounds %struct.sp_chunk, %struct.sp_chunk* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %23
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 32
  %43 = sub i64 %42, 4
  %44 = udiv i64 %43, 4
  %45 = sub i64 %44, 1
  %46 = icmp ult i64 %39, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %37
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %51 = getelementptr inbounds %struct.sp_chunk, %struct.sp_chunk* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %61 = getelementptr inbounds %struct.sp_chunk, %struct.sp_chunk* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 65535, i32* %65, align 4
  %66 = load %struct.sp_chunk*, %struct.sp_chunk** %9, align 8
  %67 = load %struct.sp_chunk**, %struct.sp_chunk*** %7, align 8
  store %struct.sp_chunk* %66, %struct.sp_chunk** %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %59, %20
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.sp_chunk* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pci_unmap_addr_set(%struct.sp_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
