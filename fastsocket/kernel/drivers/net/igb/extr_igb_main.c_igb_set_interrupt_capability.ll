; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_interrupt_capability.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_set_interrupt_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i64, i32*, %struct.e1000_hw, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.TYPE_7__ = type { i32 }

@IGB_FLAG_QUEUE_PAIRS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IGB_FLAG_HAS_MSI = common dso_local global i32 0, align 4
@E1000_IOVCTL = common dso_local global i32 0, align 4
@E1000_IOVCTL_REUSE_VFQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, i32)* @igb_set_interrupt_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_interrupt_capability(%struct.igb_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %94

11:                                               ; preds = %2
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  br label %30

24:                                               ; preds = %11
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %21
  %31 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.TYPE_7__* @kcalloc(i32 %52, i32 4, i32 %53)
  %55 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %55, i32 0, i32 9
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %56, align 8
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 9
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %46
  br label %94

62:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %69, i32 0, i32 9
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %80, i32 0, i32 5
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %83, i32 0, i32 9
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @pci_enable_msix(%struct.TYPE_6__* %82, %struct.TYPE_7__* %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %121

91:                                               ; preds = %79
  %92 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %93 = call i32 @igb_reset_interrupt_capability(%struct.igb_adapter* %92)
  br label %94

94:                                               ; preds = %91, %61, %10
  %95 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @IGB_FLAG_QUEUE_PAIRS, align 4
  %100 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %108, i32 0, i32 4
  store i32 1, i32* %109, align 8
  %110 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %110, i32 0, i32 5
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = call i32 @pci_enable_msi(%struct.TYPE_6__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %94
  %116 = load i32, i32* @IGB_FLAG_HAS_MSI, align 4
  %117 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %90, %115, %94
  ret void
}

declare dso_local %struct.TYPE_7__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix(%struct.TYPE_6__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @igb_reset_interrupt_capability(%struct.igb_adapter*) #1

declare dso_local i32 @pci_enable_msi(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
