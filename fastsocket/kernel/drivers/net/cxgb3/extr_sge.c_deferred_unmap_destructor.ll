; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_deferred_unmap_destructor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_deferred_unmap_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }
%struct.skb_shared_info = type { i32, i32* }
%struct.deferred_unmap_info = type { i32, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @deferred_unmap_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deferred_unmap_destructor(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.skb_shared_info*, align 8
  %6 = alloca %struct.deferred_unmap_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.deferred_unmap_info*
  store %struct.deferred_unmap_info* %10, %struct.deferred_unmap_info** %6, align 8
  %11 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %6, align 8
  %12 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %6, align 8
  %24 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %4, align 8
  %28 = load i32, i32* %26, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %37 = call i32 @pci_unmap_single(i32 %25, i32 %28, i64 %35, i32 %36)
  br label %38

38:                                               ; preds = %22, %1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %39)
  store %struct.skb_shared_info* %40, %struct.skb_shared_info** %5, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %63, %38
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %44 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.deferred_unmap_info*, %struct.deferred_unmap_info** %6, align 8
  %49 = getelementptr inbounds %struct.deferred_unmap_info, %struct.deferred_unmap_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %4, align 8
  %53 = load i32, i32* %51, align 4
  %54 = load %struct.skb_shared_info*, %struct.skb_shared_info** %5, align 8
  %55 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @skb_frag_size(i32* %59)
  %61 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %62 = call i32 @pci_unmap_page(i32 %50, i32 %53, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %41

66:                                               ; preds = %41
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i64, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
