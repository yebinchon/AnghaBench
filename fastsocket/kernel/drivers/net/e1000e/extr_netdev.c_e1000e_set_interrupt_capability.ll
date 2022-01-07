; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000e_set_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_netdev.c_e1000e_set_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@FLAG_HAS_MSIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\0A\00", align 1
@FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Failed to initialize MSI interrupts.  Falling back to legacy interrupts.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_set_interrupt_capability(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %5 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %88 [
    i32 128, label %8
    i32 129, label %70
    i32 130, label %87
  ]

8:                                                ; preds = %1
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FLAG_HAS_MSIX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 2
  store i32 3, i32* %17, align 8
  %18 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_3__* @kcalloc(i32 %20, i32 4, i32 %21)
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 4
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %24, align 8
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %63

29:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 4
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %30

48:                                               ; preds = %30
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pci_enable_msix(i32 %51, %struct.TYPE_3__* %54, i32 %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %91

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %15
  %64 = call i32 @e_err(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %66 = call i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter* %65)
  br label %67

67:                                               ; preds = %63, %8
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 0
  store i32 129, i32* %69, align 8
  br label %70

70:                                               ; preds = %1, %67
  %71 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pci_enable_msi(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @FLAG_MSI_ENABLED, align 4
  %78 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %83, i32 0, i32 0
  store i32 130, i32* %84, align 8
  %85 = call i32 @e_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %1, %86
  br label %88

88:                                               ; preds = %1, %87
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %61
  ret void
}

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000e_reset_interrupt_capability(%struct.e1000_adapter*) #1

declare dso_local i32 @pci_enable_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
