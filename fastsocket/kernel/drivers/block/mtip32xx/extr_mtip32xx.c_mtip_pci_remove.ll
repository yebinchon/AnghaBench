; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.driver_data = type { i32, i32, i32 }

@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@dev_lock = common dso_local global i32 0, align 4
@removing_list = common dso_local global i32 0, align 4
@MTIP_DDF_CLEANUP_BIT = common dso_local global i32 0, align 4
@MTIP_ABAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @mtip_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.driver_data* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.driver_data* %7, %struct.driver_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 1
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @dev_lock, i64 %12)
  %14 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 2
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 0
  %19 = call i32 @list_add(i32* %18, i32* @removing_list)
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @dev_lock, i64 %20)
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i64 @mtip_check_surprise_removal(%struct.pci_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* @MTIP_DDF_CLEANUP_BIT, align 4
  %28 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %29 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %28, i32 0, i32 1
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  %36 = call i32 @msleep(i32 20)
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %41 = call i32 @mtip_command_cleanup(%struct.driver_data* %40)
  br label %43

42:                                               ; preds = %33
  br label %26

43:                                               ; preds = %39, %26
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %46 = call i32 @mtip_block_remove(%struct.driver_data* %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_disable_msi(%struct.pci_dev* %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_lock_irqsave(i32* @dev_lock, i64 %49)
  %51 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %52 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %51, i32 0, i32 0
  %53 = call i32 @list_del_init(i32* %52)
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @dev_lock, i64 %54)
  %56 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %57 = call i32 @kfree(%struct.driver_data* %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %59 = load i32, i32* @MTIP_ABAR, align 4
  %60 = shl i32 1, %59
  %61 = call i32 @pcim_iounmap_regions(%struct.pci_dev* %58, i32 %60)
  ret void
}

declare dso_local %struct.driver_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @mtip_check_surprise_removal(%struct.pci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mtip_command_cleanup(%struct.driver_data*) #1

declare dso_local i32 @mtip_block_remove(%struct.driver_data*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.driver_data*) #1

declare dso_local i32 @pcim_iounmap_regions(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
