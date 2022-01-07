; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_drain_scq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_drain_scq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32 }
%struct.vc_map = type { %struct.scq_info* }
%struct.scq_info = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { %struct.TYPE_3__*, i32 (%struct.atm_vcc*, %struct.sk_buff*)* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [41 x i8] c"%s: SCQ (before drain %2d) next = 0x%p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: freeing skb at %p.\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*, %struct.vc_map*)* @drain_scq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_scq(%struct.idt77252_dev* %0, %struct.vc_map* %1) #0 {
  %3 = alloca %struct.idt77252_dev*, align 8
  %4 = alloca %struct.vc_map*, align 8
  %5 = alloca %struct.scq_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %3, align 8
  store %struct.vc_map* %1, %struct.vc_map** %4, align 8
  %8 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %9 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %8, i32 0, i32 0
  %10 = load %struct.scq_info*, %struct.scq_info** %9, align 8
  store %struct.scq_info* %10, %struct.scq_info** %5, align 8
  %11 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %12 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %15 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %14, i32 0, i32 2
  %16 = call i32 @atomic_read(i32* %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.sk_buff*
  %19 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %20 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, %struct.sk_buff*, ...) @TXPRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.sk_buff* %18, i32 %21)
  %23 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %24 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %23, i32 0, i32 3
  %25 = call %struct.sk_buff* @skb_dequeue(i32* %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %6, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = icmp ne %struct.sk_buff* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %2
  %29 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %30 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = call i32 (i8*, i32, %struct.sk_buff*, ...) @TXPRINTK(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31, %struct.sk_buff* %32)
  %34 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %35 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @IDT77252_PRV_PADDR(%struct.sk_buff* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %43 = call i32 @pci_unmap_single(i32 %36, i32 %38, i32 %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %46, align 8
  store %struct.atm_vcc* %47, %struct.atm_vcc** %7, align 8
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 1
  %50 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %49, align 8
  %51 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %28
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %54 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %53, i32 0, i32 1
  %55 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %54, align 8
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = call i32 %55(%struct.atm_vcc* %56, %struct.sk_buff* %57)
  br label %62

59:                                               ; preds = %28
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @dev_kfree_skb(%struct.sk_buff* %60)
  br label %62

62:                                               ; preds = %59, %52
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %64 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @atomic_inc(i32* %66)
  br label %68

68:                                               ; preds = %62, %2
  %69 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %70 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %69, i32 0, i32 2
  %71 = call i32 @atomic_dec(i32* %70)
  %72 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %73 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %72, i32 0, i32 0
  %74 = call i32 @spin_lock(i32* %73)
  br label %75

75:                                               ; preds = %93, %68
  %76 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %77 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %76, i32 0, i32 1
  %78 = call %struct.sk_buff* @skb_dequeue(i32* %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %6, align 8
  %79 = icmp ne %struct.sk_buff* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load %struct.idt77252_dev*, %struct.idt77252_dev** %3, align 8
  %82 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i64 @push_on_scq(%struct.idt77252_dev* %81, %struct.vc_map* %82, %struct.sk_buff* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.vc_map*, %struct.vc_map** %4, align 8
  %88 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %87, i32 0, i32 0
  %89 = load %struct.scq_info*, %struct.scq_info** %88, align 8
  %90 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %89, i32 0, i32 1
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @skb_queue_head(i32* %90, %struct.sk_buff* %91)
  br label %94

93:                                               ; preds = %80
  br label %75

94:                                               ; preds = %86, %75
  %95 = load %struct.scq_info*, %struct.scq_info** %5, align 8
  %96 = getelementptr inbounds %struct.scq_info, %struct.scq_info* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  ret void
}

declare dso_local i32 @TXPRINTK(i8*, i32, %struct.sk_buff*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @IDT77252_PRV_PADDR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @push_on_scq(%struct.idt77252_dev*, %struct.vc_map*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
