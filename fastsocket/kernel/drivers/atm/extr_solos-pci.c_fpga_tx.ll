; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_fpga_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_fpga_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i32, i64, %struct.TYPE_6__*, i64, i32, i32*, %struct.sk_buff** }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.atm_vcc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.atm_vcc* }

@FLAGS_ADDR = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@atmdebug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Transmitted: port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solos_card*)* @fpga_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_tx(%struct.solos_card* %0) #0 {
  %2 = alloca %struct.solos_card*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.solos_card* %0, %struct.solos_card** %2, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %12 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %11, i32 0, i32 1
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %16 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FLAGS_ADDR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @ioread32(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %22 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %3, align 4
  store i8 0, i8* %8, align 1
  br label %27

27:                                               ; preds = %179, %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %184

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %178

34:                                               ; preds = %30
  %35 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %36 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %35, i32 0, i32 7
  %37 = load %struct.sk_buff**, %struct.sk_buff*** %36, align 8
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %37, i64 %39
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  store %struct.sk_buff* %41, %struct.sk_buff** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %34
  %45 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %46 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %56 = call i32 @pci_unmap_single(%struct.TYPE_6__* %47, i32 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %34
  %58 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %59 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %58, i32 0, i32 5
  %60 = call i32 @spin_lock(i32* %59)
  %61 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %62 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = load i8, i8* %8, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call %struct.sk_buff* @skb_dequeue(i32* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = icmp ne %struct.sk_buff* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %57
  %71 = load i8, i8* %8, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %76 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %70, %57
  %80 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %81 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %80, i32 0, i32 5
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = icmp ne %struct.sk_buff* %83, null
  br i1 %84, label %85, label %107

85:                                               ; preds = %79
  %86 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %87 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %85
  %91 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %92 = load i8, i8* %8, align 1
  %93 = call i32 @TX_BUF(%struct.solos_card* %91, i8 zeroext %92)
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy_toio(i32 %93, i32 %96, i32 %99)
  %101 = load i8, i8* %8, align 1
  %102 = zext i8 %101 to i32
  %103 = shl i32 1, %102
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %106, %struct.sk_buff** %10, align 8
  br label %142

107:                                              ; preds = %85, %79
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = icmp ne %struct.sk_buff* %108, null
  br i1 %109, label %110, label %141

110:                                              ; preds = %107
  %111 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %112 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %110
  %116 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %117 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %126 = call i32 @pci_map_single(%struct.TYPE_6__* %118, i32 %121, i32 %124, i32 %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %127)
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %130)
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %135 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i8, i8* %8, align 1
  %138 = call i64 @TX_DMA_ADDR(i8 zeroext %137)
  %139 = add nsw i64 %136, %138
  %140 = call i32 @iowrite32(i32 %133, i64 %139)
  br label %141

141:                                              ; preds = %115, %110, %107
  br label %142

142:                                              ; preds = %141, %90
  %143 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %144 = icmp ne %struct.sk_buff* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  br label %179

146:                                              ; preds = %142
  %147 = load i64, i64* @atmdebug, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %151 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %150, i32 0, i32 3
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i8, i8* %8, align 1
  %155 = call i32 @dev_info(i32* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = call i32 @print_buffer(%struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %149, %146
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = call %struct.TYPE_7__* @SKB_CB(%struct.sk_buff* %159)
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load %struct.atm_vcc*, %struct.atm_vcc** %161, align 8
  store %struct.atm_vcc* %162, %struct.atm_vcc** %7, align 8
  %163 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %164 = icmp ne %struct.atm_vcc* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %167 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = call i32 @atomic_inc(i32* %169)
  %171 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %173 = call i32 @solos_pop(%struct.atm_vcc* %171, %struct.sk_buff* %172)
  br label %177

174:                                              ; preds = %158
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %175)
  br label %177

177:                                              ; preds = %174, %165
  br label %178

178:                                              ; preds = %177, %30
  br label %179

179:                                              ; preds = %178, %145
  %180 = load i32, i32* %3, align 4
  %181 = ashr i32 %180, 1
  store i32 %181, i32* %3, align 4
  %182 = load i8, i8* %8, align 1
  %183 = add i8 %182, 1
  store i8 %183, i8* %8, align 1
  br label %27

184:                                              ; preds = %27
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %190 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @FLAGS_ADDR, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @iowrite32(i32 %188, i64 %193)
  br label %195

195:                                              ; preds = %187, %184
  %196 = load %struct.solos_card*, %struct.solos_card** %2, align 8
  %197 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %196, i32 0, i32 1
  %198 = load i64, i64* %9, align 8
  %199 = call i32 @spin_unlock_irqrestore(i32* %197, i64 %198)
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @pci_unmap_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memcpy_toio(i32, i32, i32) #1

declare dso_local i32 @TX_BUF(%struct.solos_card*, i8 zeroext) #1

declare dso_local i32 @pci_map_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TX_DMA_ADDR(i8 zeroext) #1

declare dso_local i32 @dev_info(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @print_buffer(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @solos_pop(%struct.atm_vcc*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
