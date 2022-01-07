; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_free_scq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_free_scq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32 }
%struct.scq_info = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_2__ = type { %struct.atm_vcc* }

@SCQ_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*, %struct.scq_info*)* @free_scq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_scq(%struct.idt77252_dev* %0, %struct.scq_info* %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.scq_info*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atm_vcc*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store %struct.scq_info* %1, %struct.scq_info** %4, align 8
  %7 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %8 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SCQ_SIZE, align 4
  %11 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %12 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %15 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_free_consistent(i32 %9, i32 %10, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %52, %2
  %19 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %20 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %19, i32 0, i32 1
  %21 = call %struct.sk_buff* @skb_dequeue(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %33 = call i32 @pci_unmap_single(i32 %26, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %36, align 8
  store %struct.atm_vcc* %37, %struct.atm_vcc** %6, align 8
  %38 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %39 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %38, i32 0, i32 0
  %40 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %39, align 8
  %41 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %23
  %43 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %44 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %43, i32 0, i32 0
  %45 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %44, align 8
  %46 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 %45(%struct.atm_vcc* %46, %struct.sk_buff* %47)
  br label %52

49:                                               ; preds = %23
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @dev_kfree_skb(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %42
  br label %18

53:                                               ; preds = %18
  br label %54

54:                                               ; preds = %88, %53
  %55 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %56 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %55, i32 0, i32 0
  %57 = call %struct.sk_buff* @skb_dequeue(i32* %56)
  store %struct.sk_buff* %57, %struct.sk_buff** %5, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %59, label %89

59:                                               ; preds = %54
  %60 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %61 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %69 = call i32 @pci_unmap_single(i32 %62, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.atm_vcc*, %struct.atm_vcc** %72, align 8
  store %struct.atm_vcc* %73, %struct.atm_vcc** %6, align 8
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %75 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %74, i32 0, i32 0
  %76 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %75, align 8
  %77 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %59
  %79 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %80 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %79, i32 0, i32 0
  %81 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %80, align 8
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 %81(%struct.atm_vcc* %82, %struct.sk_buff* %83)
  br label %88

85:                                               ; preds = %59
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %78
  br label %54

89:                                               ; preds = %54
  %90 = load %struct.scq_info*, %struct.scq_info** %4, align 8
  %91 = call i32 @kfree(%struct.scq_info* %90)
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.scq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
