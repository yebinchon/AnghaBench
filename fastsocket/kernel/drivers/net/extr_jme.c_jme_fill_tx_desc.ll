; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_fill_tx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_fill_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { %struct.jme_ring* }
%struct.jme_ring = type { %struct.jme_buffer_info*, i64 }
%struct.jme_buffer_info = type { i64, i32, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.txdesc = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@TXFLAG_OWN = common dso_local global i32 0, align 4
@TXFLAG_INT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, %struct.sk_buff*, i32)* @jme_fill_tx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_fill_tx_desc(%struct.jme_adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jme_ring*, align 8
  %8 = alloca %struct.txdesc*, align 8
  %9 = alloca %struct.jme_buffer_info*, align 8
  %10 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %11, i32 0, i32 0
  %13 = load %struct.jme_ring*, %struct.jme_ring** %12, align 8
  %14 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %13, i64 0
  store %struct.jme_ring* %14, %struct.jme_ring** %7, align 8
  %15 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %16 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.txdesc*
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %18, i64 %20
  store %struct.txdesc* %21, %struct.txdesc** %8, align 8
  %22 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %23 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %22, i32 0, i32 0
  %24 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %24, i64 %26
  store %struct.jme_buffer_info* %27, %struct.jme_buffer_info** %9, align 8
  %28 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %29 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %33 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %37 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %41 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %49 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = call i32 (...) @wmb()
  %52 = load i32, i32* @TXFLAG_OWN, align 4
  %53 = load i32, i32* @TXFLAG_INT, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %10, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %57 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = call i64 @jme_tx_tso(%struct.sk_buff* %55, i32* %58, i32* %10)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %3
  %62 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @jme_tx_csum(%struct.jme_adapter* %62, %struct.sk_buff* %63, i32* %10)
  br label %65

65:                                               ; preds = %61, %3
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %68 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = call i32 @jme_tx_vlan(%struct.sk_buff* %66, i32* %69, i32* %10)
  %71 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @jme_map_tx_skb(%struct.jme_adapter* %71, %struct.sk_buff* %72, i32 %73)
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %77 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = call i32 (...) @wmb()
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 2
  %85 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %86 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %89 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %88, i32 0, i32 2
  store %struct.sk_buff* %87, %struct.sk_buff** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %94 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* @jiffies, align 8
  %96 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %97 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %99 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %65
  %103 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %9, align 8
  %104 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %103, i32 0, i32 0
  store i64 -1, i64* %104, align 8
  br label %105

105:                                              ; preds = %102, %65
  ret i32 0
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @jme_tx_tso(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @jme_tx_csum(%struct.jme_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @jme_tx_vlan(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @jme_map_tx_skb(%struct.jme_adapter*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
