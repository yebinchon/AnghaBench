; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_compl_process_gro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rx_compl_process_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_queue_info, %struct.be_adapter* }
%struct.be_queue_info = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_5__*, %struct.be_rx_obj* }
%struct.TYPE_5__ = type { i32 }
%struct.napi_struct = type { i32 }
%struct.be_rx_compl_info = type { i64, i64, i32, i64, i32, i32 }
%struct.be_rx_page_info = type { i64, i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@rx_frag_size = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_rx_compl_process_gro(%struct.be_rx_obj* %0, %struct.napi_struct* %1, %struct.be_rx_compl_info* %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.be_rx_compl_info*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.be_rx_page_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.be_queue_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store %struct.be_rx_compl_info* %2, %struct.be_rx_compl_info** %6, align 8
  %15 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %16 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %15, i32 0, i32 1
  %17 = load %struct.be_adapter*, %struct.be_adapter** %16, align 8
  store %struct.be_adapter* %17, %struct.be_adapter** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %18 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %19 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %18, i32 0, i32 0
  store %struct.be_queue_info* %19, %struct.be_queue_info** %10, align 8
  %20 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %21 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %26 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %27 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %25, %struct.be_rx_compl_info* %26)
  br label %182

28:                                               ; preds = %3
  %29 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %30 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i64 -1, i64* %14, align 8
  br label %32

32:                                               ; preds = %112, %28
  %33 = load i64, i64* %13, align 8
  %34 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %35 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %115

38:                                               ; preds = %32
  %39 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %40 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %41 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %39, i32 %42)
  store %struct.be_rx_page_info* %43, %struct.be_rx_page_info** %8, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @rx_frag_size, align 8
  %46 = call i64 @min(i64 %44, i64 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %51 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49, %38
  %55 = load i64, i64* %14, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %14, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %60 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @skb_frag_set_page(%struct.sk_buff* %57, i64 %58, i32 %61)
  %63 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %64 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i64 %65, i64* %72, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %77
  %79 = call i32 @skb_frag_size_set(%struct.TYPE_7__* %78, i32 0)
  br label %85

80:                                               ; preds = %49
  %81 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %82 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @put_page(i32 %83)
  br label %85

85:                                               ; preds = %80, %54
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @skb_frag_size_add(%struct.TYPE_7__* %91, i64 %92)
  %94 = load i64, i64* @rx_frag_size, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %11, align 8
  %104 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %105 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %104, i32 0, i32 5
  %106 = load %struct.be_queue_info*, %struct.be_queue_info** %10, align 8
  %107 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @index_inc(i32* %105, i32 %108)
  %110 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %111 = call i32 @memset(%struct.be_rx_page_info* %110, i32 0, i32 16)
  br label %112

112:                                              ; preds = %85
  %113 = load i64, i64* %13, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %32

115:                                              ; preds = %32
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %118 = icmp sgt i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @BUG_ON(i32 %119)
  %121 = load i64, i64* %14, align 8
  %122 = add nsw i64 %121, 1
  %123 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %124 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %127 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %132 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %137 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %141 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %142 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %141, i32 0, i32 2
  %143 = load %struct.be_rx_obj*, %struct.be_rx_obj** %142, align 8
  %144 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %143, i64 0
  %145 = ptrtoint %struct.be_rx_obj* %140 to i64
  %146 = ptrtoint %struct.be_rx_obj* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 16
  %149 = trunc i64 %148 to i32
  %150 = call i32 @skb_record_rx_queue(%struct.sk_buff* %139, i32 %149)
  %151 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %152 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %151, i32 0, i32 1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @NETIF_F_RXHASH, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %115
  %160 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %161 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %115
  %166 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %167 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %172 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %173 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %176 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @vlan_gro_frags(%struct.napi_struct* %171, i32 %174, i32 %177)
  br label %182

179:                                              ; preds = %165
  %180 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %181 = call i32 @napi_gro_frags(%struct.napi_struct* %180)
  br label %182

182:                                              ; preds = %24, %179, %170
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @skb_frag_set_page(%struct.sk_buff*, i64, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_set(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @skb_frag_size_add(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @index_inc(i32*, i32) #1

declare dso_local i32 @memset(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_gro_frags(%struct.napi_struct*, i32, i32) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
