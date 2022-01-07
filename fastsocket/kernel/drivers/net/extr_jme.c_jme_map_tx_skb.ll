; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_map_tx_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_map_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, %struct.TYPE_3__*, %struct.jme_ring* }
%struct.TYPE_3__ = type { i32 }
%struct.jme_ring = type { %struct.jme_buffer_info*, %struct.txdesc* }
%struct.jme_buffer_info = type { i32 }
%struct.txdesc = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.skb_frag_struct = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.skb_frag_struct* }

@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, %struct.sk_buff*, i32)* @jme_map_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_map_tx_skb(%struct.jme_adapter* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jme_ring*, align 8
  %8 = alloca %struct.txdesc*, align 8
  %9 = alloca %struct.txdesc*, align 8
  %10 = alloca %struct.jme_buffer_info*, align 8
  %11 = alloca %struct.jme_buffer_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.skb_frag_struct*, align 8
  %17 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %18, i32 0, i32 3
  %20 = load %struct.jme_ring*, %struct.jme_ring** %19, align 8
  %21 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %20, i64 0
  store %struct.jme_ring* %21, %struct.jme_ring** %7, align 8
  %22 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %23 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %22, i32 0, i32 1
  %24 = load %struct.txdesc*, %struct.txdesc** %23, align 8
  store %struct.txdesc* %24, %struct.txdesc** %8, align 8
  %25 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %26 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %25, i32 0, i32 0
  %27 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %26, align 8
  store %struct.jme_buffer_info* %27, %struct.jme_buffer_info** %10, align 8
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %14, align 4
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %40 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %88, %3
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %50, i64 %52
  store %struct.skb_frag_struct* %53, %struct.skb_frag_struct** %16, align 8
  %54 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %57, 2
  %59 = load i32, i32* %15, align 4
  %60 = and i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %54, i64 %61
  store %struct.txdesc* %62, %struct.txdesc** %9, align 8
  %63 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 2
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %63, i64 %70
  store %struct.jme_buffer_info* %71, %struct.jme_buffer_info** %11, align 8
  %72 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %76 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  %77 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %16, align 8
  %78 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %16, align 8
  %81 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %16, align 8
  %84 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @jme_fill_tx_map(i32 %74, %struct.txdesc* %75, %struct.jme_buffer_info* %76, i32 %79, i32 %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %46
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %42

91:                                               ; preds = %42
  %92 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %93 = call i64 @skb_is_nonlinear(%struct.sk_buff* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %97 = call i32 @skb_headlen(%struct.sk_buff* %96)
  br label %102

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i32 [ %97, %95 ], [ %101, %98 ]
  store i32 %103, i32* %17, align 4
  %104 = load %struct.txdesc*, %struct.txdesc** %8, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %15, align 4
  %108 = and i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %104, i64 %109
  store %struct.txdesc* %110, %struct.txdesc** %9, align 8
  %111 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %10, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %15, align 4
  %115 = and i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %111, i64 %116
  store %struct.jme_buffer_info* %117, %struct.jme_buffer_info** %11, align 8
  %118 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.txdesc*, %struct.txdesc** %9, align 8
  %122 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @virt_to_page(i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @offset_in_page(i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @jme_fill_tx_map(i32 %120, %struct.txdesc* %121, %struct.jme_buffer_info* %122, i32 %126, i32 %130, i32 %131, i32 %132)
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @jme_fill_tx_map(i32, %struct.txdesc*, %struct.jme_buffer_info*, i32, i32, i32, i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
