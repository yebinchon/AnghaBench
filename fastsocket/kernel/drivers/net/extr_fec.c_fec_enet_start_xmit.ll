; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i8* }
%struct.net_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fec_enet_private = type { i64, i32, i32, %struct.bufdesc*, %struct.bufdesc*, %struct.bufdesc*, i64, %struct.sk_buff**, i8**, i32 }
%struct.bufdesc = type { i16, i32, i64 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@BD_ENET_TX_READY = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [21 x i8] c"%s: tx queue full!.\0A\00", align 1
@BD_ENET_TX_STATS = common dso_local global i16 0, align 2
@FEC_ALIGNMENT = common dso_local global i64 0, align 8
@TX_RING_MOD_MASK = common dso_local global i32 0, align 4
@FEC_ENET_TX_FRSIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@BD_ENET_TX_INTR = common dso_local global i16 0, align 2
@BD_ENET_TX_LAST = common dso_local global i16 0, align 2
@BD_ENET_TX_TC = common dso_local global i16 0, align 2
@jiffies = common dso_local global i32 0, align 4
@FEC_X_DES_ACTIVE = common dso_local global i64 0, align 8
@BD_ENET_TX_WRAP = common dso_local global i16 0, align 2
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fec_enet_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca %struct.bufdesc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %12)
  store %struct.fec_enet_private* %13, %struct.fec_enet_private** %6, align 8
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %19, i32* %3, align 4
  br label %195

20:                                               ; preds = %2
  %21 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %22 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %21, i32 0, i32 2
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %26 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %25, i32 0, i32 3
  %27 = load %struct.bufdesc*, %struct.bufdesc** %26, align 8
  store %struct.bufdesc* %27, %struct.bufdesc** %7, align 8
  %28 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %29 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %28, i32 0, i32 0
  %30 = load i16, i16* %29, align 8
  store i16 %30, i16* %9, align 2
  %31 = load i16, i16* %9, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @BD_ENET_TX_READY, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %20
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %43 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %42, i32 0, i32 2
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %46, i32* %3, align 4
  br label %195

47:                                               ; preds = %20
  %48 = load i16, i16* @BD_ENET_TX_STATS, align 2
  %49 = zext i16 %48 to i32
  %50 = xor i32 %49, -1
  %51 = load i16, i16* %9, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %9, align 2
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %8, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %62 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load i64, i64* @FEC_ALIGNMENT, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %47
  %69 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %70 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %71 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %70, i32 0, i32 5
  %72 = load %struct.bufdesc*, %struct.bufdesc** %71, align 8
  %73 = ptrtoint %struct.bufdesc* %69 to i64
  %74 = ptrtoint %struct.bufdesc* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 16
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %79 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %78, i32 0, i32 8
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @memcpy(i8* %84, i8* %87, i64 %90)
  %92 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %93 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %92, i32 0, i32 8
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %8, align 8
  br label %99

99:                                               ; preds = %68, %47
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %102 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %101, i32 0, i32 7
  %103 = load %struct.sk_buff**, %struct.sk_buff*** %102, align 8
  %104 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %105 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %103, i64 %106
  store %struct.sk_buff* %100, %struct.sk_buff** %107, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %110
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %119 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  %122 = load i32, i32* @TX_RING_MOD_MASK, align 4
  %123 = sext i32 %122 to i64
  %124 = and i64 %121, %123
  %125 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %126 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* @FEC_ENET_TX_FRSIZE, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_map_single(i32* %128, i8* %129, i32 %130, i32 %131)
  %133 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %134 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i16, i16* @BD_ENET_TX_READY, align 2
  %136 = zext i16 %135 to i32
  %137 = load i16, i16* @BD_ENET_TX_INTR, align 2
  %138 = zext i16 %137 to i32
  %139 = or i32 %136, %138
  %140 = load i16, i16* @BD_ENET_TX_LAST, align 2
  %141 = zext i16 %140 to i32
  %142 = or i32 %139, %141
  %143 = load i16, i16* @BD_ENET_TX_TC, align 2
  %144 = zext i16 %143 to i32
  %145 = or i32 %142, %144
  %146 = load i16, i16* %9, align 2
  %147 = zext i16 %146 to i32
  %148 = or i32 %147, %145
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %9, align 2
  %150 = load i16, i16* %9, align 2
  %151 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %152 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %151, i32 0, i32 0
  store i16 %150, i16* %152, align 8
  %153 = load i32, i32* @jiffies, align 4
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %157 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @FEC_X_DES_ACTIVE, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 0, i64 %160)
  %162 = load i16, i16* %9, align 2
  %163 = zext i16 %162 to i32
  %164 = load i16, i16* @BD_ENET_TX_WRAP, align 2
  %165 = zext i16 %164 to i32
  %166 = and i32 %163, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %99
  %169 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %170 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %169, i32 0, i32 5
  %171 = load %struct.bufdesc*, %struct.bufdesc** %170, align 8
  store %struct.bufdesc* %171, %struct.bufdesc** %7, align 8
  br label %175

172:                                              ; preds = %99
  %173 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %174 = getelementptr inbounds %struct.bufdesc, %struct.bufdesc* %173, i32 1
  store %struct.bufdesc* %174, %struct.bufdesc** %7, align 8
  br label %175

175:                                              ; preds = %172, %168
  %176 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %177 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %178 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %177, i32 0, i32 4
  %179 = load %struct.bufdesc*, %struct.bufdesc** %178, align 8
  %180 = icmp eq %struct.bufdesc* %176, %179
  br i1 %180, label %181, label %186

181:                                              ; preds = %175
  %182 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %183 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %182, i32 0, i32 1
  store i32 1, i32* %183, align 8
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = call i32 @netif_stop_queue(%struct.net_device* %184)
  br label %186

186:                                              ; preds = %181, %175
  %187 = load %struct.bufdesc*, %struct.bufdesc** %7, align 8
  %188 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %189 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %188, i32 0, i32 3
  store %struct.bufdesc* %187, %struct.bufdesc** %189, align 8
  %190 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %191 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %190, i32 0, i32 2
  %192 = load i64, i64* %10, align 8
  %193 = call i32 @spin_unlock_irqrestore(i32* %191, i64 %192)
  %194 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %186, %37, %18
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
