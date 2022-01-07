; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_pgtable_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-core.c_saa7134_pgtable_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.saa7134_pgtable = type { i32* }
%struct.scatterlist = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_pgtable_build(%struct.pci_dev* %0, %struct.saa7134_pgtable* %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.saa7134_pgtable*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.saa7134_pgtable* %1, %struct.saa7134_pgtable** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.saa7134_pgtable*, %struct.saa7134_pgtable** %7, align 8
  %15 = icmp eq %struct.saa7134_pgtable* null, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.saa7134_pgtable*, %struct.saa7134_pgtable** %7, align 8
  %18 = getelementptr inbounds %struct.saa7134_pgtable, %struct.saa7134_pgtable* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* null, %19
  br label %21

21:                                               ; preds = %16, %5
  %22 = phi i1 [ true, %5 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.saa7134_pgtable*, %struct.saa7134_pgtable** %7, align 8
  %26 = getelementptr inbounds %struct.saa7134_pgtable, %struct.saa7134_pgtable* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32* %30, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %58, %21
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %13, align 4
  %38 = mul i32 %37, 4096
  %39 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %45 = call i64 @sg_dma_address(%struct.scatterlist* %44)
  %46 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i32 @cpu_to_le32(i64 %49)
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %13, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  br label %36

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %12, align 4
  %61 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %62 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %61, i32 1
  store %struct.scatterlist* %62, %struct.scatterlist** %8, align 8
  br label %31

63:                                               ; preds = %31
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
