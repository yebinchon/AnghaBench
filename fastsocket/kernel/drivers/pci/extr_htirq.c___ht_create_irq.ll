; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_htirq.c___ht_create_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_htirq.c___ht_create_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ht_irq_cfg = type { i32, i32, %struct.TYPE_2__, i32*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32, i32 }

@HT_CAPTYPE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ht_irq_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ht_create_irq(%struct.pci_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ht_irq_cfg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load i32, i32* @HT_CAPTYPE_IRQ, align 4
  %17 = call i32 @pci_find_ht_capability(%struct.pci_dev* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %101

23:                                               ; preds = %3
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @ht_irq_lock, i64 %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %27, 2
  %29 = call i32 @pci_write_config_byte(%struct.pci_dev* %26, i32 %28, i32 1)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 4
  %33 = call i32 @pci_read_config_dword(%struct.pci_dev* %30, i32 %32, i32* %10)
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @ht_irq_lock, i64 %34)
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %101

45:                                               ; preds = %23
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.ht_irq_cfg* @kmalloc(i32 32, i32 %46)
  store %struct.ht_irq_cfg* %47, %struct.ht_irq_cfg** %8, align 8
  %48 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %49 = icmp ne %struct.ht_irq_cfg* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %101

53:                                               ; preds = %45
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %56 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %55, i32 0, i32 4
  store %struct.pci_dev* %54, %struct.pci_dev** %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %59 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %62 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 16, %64
  %66 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %67 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %69 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  %71 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %72 = getelementptr inbounds %struct.ht_irq_cfg, %struct.ht_irq_cfg* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 -1, i32* %73, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @dev_to_node(i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @create_irq_nr(i32 0, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %53
  %82 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %83 = call i32 @kfree(%struct.ht_irq_cfg* %82)
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %101

86:                                               ; preds = %53
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.ht_irq_cfg*, %struct.ht_irq_cfg** %8, align 8
  %89 = call i32 @set_irq_data(i32 %87, %struct.ht_irq_cfg* %88)
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i64 @arch_setup_ht_irq(i32 %90, %struct.pci_dev* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @ht_destroy_irq(i32 %95)
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %101

99:                                               ; preds = %86
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %94, %81, %50, %42, %20
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @pci_find_ht_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.ht_irq_cfg* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @create_irq_nr(i32, i32) #1

declare dso_local i32 @kfree(%struct.ht_irq_cfg*) #1

declare dso_local i32 @set_irq_data(i32, %struct.ht_irq_cfg*) #1

declare dso_local i64 @arch_setup_ht_irq(i32, %struct.pci_dev*) #1

declare dso_local i32 @ht_destroy_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
