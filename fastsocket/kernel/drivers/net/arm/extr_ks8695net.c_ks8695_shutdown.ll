; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@KS8695_DTXC = common dso_local global i32 0, align 4
@DTXC_TE = common dso_local global i32 0, align 4
@KS8695_DRXC = common dso_local global i32 0, align 4
@DRXC_RE = common dso_local global i32 0, align 4
@MAX_TX_DESC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_RX_DESC = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8695_priv*)* @ks8695_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_shutdown(%struct.ks8695_priv* %0) #0 {
  %2 = alloca %struct.ks8695_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %2, align 8
  %5 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %6 = load i32, i32* @KS8695_DTXC, align 4
  %7 = call i32 @ks8695_readreg(%struct.ks8695_priv* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %9 = load i32, i32* @KS8695_DTXC, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DTXC_TE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @ks8695_writereg(%struct.ks8695_priv* %8, i32 %9, i32 %13)
  %15 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %16 = load i32, i32* @KS8695_DRXC, align 4
  %17 = call i32 @ks8695_readreg(%struct.ks8695_priv* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %19 = load i32, i32* @KS8695_DRXC, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @DRXC_RE, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @ks8695_writereg(%struct.ks8695_priv* %18, i32 %19, i32 %23)
  %25 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %26 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %29 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @free_irq(i32 %27, i32 %30)
  %32 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %33 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %36 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @free_irq(i32 %34, i32 %37)
  %39 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %40 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %48 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @free_irq(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %43, %1
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %126, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MAX_TX_DESC, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %129

56:                                               ; preds = %52
  %57 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %58 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %57, i32 0, i32 6
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %125

66:                                               ; preds = %56
  %67 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %68 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %67, i32 0, i32 7
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %75 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %74, i32 0, i32 7
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %82 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %81, i32 0, i32 7
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %89 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %92 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %91, i32 0, i32 6
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %100 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %99, i32 0, i32 6
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @DMA_TO_DEVICE, align 4
  %108 = call i32 @dma_unmap_single(i32 %90, i32 %98, i32 %106, i32 %107)
  %109 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %110 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %109, i32 0, i32 6
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @dev_kfree_skb_irq(i32* %116)
  %118 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %119 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %118, i32 0, i32 6
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  br label %125

125:                                              ; preds = %66, %56
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %52

129:                                              ; preds = %52
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %197, %129
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @MAX_RX_DESC, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %200

134:                                              ; preds = %130
  %135 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %136 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %196

144:                                              ; preds = %134
  %145 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %146 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %145, i32 0, i32 5
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %153 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %152, i32 0, i32 5
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %160 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %163 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %171 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %170, i32 0, i32 3
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %179 = call i32 @dma_unmap_single(i32 %161, i32 %169, i32 %177, i32 %178)
  %180 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %181 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %180, i32 0, i32 3
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @dev_kfree_skb_irq(i32* %187)
  %189 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %190 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %189, i32 0, i32 3
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  store i32* null, i32** %195, align 8
  br label %196

196:                                              ; preds = %144, %134
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %130

200:                                              ; preds = %130
  ret void
}

declare dso_local i32 @ks8695_readreg(%struct.ks8695_priv*, i32) #1

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
