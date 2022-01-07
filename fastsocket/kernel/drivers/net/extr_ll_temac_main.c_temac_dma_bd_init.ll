; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_dma_bd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ll_temac_main.c_temac_dma_bd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.temac_local = type { i32, i32, %struct.TYPE_3__*, %struct.sk_buff**, %struct.TYPE_3__* }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@RX_BD_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i32 0, align 4
@XTE_MAX_JUMBO_FRAME_SIZE = common dso_local global i64 0, align 8
@XTE_ALIGN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"alloc_skb error %d\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@STS_CTRL_APP0_IRQONEND = common dso_local global i32 0, align 4
@TX_CHNL_CTRL = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_EN = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_DLY_EN = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_COAL_EN = common dso_local global i32 0, align 4
@RX_CHNL_CTRL = common dso_local global i32 0, align 4
@CHNL_CTRL_IRQ_IOE = common dso_local global i32 0, align 4
@RX_CURDESC_PTR = common dso_local global i32 0, align 4
@RX_TAILDESC_PTR = common dso_local global i32 0, align 4
@TX_CURDESC_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @temac_dma_bd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_dma_bd_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.temac_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.temac_local* @netdev_priv(%struct.net_device* %7)
  store %struct.temac_local* %8, %struct.temac_local** %4, align 8
  %9 = load i32, i32* @RX_BD_NUM, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sk_buff** @kzalloc(i32 %12, i32 %13)
  %15 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %16 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %15, i32 0, i32 3
  store %struct.sk_buff** %14, %struct.sk_buff*** %16, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TX_BD_NUM, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 24, %22
  %24 = trunc i64 %23 to i32
  %25 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %26 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @dma_alloc_coherent(i32 %20, i32 %24, i32* %26, i32 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_3__*
  %30 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %31 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %30, i32 0, i32 4
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RX_BD_NUM, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 24, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %41 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %40, i32 0, i32 1
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @dma_alloc_coherent(i32 %35, i32 %39, i32* %41, i32 %42)
  %44 = bitcast i8* %43 to %struct.TYPE_3__*
  %45 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %46 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %45, i32 0, i32 2
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %46, align 8
  %47 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %48 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* @TX_BD_NUM, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 24, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memset(%struct.TYPE_3__* %49, i32 0, i32 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %79, %1
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @TX_BD_NUM, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %61 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @TX_BD_NUM, align 4
  %67 = srem i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = mul i64 24, %68
  %70 = add i64 %63, %69
  %71 = trunc i64 %70 to i32
  %72 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %73 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 8
  br label %79

79:                                               ; preds = %59
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %55

82:                                               ; preds = %55
  %83 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %84 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* @RX_BD_NUM, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 24, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memset(%struct.TYPE_3__* %85, i32 0, i32 %89)
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %174, %82
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @RX_BD_NUM, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %177

95:                                               ; preds = %91
  %96 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %97 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* @RX_BD_NUM, align 4
  %103 = srem i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = mul i64 24, %104
  %106 = add i64 %99, %105
  %107 = trunc i64 %106 to i32
  %108 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %109 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i32 %107, i32* %114, align 8
  %115 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %116 = load i64, i64* @XTE_ALIGN, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i32, i32* @GFP_ATOMIC, align 4
  %119 = call %struct.sk_buff* @alloc_skb(i64 %117, i32 %118)
  store %struct.sk_buff* %119, %struct.sk_buff** %5, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = icmp eq %struct.sk_buff* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %95
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @dev_err(%struct.TYPE_4__* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %125)
  store i32 -1, i32* %2, align 4
  br label %223

127:                                              ; preds = %95
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %130 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %129, i32 0, i32 3
  %131 = load %struct.sk_buff**, %struct.sk_buff*** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %131, i64 %133
  store %struct.sk_buff* %128, %struct.sk_buff** %134, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @BUFFER_ALIGN(i32 %138)
  %140 = call i32 @skb_reserve(%struct.sk_buff* %135, i32 %139)
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %149 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %150 = call i32 @dma_map_single(i32 %144, i32 %147, i64 %148, i32 %149)
  %151 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %152 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %151, i32 0, i32 2
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  store i32 %150, i32* %157, align 8
  %158 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %159 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %160 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %159, i32 0, i32 2
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 2
  store i64 %158, i64* %165, align 8
  %166 = load i32, i32* @STS_CTRL_APP0_IRQONEND, align 4
  %167 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %168 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %167, i32 0, i32 2
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  store i32 %166, i32* %173, align 4
  br label %174

174:                                              ; preds = %127
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %91

177:                                              ; preds = %91
  %178 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %179 = load i32, i32* @TX_CHNL_CTRL, align 4
  %180 = load i32, i32* @CHNL_CTRL_IRQ_EN, align 4
  %181 = or i32 270664704, %180
  %182 = load i32, i32* @CHNL_CTRL_IRQ_DLY_EN, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @CHNL_CTRL_IRQ_COAL_EN, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @temac_dma_out32(%struct.temac_local* %178, i32 %179, i32 %185)
  %187 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %188 = load i32, i32* @RX_CHNL_CTRL, align 4
  %189 = load i32, i32* @CHNL_CTRL_IRQ_EN, align 4
  %190 = or i32 -16711680, %189
  %191 = load i32, i32* @CHNL_CTRL_IRQ_DLY_EN, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @CHNL_CTRL_IRQ_COAL_EN, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @CHNL_CTRL_IRQ_IOE, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @temac_dma_out32(%struct.temac_local* %187, i32 %188, i32 %196)
  %198 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %199 = load i32, i32* @RX_CURDESC_PTR, align 4
  %200 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %201 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @temac_dma_out32(%struct.temac_local* %198, i32 %199, i32 %202)
  %204 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %205 = load i32, i32* @RX_TAILDESC_PTR, align 4
  %206 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %207 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* @RX_BD_NUM, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = mul i64 24, %212
  %214 = add i64 %209, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @temac_dma_out32(%struct.temac_local* %204, i32 %205, i32 %215)
  %217 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %218 = load i32, i32* @TX_CURDESC_PTR, align 4
  %219 = load %struct.temac_local*, %struct.temac_local** %4, align 8
  %220 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @temac_dma_out32(%struct.temac_local* %217, i32 %218, i32 %221)
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %177, %122
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff** @kzalloc(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @BUFFER_ALIGN(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i64, i32) #1

declare dso_local i32 @temac_dma_out32(%struct.temac_local*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
