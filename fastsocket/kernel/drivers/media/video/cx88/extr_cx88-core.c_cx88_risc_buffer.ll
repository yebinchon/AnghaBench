; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_risc_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_risc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_risc_buffer(%struct.pci_dev* %0, %struct.btcx_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.btcx_riscmem*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %10, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* @UNSET, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %8
  %26 = load i32, i32* %19, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %19, align 4
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* @UNSET, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %19, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add i32 %37, %38
  %40 = load i32, i32* %17, align 4
  %41 = mul i32 %39, %40
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = udiv i32 %41, %42
  %44 = add i32 1, %43
  %45 = load i32, i32* %17, align 4
  %46 = add i32 %44, %45
  %47 = mul i32 %36, %46
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %18, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %51 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %52 = load i32, i32* %18, align 4
  %53 = mul nsw i32 %52, 8
  %54 = call i32 @btcx_riscmem_alloc(%struct.pci_dev* %50, %struct.btcx_riscmem* %51, i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %35
  %57 = load i32, i32* %21, align 4
  store i32 %57, i32* %9, align 4
  br label %108

58:                                               ; preds = %35
  %59 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %60 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %20, align 8
  %62 = load i32, i32* @UNSET, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32*, i32** %20, align 8
  %67 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call i32* @cx88_risc_field(i32* %66, %struct.scatterlist* %67, i32 %68, i32 0, i32 %69, i32 %70, i32 %71, i32 0)
  store i32* %72, i32** %20, align 8
  br label %73

73:                                               ; preds = %65, %58
  %74 = load i32, i32* @UNSET, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32*, i32** %20, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32* @cx88_risc_field(i32* %78, %struct.scatterlist* %79, i32 %80, i32 512, i32 %81, i32 %82, i32 %83, i32 0)
  store i32* %84, i32** %20, align 8
  br label %85

85:                                               ; preds = %77, %73
  %86 = load i32*, i32** %20, align 8
  %87 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %88 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  %89 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %90 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %93 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = ptrtoint i32* %91 to i64
  %96 = ptrtoint i32* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = add nsw i64 %98, 2
  %100 = mul i64 %99, 4
  %101 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %11, align 8
  %102 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %100, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @BUG_ON(i32 %106)
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %85, %56
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local i32 @btcx_riscmem_alloc(%struct.pci_dev*, %struct.btcx_riscmem*, i32) #1

declare dso_local i32* @cx88_risc_field(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
