; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunlance.c_lance_init_ring_dvma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunlance.c_lance_init_ring_dvma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.lance_private = type { i64, i64, i64, i64, i64, %struct.lance_init_block* }
%struct.lance_init_block = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@tx_buf = common dso_local global i32 0, align 4
@RX_RING_SIZE = common dso_local global i32 0, align 4
@rx_buf = common dso_local global i32 0, align 4
@LE_R1_OWN = common dso_local global i32 0, align 4
@RX_BUFF_SIZE = common dso_local global i32 0, align 4
@brx_ring = common dso_local global i32 0, align 4
@LANCE_LOG_RX_BUFFERS = common dso_local global i32 0, align 4
@btx_ring = common dso_local global i32 0, align 4
@LANCE_LOG_TX_BUFFERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_init_ring_dvma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_init_ring_dvma(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.lance_private* @netdev_priv(%struct.net_device* %8)
  store %struct.lance_private* %9, %struct.lance_private** %3, align 8
  %10 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %11 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %10, i32 0, i32 5
  %12 = load %struct.lance_init_block*, %struct.lance_init_block** %11, align 8
  store %struct.lance_init_block* %12, %struct.lance_init_block** %4, align 8
  %13 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %19 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %21 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %23 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %25 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %32 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %41 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %50 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %48, i32* %52, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %59 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 %57, i32* %61, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %68 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32 %66, i32* %70, align 4
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %77 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  store i32 %75, i32* %79, align 4
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %129, %1
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TX_RING_SIZE, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %132

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = load i32, i32* @tx_buf, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i64 @libbuff_offset(i32 %86, i32 %87)
  %89 = add nsw i64 %85, %88
  %90 = call i32 @LANCE_ADDR(i64 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %93 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %92, i32 0, i32 5
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 %91, i32* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = ashr i32 %99, 16
  %101 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %102 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %101, i32 0, i32 5
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %100, i32* %107, align 4
  %108 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %109 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %108, i32 0, i32 5
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  store i64 0, i64* %114, align 8
  %115 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %116 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %115, i32 0, i32 5
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i32 61440, i32* %121, align 8
  %122 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %123 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %122, i32 0, i32 5
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %84
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %80

132:                                              ; preds = %80
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %186, %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @RX_RING_SIZE, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %189

137:                                              ; preds = %133
  %138 = load i64, i64* %5, align 8
  %139 = load i32, i32* @rx_buf, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i64 @libbuff_offset(i32 %139, i32 %140)
  %142 = add nsw i64 %138, %141
  %143 = call i32 @LANCE_ADDR(i64 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %146 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %145, i32 0, i32 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %144, i32* %151, align 8
  %152 = load i32, i32* %6, align 4
  %153 = ashr i32 %152, 16
  %154 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %155 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %154, i32 0, i32 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i32 %153, i32* %160, align 4
  %161 = load i32, i32* @LE_R1_OWN, align 4
  %162 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %163 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %162, i32 0, i32 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %7, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 4
  store i32 %161, i32* %168, align 8
  %169 = load i32, i32* @RX_BUFF_SIZE, align 4
  %170 = sub nsw i32 0, %169
  %171 = or i32 %170, 61440
  %172 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %173 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %172, i32 0, i32 4
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  store i32 %171, i32* %178, align 8
  %179 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %180 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %179, i32 0, i32 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %137
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %133

189:                                              ; preds = %133
  %190 = load i64, i64* %5, align 8
  %191 = load i32, i32* @brx_ring, align 4
  %192 = call i64 @libdesc_offset(i32 %191, i32 0)
  %193 = add nsw i64 %190, %192
  %194 = call i32 @LANCE_ADDR(i64 %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* @LANCE_LOG_RX_BUFFERS, align 4
  %196 = shl i32 %195, 13
  %197 = load i32, i32* %6, align 4
  %198 = ashr i32 %197, 16
  %199 = or i32 %196, %198
  %200 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %201 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %204 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i64, i64* %5, align 8
  %206 = load i32, i32* @btx_ring, align 4
  %207 = call i64 @libdesc_offset(i32 %206, i32 0)
  %208 = add nsw i64 %205, %207
  %209 = call i32 @LANCE_ADDR(i64 %208)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* @LANCE_LOG_TX_BUFFERS, align 4
  %211 = shl i32 %210, 13
  %212 = load i32, i32* %6, align 4
  %213 = ashr i32 %212, 16
  %214 = or i32 %211, %213
  %215 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %216 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %6, align 4
  %218 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %219 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @LANCE_ADDR(i64) #1

declare dso_local i64 @libbuff_offset(i32, i32) #1

declare dso_local i64 @libdesc_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
