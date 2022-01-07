; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_enable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@qlge_irq_type = common dso_local global i64 0, align 8
@MSIX_IRQ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MSI_IRQ = common dso_local global i64 0, align 8
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MSI-X Enable failed, trying MSI.\0A\00", align 1
@QL_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"MSI-X Enabled, got %d vectors.\0A\00", align 1
@QL_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Running with MSI interrupts.\0A\00", align 1
@LEG_IRQ = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Running with legacy interrupts.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*)* @ql_enable_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_enable_msix(%struct.ql_adapter* %0) #0 {
  %2 = alloca %struct.ql_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %2, align 8
  %5 = load i64, i64* @qlge_irq_type, align 8
  %6 = load i64, i64* @MSIX_IRQ, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %101

8:                                                ; preds = %1
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.TYPE_4__* @kcalloc(i32 %11, i32 4, i32 %12)
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 4
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = load i64, i64* @MSI_IRQ, align 8
  store i64 %21, i64* @qlge_irq_type, align 8
  br label %102

22:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %60, %41
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pci_enable_msix(i32 %45, %struct.TYPE_4__* %48, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %42, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @kfree(%struct.TYPE_4__* %69)
  %71 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %72 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %71, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %74 = load i32, i32* @ifup, align 4
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netif_warn(%struct.ql_adapter* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i64, i64* @MSI_IRQ, align 8
  store i64 %81, i64* @qlge_irq_type, align 8
  br label %100

82:                                               ; preds = %63
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32, i32* @QL_MSIX_ENABLED, align 4
  %87 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %87, i32 0, i32 2
  %89 = call i32 @set_bit(i32 %86, i32* %88)
  %90 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %91 = load i32, i32* @ifup, align 4
  %92 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %96 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_info(%struct.ql_adapter* %90, i32 %91, i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %135

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %99, %66
  br label %101

101:                                              ; preds = %100, %1
  br label %102

102:                                              ; preds = %101, %20
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load i64, i64* @qlge_irq_type, align 8
  %106 = load i64, i64* @MSI_IRQ, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %102
  %109 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @pci_enable_msi(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %108
  %115 = load i32, i32* @QL_MSI_ENABLED, align 4
  %116 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %116, i32 0, i32 2
  %118 = call i32 @set_bit(i32 %115, i32* %117)
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %120 = load i32, i32* @ifup, align 4
  %121 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %122 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.ql_adapter*, i32, i32, i8*, ...) @netif_info(%struct.ql_adapter* %119, i32 %120, i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %135

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %102
  %127 = load i64, i64* @LEG_IRQ, align 8
  store i64 %127, i64* @qlge_irq_type, align 8
  %128 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %129 = load i32, i32* @ifup, align 4
  %130 = load i32, i32* @KERN_DEBUG, align 4
  %131 = load %struct.ql_adapter*, %struct.ql_adapter** %2, align 8
  %132 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @netif_printk(%struct.ql_adapter* %128, i32 %129, i32 %130, i32 %133, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %126, %114, %85
  ret void
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pci_enable_msix(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @netif_warn(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_enable_msi(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
