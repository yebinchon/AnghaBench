; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_au1000_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.au1000_private = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@au1000_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: au1000_init\0A\00", align 1
@NUM_RX_DMA = common dso_local global i32 0, align 4
@RX_DMA_ENABLE = common dso_local global i32 0, align 4
@MAC_RX_ENABLE = common dso_local global i32 0, align 4
@MAC_TX_ENABLE = common dso_local global i32 0, align 4
@MAC_BIG_ENDIAN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MAC_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_DISABLE_RX_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1000_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %7)
  store %struct.au1000_private* %8, %struct.au1000_private** %3, align 8
  %9 = load i32, i32* @au1000_debug, align 4
  %10 = icmp sgt i32 %9, 4
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @enable_mac(%struct.net_device* %17, i32 1)
  %19 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %20 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %19, i32 0, i32 3
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %24 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %23, i32 0, i32 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %28 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %27, i32 0, i32 7
  %29 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %29, i64 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 12
  %35 = ashr i32 %34, 2
  %36 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %37 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %39 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %42 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %44 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %43, i32 0, i32 6
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 12
  %51 = ashr i32 %50, 2
  %52 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %53 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %59, %64
  %66 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %67 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %66, i32 0, i32 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 24
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 16
  %82 = or i32 %75, %81
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = or i32 %82, %88
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %89, %94
  %96 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %97 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %96, i32 0, i32 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  store i32 %95, i32* %99, align 4
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %116, %16
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @NUM_RX_DMA, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load i32, i32* @RX_DMA_ENABLE, align 4
  %106 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %107 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %106, i32 0, i32 6
  %108 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %108, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %105
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %100

119:                                              ; preds = %100
  %120 = call i32 (...) @au_sync()
  %121 = load i32, i32* @MAC_RX_ENABLE, align 4
  %122 = load i32, i32* @MAC_TX_ENABLE, align 4
  %123 = or i32 %121, %122
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @MAC_BIG_ENDIAN, align 4
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %128 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %127, i32 0, i32 5
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = icmp ne %struct.TYPE_7__* %129, null
  br i1 %130, label %131, label %155

131:                                              ; preds = %119
  %132 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %133 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %132, i32 0, i32 5
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load i64, i64* @DUPLEX_FULL, align 8
  %140 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %141 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %140, i32 0, i32 5
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %139, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %138
  %147 = load i32, i32* @MAC_FULL_DUPLEX, align 4
  %148 = load i32, i32* %6, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %6, align 4
  br label %154

150:                                              ; preds = %138, %131
  %151 = load i32, i32* @MAC_DISABLE_RX_OWN, align 4
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %150, %146
  br label %159

155:                                              ; preds = %119
  %156 = load i32, i32* @MAC_FULL_DUPLEX, align 4
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %155, %154
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %162 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %161, i32 0, i32 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 %160, i32* %164, align 4
  %165 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %166 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %165, i32 0, i32 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  store i32 33024, i32* %168, align 4
  %169 = call i32 (...) @au_sync()
  %170 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %171 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %170, i32 0, i32 3
  %172 = load i64, i64* %4, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* %171, i64 %172)
  ret i32 0
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @enable_mac(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
