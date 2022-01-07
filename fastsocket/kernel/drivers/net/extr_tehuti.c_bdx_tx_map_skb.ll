; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_tx_map_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_tx_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.bdx_priv = type { i32, %struct.txdb }
%struct.txdb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32, i64, i64 }
%struct.txd_desc = type { %struct.pbl* }
%struct.pbl = type { i8*, i8*, i8* }
%struct.skb_frag_struct = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.skb_frag_struct* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"=== pbl   len: 0x%x ================\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"=== pbl pa_lo: 0x%x ================\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"=== pbl pa_hi: 0x%x ================\0A\00", align 1
@txd_sizes = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdx_priv*, %struct.sk_buff*, %struct.txd_desc*)* @bdx_tx_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdx_tx_map_skb(%struct.bdx_priv* %0, %struct.sk_buff* %1, %struct.txd_desc* %2) #0 {
  %4 = alloca %struct.bdx_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.txd_desc*, align 8
  %7 = alloca %struct.txdb*, align 8
  %8 = alloca %struct.pbl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.skb_frag_struct*, align 8
  store %struct.bdx_priv* %0, %struct.bdx_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.txd_desc* %2, %struct.txd_desc** %6, align 8
  %12 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %13 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %12, i32 0, i32 1
  store %struct.txdb* %13, %struct.txdb** %7, align 8
  %14 = load %struct.txd_desc*, %struct.txd_desc** %6, align 8
  %15 = getelementptr inbounds %struct.txd_desc, %struct.txd_desc* %14, i32 0, i32 0
  %16 = load %struct.pbl*, %struct.pbl** %15, align 8
  %17 = getelementptr inbounds %struct.pbl, %struct.pbl* %16, i64 0
  store %struct.pbl* %17, %struct.pbl** %8, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.txdb*, %struct.txdb** %7, align 8
  %30 = getelementptr inbounds %struct.txdb, %struct.txdb* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i64 %28, i64* %32, align 8
  %33 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %34 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.txdb*, %struct.txdb** %7, align 8
  %40 = getelementptr inbounds %struct.txdb, %struct.txdb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %45 = call i32 @pci_map_single(i32 %35, i32 %38, i64 %43, i32 %44)
  %46 = load %struct.txdb*, %struct.txdb** %7, align 8
  %47 = getelementptr inbounds %struct.txdb, %struct.txdb* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 8
  %51 = load %struct.txdb*, %struct.txdb** %7, align 8
  %52 = getelementptr inbounds %struct.txdb, %struct.txdb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @CPU_CHIP_SWAP32(i64 %55)
  %57 = load %struct.pbl*, %struct.pbl** %8, align 8
  %58 = getelementptr inbounds %struct.pbl, %struct.pbl* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.txdb*, %struct.txdb** %7, align 8
  %60 = getelementptr inbounds %struct.txdb, %struct.txdb* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @L32_64(i32 %64)
  %66 = call i8* @CPU_CHIP_SWAP32(i64 %65)
  %67 = load %struct.pbl*, %struct.pbl** %8, align 8
  %68 = getelementptr inbounds %struct.pbl, %struct.pbl* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.txdb*, %struct.txdb** %7, align 8
  %70 = getelementptr inbounds %struct.txdb, %struct.txdb* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @H32_64(i32 %74)
  %76 = call i8* @CPU_CHIP_SWAP32(i64 %75)
  %77 = load %struct.pbl*, %struct.pbl** %8, align 8
  %78 = getelementptr inbounds %struct.pbl, %struct.pbl* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load %struct.pbl*, %struct.pbl** %8, align 8
  %80 = getelementptr inbounds %struct.pbl, %struct.pbl* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %81)
  %83 = load %struct.pbl*, %struct.pbl** %8, align 8
  %84 = getelementptr inbounds %struct.pbl, %struct.pbl* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %85)
  %87 = load %struct.pbl*, %struct.pbl** %8, align 8
  %88 = getelementptr inbounds %struct.pbl, %struct.pbl* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  %91 = load %struct.txdb*, %struct.txdb** %7, align 8
  %92 = call i32 @bdx_tx_db_inc_wptr(%struct.txdb* %91)
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %163, %3
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %166

97:                                               ; preds = %93
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %101, i64 %103
  store %struct.skb_frag_struct* %104, %struct.skb_frag_struct** %11, align 8
  %105 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %106 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.txdb*, %struct.txdb** %7, align 8
  %109 = getelementptr inbounds %struct.txdb, %struct.txdb* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.bdx_priv*, %struct.bdx_priv** %4, align 8
  %113 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %116 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %119 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %122 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %125 = call i32 @pci_map_page(i32 %114, i32 %117, i32 %120, i64 %123, i32 %124)
  %126 = load %struct.txdb*, %struct.txdb** %7, align 8
  %127 = getelementptr inbounds %struct.txdb, %struct.txdb* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store i32 %125, i32* %130, align 8
  %131 = load %struct.pbl*, %struct.pbl** %8, align 8
  %132 = getelementptr inbounds %struct.pbl, %struct.pbl* %131, i32 1
  store %struct.pbl* %132, %struct.pbl** %8, align 8
  %133 = load %struct.txdb*, %struct.txdb** %7, align 8
  %134 = getelementptr inbounds %struct.txdb, %struct.txdb* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @CPU_CHIP_SWAP32(i64 %137)
  %139 = load %struct.pbl*, %struct.pbl** %8, align 8
  %140 = getelementptr inbounds %struct.pbl, %struct.pbl* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.txdb*, %struct.txdb** %7, align 8
  %142 = getelementptr inbounds %struct.txdb, %struct.txdb* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @L32_64(i32 %146)
  %148 = call i8* @CPU_CHIP_SWAP32(i64 %147)
  %149 = load %struct.pbl*, %struct.pbl** %8, align 8
  %150 = getelementptr inbounds %struct.pbl, %struct.pbl* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  %151 = load %struct.txdb*, %struct.txdb** %7, align 8
  %152 = getelementptr inbounds %struct.txdb, %struct.txdb* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @H32_64(i32 %156)
  %158 = call i8* @CPU_CHIP_SWAP32(i64 %157)
  %159 = load %struct.pbl*, %struct.pbl** %8, align 8
  %160 = getelementptr inbounds %struct.pbl, %struct.pbl* %159, i32 0, i32 0
  store i8* %158, i8** %160, align 8
  %161 = load %struct.txdb*, %struct.txdb** %7, align 8
  %162 = call i32 @bdx_tx_db_inc_wptr(%struct.txdb* %161)
  br label %163

163:                                              ; preds = %97
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %93

166:                                              ; preds = %93
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @txd_sizes, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 0, %172
  %174 = load %struct.txdb*, %struct.txdb** %7, align 8
  %175 = getelementptr inbounds %struct.txdb, %struct.txdb* %174, i32 0, i32 0
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i64 %173, i64* %177, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %179 = load %struct.txdb*, %struct.txdb** %7, align 8
  %180 = getelementptr inbounds %struct.txdb, %struct.txdb* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store %struct.sk_buff* %178, %struct.sk_buff** %183, align 8
  %184 = load %struct.txdb*, %struct.txdb** %7, align 8
  %185 = call i32 @bdx_tx_db_inc_wptr(%struct.txdb* %184)
  ret void
}

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i8* @CPU_CHIP_SWAP32(i64) #1

declare dso_local i64 @L32_64(i32) #1

declare dso_local i64 @H32_64(i32) #1

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i32 @bdx_tx_db_inc_wptr(%struct.txdb*) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
