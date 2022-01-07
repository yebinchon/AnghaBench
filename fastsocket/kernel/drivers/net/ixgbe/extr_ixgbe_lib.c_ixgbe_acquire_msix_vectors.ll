; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_acquire_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_lib.c_ixgbe_acquire_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32*, i32, i32 }

@MIN_MSIX_COUNT = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate MSI-X interrupts\0A\00", align 1
@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*, i32)* @ixgbe_acquire_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_acquire_msix_vectors(%struct.ixgbe_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MIN_MSIX_COUNT, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pci_enable_msix(i32 %15, i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %32

24:                                               ; preds = %12
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %30
  br label %8

32:                                               ; preds = %23, %8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %38 = load i32, i32* @hw, align 4
  %39 = load i32, i32* @KERN_DEBUG, align 4
  %40 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netif_printk(%struct.ixgbe_adapter* %37, i32 %38, i32 %39, i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @kfree(i32* %52)
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  br label %74

56:                                               ; preds = %32
  %57 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i64, i64* @NON_Q_VECTORS, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @min(i32 %67, i32 %70)
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %56, %36
  ret void
}

declare dso_local i32 @pci_enable_msix(i32, i32*, i32) #1

declare dso_local i32 @netif_printk(%struct.ixgbe_adapter*, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
