; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_atm_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_atm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i32*, %struct.TYPE_6__*, %struct.sk_buff**, %struct.sk_buff**, %struct.TYPE_7__** }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unregistering ATM device %d\0A\00", align 1
@solos_attr_group = common dso_local global i32 0, align 4
@RX_DMA_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solos_card*)* @atm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_remove(%struct.solos_card* %0) #0 {
  %2 = alloca %struct.solos_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.solos_card* %0, %struct.solos_card** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %115, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %8 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %118

11:                                               ; preds = %5
  %12 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %13 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %12, i32 0, i32 5
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %14, i64 %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %114

20:                                               ; preds = %11
  %21 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %22 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %26 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %25, i32 0, i32 5
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %36 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %35, i32 0, i32 5
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @sysfs_remove_group(i32* %43, i32* @solos_attr_group)
  %45 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %46 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %45, i32 0, i32 5
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 %49
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @atm_dev_deregister(%struct.TYPE_7__* %51)
  %53 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %54 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %53, i32 0, i32 4
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %55, i64 %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %4, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %20
  %63 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %64 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_8__* @SKB_CB(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RX_DMA_SIZE, align 4
  %71 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %72 = call i32 @pci_unmap_single(%struct.TYPE_6__* %65, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @dev_kfree_skb(%struct.sk_buff* %73)
  br label %75

75:                                               ; preds = %62, %20
  %76 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %77 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %76, i32 0, i32 3
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %78, i64 %80
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  store %struct.sk_buff* %82, %struct.sk_buff** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %75
  %86 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %87 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = call %struct.TYPE_8__* @SKB_CB(%struct.sk_buff* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %97 = call i32 @pci_unmap_single(%struct.TYPE_6__* %88, i32 %92, i32 %95, i32 %96)
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call i32 @dev_kfree_skb(%struct.sk_buff* %98)
  br label %100

100:                                              ; preds = %85, %75
  br label %101

101:                                              ; preds = %110, %100
  %102 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %103 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call %struct.sk_buff* @skb_dequeue(i32* %107)
  store %struct.sk_buff* %108, %struct.sk_buff** %4, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 @dev_kfree_skb(%struct.sk_buff* %111)
  br label %101

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %11
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %5

118:                                              ; preds = %5
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @atm_dev_deregister(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
