; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_queue_wq_skb_cont.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_queue_wq_skb_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }
%struct.vnic_wq = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enic*, %struct.vnic_wq*, %struct.sk_buff*, i32, i32)* @enic_queue_wq_skb_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enic_queue_wq_skb_cont(%struct.enic* %0, %struct.vnic_wq* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.enic*, align 8
  %7 = alloca %struct.vnic_wq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.enic* %0, %struct.enic** %6, align 8
  store %struct.vnic_wq* %1, %struct.vnic_wq** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  br label %16

16:                                               ; preds = %51, %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load %struct.enic*, %struct.enic** %6, align 8
  %30 = getelementptr inbounds %struct.enic, %struct.enic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %42 = call i32 @pci_map_page(i32 %31, i32 %34, i32 %37, i64 %40, i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @enic_queue_wq_desc_cont(%struct.vnic_wq* %27, %struct.sk_buff* %28, i32 %42, i64 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %19
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 1
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %11, align 8
  br label %16

54:                                               ; preds = %16
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @enic_queue_wq_desc_cont(%struct.vnic_wq*, %struct.sk_buff*, i32, i64, i32, i32) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
