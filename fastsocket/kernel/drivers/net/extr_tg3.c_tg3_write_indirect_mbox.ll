; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_write_indirect_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_write_indirect_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, i32, i32 }

@MAILBOX_RCVRET_CON_IDX_0 = common dso_local global i64 0, align 8
@TG3_64BIT_REG_LOW = common dso_local global i64 0, align 8
@TG3PCI_RCV_RET_RING_CON_IDX = common dso_local global i64 0, align 8
@TG3_RX_STD_PROD_IDX_REG = common dso_local global i64 0, align 8
@TG3PCI_STD_RING_PROD_IDX = common dso_local global i64 0, align 8
@TG3PCI_REG_BASE_ADDR = common dso_local global i64 0, align 8
@TG3PCI_REG_DATA = common dso_local global i64 0, align 8
@MAILBOX_INTERRUPT_0 = common dso_local global i64 0, align 8
@TG3PCI_MISC_LOCAL_CTRL = common dso_local global i64 0, align 8
@GRC_LCLCTRL_CLEARINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i64, i64)* @tg3_write_indirect_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_write_indirect_mbox(%struct.tg3* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAILBOX_RCVRET_CON_IDX_0, align 8
  %10 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %11 = add nsw i64 %9, %10
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = getelementptr inbounds %struct.tg3, %struct.tg3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @TG3PCI_RCV_RET_RING_CON_IDX, align 8
  %18 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @pci_write_config_dword(i32 %16, i64 %19, i64 %20)
  br label %76

22:                                               ; preds = %3
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @TG3_RX_STD_PROD_IDX_REG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.tg3*, %struct.tg3** %4, align 8
  %28 = getelementptr inbounds %struct.tg3, %struct.tg3* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @TG3PCI_STD_RING_PROD_IDX, align 8
  %31 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @pci_write_config_dword(i32 %29, i64 %32, i64 %33)
  br label %76

35:                                               ; preds = %22
  %36 = load %struct.tg3*, %struct.tg3** %4, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 2
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.tg3*, %struct.tg3** %4, align 8
  %41 = getelementptr inbounds %struct.tg3, %struct.tg3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @TG3PCI_REG_BASE_ADDR, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add nsw i64 %44, 22016
  %46 = call i32 @pci_write_config_dword(i32 %42, i64 %43, i64 %45)
  %47 = load %struct.tg3*, %struct.tg3** %4, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* @TG3PCI_REG_DATA, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @pci_write_config_dword(i32 %49, i64 %50, i64 %51)
  %53 = load %struct.tg3*, %struct.tg3** %4, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 2
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @MAILBOX_INTERRUPT_0, align 8
  %59 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %35
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %63, 1
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.tg3*, %struct.tg3** %4, align 8
  %67 = getelementptr inbounds %struct.tg3, %struct.tg3* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* @TG3PCI_MISC_LOCAL_CTRL, align 8
  %70 = load %struct.tg3*, %struct.tg3** %4, align 8
  %71 = getelementptr inbounds %struct.tg3, %struct.tg3* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @GRC_LCLCTRL_CLEARINT, align 8
  %74 = or i64 %72, %73
  %75 = call i32 @pci_write_config_dword(i32 %68, i64 %69, i64 %74)
  br label %76

76:                                               ; preds = %13, %26, %65, %62, %35
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
