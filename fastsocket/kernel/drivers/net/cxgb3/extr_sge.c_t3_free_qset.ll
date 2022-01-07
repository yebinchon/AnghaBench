; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_free_qset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_t3_free_qset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.pci_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.sge_qset = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32 }

@SGE_RXQ_PER_SET = common dso_local global i32 0, align 4
@SGE_TXQ_PER_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_qset*)* @t3_free_qset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t3_free_qset(%struct.adapter* %0, %struct.sge_qset* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_qset* %1, %struct.sge_qset** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %91, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SGE_RXQ_PER_SET, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %94

14:                                               ; preds = %10
  %15 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %16 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %14
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_irq(i32* %27)
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %31 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @t3_sge_disable_fl(%struct.adapter* %29, i32 %37)
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %44 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %45 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %44, i32 0, i32 2
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 %48
  %50 = call i32 @free_rx_bufs(%struct.pci_dev* %43, %struct.TYPE_8__* %49)
  %51 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %52 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @kfree(i64 %58)
  %60 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %63 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = trunc i64 %71 to i32
  %73 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %74 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %73, i32 0, i32 2
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %82 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dma_free_coherent(i32* %61, i32 %72, i64 %80, i32 %88)
  br label %90

90:                                               ; preds = %24, %14
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %10

94:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %203, %94
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SGE_TXQ_PER_SET, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %206

99:                                               ; preds = %95
  %100 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %101 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %202

109:                                              ; preds = %99
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i32 @spin_lock_irq(i32* %112)
  %114 = load %struct.adapter*, %struct.adapter** %3, align 8
  %115 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %116 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @t3_sge_enable_ecntxt(%struct.adapter* %114, i32 %122, i32 0)
  %124 = load %struct.adapter*, %struct.adapter** %3, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = call i32 @spin_unlock_irq(i32* %126)
  %128 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %129 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %128, i32 0, i32 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %109
  %138 = load %struct.adapter*, %struct.adapter** %3, align 8
  %139 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %140 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %146 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @free_tx_desc(%struct.adapter* %138, %struct.TYPE_7__* %144, i32 %152)
  %154 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %155 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 4
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @kfree(i64 %161)
  br label %163

163:                                              ; preds = %137, %109
  %164 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %167 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = mul i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %178 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %186 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %185, i32 0, i32 1
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dma_free_coherent(i32* %165, i32 %176, i64 %184, i32 %192)
  %194 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %195 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %194, i32 0, i32 1
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = call i32 @__skb_queue_purge(i32* %200)
  br label %202

202:                                              ; preds = %163, %99
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %5, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %5, align 4
  br label %95

206:                                              ; preds = %95
  %207 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %208 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %245

212:                                              ; preds = %206
  %213 = load %struct.adapter*, %struct.adapter** %3, align 8
  %214 = getelementptr inbounds %struct.adapter, %struct.adapter* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = call i32 @spin_lock_irq(i32* %215)
  %217 = load %struct.adapter*, %struct.adapter** %3, align 8
  %218 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %219 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @t3_sge_disable_rspcntxt(%struct.adapter* %217, i32 %221)
  %223 = load %struct.adapter*, %struct.adapter** %3, align 8
  %224 = getelementptr inbounds %struct.adapter, %struct.adapter* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = call i32 @spin_unlock_irq(i32* %225)
  %227 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %228 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 0
  %229 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %230 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = trunc i64 %234 to i32
  %236 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %237 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %241 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @dma_free_coherent(i32* %228, i32 %235, i64 %239, i32 %243)
  br label %245

245:                                              ; preds = %212, %206
  %246 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %247 = call i32 @t3_reset_qset(%struct.sge_qset* %246)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @t3_sge_disable_fl(%struct.adapter*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_rx_bufs(%struct.pci_dev*, %struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @t3_sge_enable_ecntxt(%struct.adapter*, i32, i32) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @t3_sge_disable_rspcntxt(%struct.adapter*, i32) #1

declare dso_local i32 @t3_reset_qset(%struct.sge_qset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
