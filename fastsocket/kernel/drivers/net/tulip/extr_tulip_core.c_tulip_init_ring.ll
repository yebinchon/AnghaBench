; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_tulip_init_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_tulip_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { %struct.net_device*, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@DESC_RING_WRAP = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tulip_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tulip_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %7)
  store %struct.tulip_private* %8, %struct.tulip_private** %3, align 8
  %9 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %10 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %9, i32 0, i32 10
  store i64 0, i64* %10, align 8
  %11 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %12 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %14 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %68, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RX_RING_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %21 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %20, i32 0, i32 5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load i32, i32* @PKT_BUF_SZ, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %30 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %29, i32 0, i32 5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  store i8* %28, i8** %35, align 8
  %36 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %37 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = add i64 %39, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %48 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %47, i32 0, i32 5
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  store i8* %46, i8** %53, align 8
  %54 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %55 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %54, i32 0, i32 6
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  %61 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %62 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %61, i32 0, i32 6
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %19
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* @PKT_BUF_SZ, align 4
  %73 = load i32, i32* @DESC_RING_WRAP, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %77 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %76, i32 0, i32 5
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i8* %75, i8** %83, align 8
  %84 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %85 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %89 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %88, i32 0, i32 5
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i8* %87, i8** %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %154, %71
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RX_RING_SIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %157

100:                                              ; preds = %96
  %101 = load i32, i32* @PKT_BUF_SZ, align 4
  %102 = call %struct.sk_buff* @dev_alloc_skb(i32 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %6, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %105 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %104, i32 0, i32 6
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  store %struct.sk_buff* %103, %struct.sk_buff** %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = icmp eq %struct.sk_buff* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %157

114:                                              ; preds = %100
  %115 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %116 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @PKT_BUF_SZ, align 4
  %122 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %123 = call i32 @pci_map_single(i32 %117, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %126 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %125, i32 0, i32 6
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %124, i32* %131, align 8
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %134 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %133, i32 0, i32 0
  store %struct.net_device* %132, %struct.net_device** %134, align 8
  %135 = load i32, i32* @DescOwned, align 4
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %139 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %138, i32 0, i32 5
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 %137, i32* %144, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i8* @cpu_to_le32(i32 %145)
  %147 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %148 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %147, i32 0, i32 5
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  store i8* %146, i8** %153, align 8
  br label %154

154:                                              ; preds = %114
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  br label %96

157:                                              ; preds = %113, %96
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @RX_RING_SIZE, align 4
  %160 = sub nsw i32 %158, %159
  %161 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %162 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %207, %157
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @TX_RING_SIZE, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %210

167:                                              ; preds = %163
  %168 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %169 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %168, i32 0, i32 4
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i32* null, i32** %174, align 8
  %175 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %176 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %175, i32 0, i32 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %183 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %182, i32 0, i32 3
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i32 0, i32* %188, align 8
  %189 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %190 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = mul i64 4, %195
  %197 = add i64 %192, %196
  %198 = trunc i64 %197 to i32
  %199 = call i8* @cpu_to_le32(i32 %198)
  %200 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %201 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %200, i32 0, i32 3
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  store i8* %199, i8** %206, align 8
  br label %207

207:                                              ; preds = %167
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %163

210:                                              ; preds = %163
  %211 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %212 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i8* @cpu_to_le32(i32 %213)
  %215 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %216 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %215, i32 0, i32 3
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store i8* %214, i8** %222, align 8
  ret void
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
