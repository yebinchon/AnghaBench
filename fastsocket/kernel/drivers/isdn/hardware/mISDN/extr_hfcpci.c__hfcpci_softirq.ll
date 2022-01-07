; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c__hfcpci_softirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c__hfcpci_softirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hfc_pci = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.bchannel = type { i64 }

@HFCPCI_IRQ_ENABLE = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @_hfcpci_softirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_hfcpci_softirq(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfc_pci*, align 8
  %7 = alloca %struct.bchannel*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.hfc_pci* @dev_get_drvdata(%struct.device* %8)
  store %struct.hfc_pci* %9, %struct.hfc_pci** %6, align 8
  %10 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %11 = icmp eq %struct.hfc_pci* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %15 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HFCPCI_IRQ_ENABLE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %13
  %22 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %23 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %26 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %27 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 2, i32 1
  %33 = call %struct.bchannel* @Sel_BCS(%struct.hfc_pci* %25, i32 %32)
  store %struct.bchannel* %33, %struct.bchannel** %7, align 8
  %34 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %35 = icmp ne %struct.bchannel* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %21
  %37 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %38 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ISDN_P_B_RAW, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %44 = call i32 @main_rec_hfcpci(%struct.bchannel* %43)
  %45 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %46 = call i32 @tx_birq(%struct.bchannel* %45)
  br label %47

47:                                               ; preds = %42, %36, %21
  %48 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %49 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %50 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 2
  %56 = call %struct.bchannel* @Sel_BCS(%struct.hfc_pci* %48, i32 %55)
  store %struct.bchannel* %56, %struct.bchannel** %7, align 8
  %57 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %58 = icmp ne %struct.bchannel* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %61 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ISDN_P_B_RAW, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %67 = call i32 @main_rec_hfcpci(%struct.bchannel* %66)
  %68 = load %struct.bchannel*, %struct.bchannel** %7, align 8
  %69 = call i32 @tx_birq(%struct.bchannel* %68)
  br label %70

70:                                               ; preds = %65, %59, %47
  %71 = load %struct.hfc_pci*, %struct.hfc_pci** %6, align 8
  %72 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %13
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %12
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.hfc_pci* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.bchannel* @Sel_BCS(%struct.hfc_pci*, i32) #1

declare dso_local i32 @main_rec_hfcpci(%struct.bchannel*) #1

declare dso_local i32 @tx_birq(%struct.bchannel*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
