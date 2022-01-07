; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.h_vxge_os_dma_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-config.h_vxge_os_dma_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@VXGE_CACHE_LINE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.pci_dev*, i64, %struct.pci_dev**, %struct.pci_dev**)* @vxge_os_dma_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vxge_os_dma_malloc(%struct.pci_dev* %0, i64 %1, %struct.pci_dev** %2, %struct.pci_dev** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_dev**, align 8
  %9 = alloca %struct.pci_dev**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.pci_dev** %2, %struct.pci_dev*** %8, align 8
  store %struct.pci_dev** %3, %struct.pci_dev*** %9, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.pci_dev**, %struct.pci_dev*** %8, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %14, align 8
  %15 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %15, align 8
  %16 = call i64 (...) @in_interrupt()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = load i32, i32* @GFP_DMA, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %10, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @GFP_DMA, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i8* @kmalloc(i64 %28, i32 %29)
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  store i8* %34, i8** %5, align 8
  br label %63

35:                                               ; preds = %27
  %36 = load i8*, i8** %11, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i64, i64* @VXGE_CACHE_LINE_SIZE, align 8
  %39 = call i64 @VXGE_ALIGN(i64 %37, i64 %38)
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %53

43:                                               ; preds = %35
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @kfree(i8* %47)
  %49 = load i64, i64* @VXGE_CACHE_LINE_SIZE, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %7, align 8
  store i32 1, i32* %13, align 4
  br label %27

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.pci_dev**, %struct.pci_dev*** %9, align 8
  %56 = bitcast %struct.pci_dev** %55 to i64*
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %53, %33
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @VXGE_ALIGN(i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
