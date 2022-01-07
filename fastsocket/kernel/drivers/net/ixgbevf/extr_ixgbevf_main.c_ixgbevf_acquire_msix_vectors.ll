; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_acquire_msix_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_acquire_msix_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIN_MSIX_COUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate MSI-X interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbevf_adapter*, i32)* @ixgbevf_acquire_msix_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_acquire_msix_vectors(%struct.ixgbevf_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @MIN_MSIX_COUNT, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @pci_enable_msix(%struct.TYPE_2__* %15, i32* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %12
  br label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27
  br label %8

30:                                               ; preds = %26, %8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kfree(i32* %48)
  %50 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %56

52:                                               ; preds = %37
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %40
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @pci_enable_msix(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
