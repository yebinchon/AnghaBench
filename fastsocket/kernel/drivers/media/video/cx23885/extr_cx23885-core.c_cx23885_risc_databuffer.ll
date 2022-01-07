; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_risc_databuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-core.c_cx23885_risc_databuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.btcx_riscmem = type { i32, i32*, i32* }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@NO_SYNC_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.btcx_riscmem*, %struct.scatterlist*, i32, i32)* @cx23885_risc_databuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_risc_databuffer(%struct.pci_dev* %0, %struct.btcx_riscmem* %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.btcx_riscmem*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %7, align 8
  store %struct.btcx_riscmem* %1, %struct.btcx_riscmem** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = udiv i32 %17, %18
  %20 = add i32 1, %19
  %21 = load i32, i32* %11, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %12, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %26 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %27 = load i32, i32* %12, align 4
  %28 = mul nsw i32 %27, 12
  %29 = call i32 @btcx_riscmem_alloc(%struct.pci_dev* %25, %struct.btcx_riscmem* %26, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %66

34:                                               ; preds = %5
  %35 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %36 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %40 = load i32, i32* @NO_SYNC_LINE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32* @cx23885_risc_field(i32* %38, %struct.scatterlist* %39, i32 0, i32 %40, i32 %41, i32 0, i32 %42)
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %46 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  %47 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %48 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %51 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = ptrtoint i32* %49 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = add nsw i64 %56, 2
  %58 = mul i64 %57, 4
  %59 = load %struct.btcx_riscmem*, %struct.btcx_riscmem** %8, align 8
  %60 = getelementptr inbounds %struct.btcx_riscmem, %struct.btcx_riscmem* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %58, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %34, %32
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @btcx_riscmem_alloc(%struct.pci_dev*, %struct.btcx_riscmem*, i32) #1

declare dso_local i32* @cx23885_risc_field(i32*, %struct.scatterlist*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
