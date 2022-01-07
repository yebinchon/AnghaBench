; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c___de_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c___de_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.de_private = type { i32, %struct.de_desc*, i32, i32, %struct.TYPE_2__* }
%struct.de_desc = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@MacMode = common dso_local global i32 0, align 4
@AcceptAllMulticast = common dso_local global i32 0, align 4
@AcceptAllPhys = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@DE_DUMMY_SKB = common dso_local global i32 0, align 4
@DE_TX_RING_SIZE = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@DE_SETUP_SKB = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@SetupFrame = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@TxPoll = common dso_local global i32 0, align 4
@NormalTxPoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__de_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__de_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.de_desc*, align 8
  %8 = alloca %struct.de_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.de_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de_private* %10, %struct.de_private** %3, align 8
  store %struct.de_desc* null, %struct.de_desc** %8, align 8
  %11 = load i32, i32* @MacMode, align 4
  %12 = call i32 @dr32(i32 %11)
  %13 = load i32, i32* @AcceptAllMulticast, align 4
  %14 = load i32, i32* @AcceptAllPhys, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @AcceptAllMulticast, align 4
  %26 = load i32, i32* @AcceptAllPhys, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  br label %188

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1000
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35, %30
  %43 = load i32, i32* @AcceptAllMulticast, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %188

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 14
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.de_private*, %struct.de_private** %3, align 8
  %53 = getelementptr inbounds %struct.de_private, %struct.de_private* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @build_setup_frame_hash(i32 %54, %struct.net_device* %55)
  br label %63

57:                                               ; preds = %46
  %58 = load %struct.de_private*, %struct.de_private** %3, align 8
  %59 = getelementptr inbounds %struct.de_private, %struct.de_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @build_setup_frame_perfect(i32 %60, %struct.net_device* %61)
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.de_private*, %struct.de_private** %3, align 8
  %65 = getelementptr inbounds %struct.de_private, %struct.de_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  %70 = load i32, i32* @DE_DUMMY_SKB, align 4
  %71 = load %struct.de_private*, %struct.de_private** %3, align 8
  %72 = getelementptr inbounds %struct.de_private, %struct.de_private* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 4
  %78 = load %struct.de_private*, %struct.de_private** %3, align 8
  %79 = getelementptr inbounds %struct.de_private, %struct.de_private* %78, i32 0, i32 1
  %80 = load %struct.de_desc*, %struct.de_desc** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %80, i64 %82
  store %struct.de_desc* %83, %struct.de_desc** %8, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %69
  %89 = load i32, i32* @RingEnd, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  br label %92

91:                                               ; preds = %69
  br label %92

92:                                               ; preds = %91, %88
  %93 = phi i8* [ %90, %88 ], [ null, %91 ]
  %94 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %95 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %97 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %96, i32 0, i32 1
  store i8* null, i8** %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i8* @NEXT_TX(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %92, %63
  %102 = load i32, i32* @DE_SETUP_SKB, align 4
  %103 = load %struct.de_private*, %struct.de_private** %3, align 8
  %104 = getelementptr inbounds %struct.de_private, %struct.de_private* %103, i32 0, i32 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %102, i32* %109, align 4
  %110 = load %struct.de_private*, %struct.de_private** %3, align 8
  %111 = getelementptr inbounds %struct.de_private, %struct.de_private* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.de_private*, %struct.de_private** %3, align 8
  %114 = getelementptr inbounds %struct.de_private, %struct.de_private* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %117 = call i32 @pci_map_single(i32 %112, i32 %115, i32 4, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load %struct.de_private*, %struct.de_private** %3, align 8
  %119 = getelementptr inbounds %struct.de_private, %struct.de_private* %118, i32 0, i32 4
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i32 %117, i32* %124, align 4
  %125 = load %struct.de_private*, %struct.de_private** %3, align 8
  %126 = getelementptr inbounds %struct.de_private, %struct.de_private* %125, i32 0, i32 1
  %127 = load %struct.de_desc*, %struct.de_desc** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %127, i64 %129
  store %struct.de_desc* %130, %struct.de_desc** %7, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %101
  %136 = load i32, i32* @SetupFrame, align 4
  %137 = load i32, i32* @RingEnd, align 4
  %138 = or i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = or i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %144 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  br label %153

145:                                              ; preds = %101
  %146 = load i32, i32* @SetupFrame, align 4
  %147 = sext i32 %146 to i64
  %148 = or i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %152 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %151, i32 0, i32 2
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %145, %135
  %154 = load i32, i32* %6, align 4
  %155 = call i8* @cpu_to_le32(i32 %154)
  %156 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %157 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = call i32 (...) @wmb()
  %159 = load i32, i32* @DescOwn, align 4
  %160 = call i8* @cpu_to_le32(i32 %159)
  %161 = load %struct.de_desc*, %struct.de_desc** %7, align 8
  %162 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  %163 = call i32 (...) @wmb()
  %164 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %165 = icmp ne %struct.de_desc* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %153
  %167 = load i32, i32* @DescOwn, align 4
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = load %struct.de_desc*, %struct.de_desc** %8, align 8
  %170 = getelementptr inbounds %struct.de_desc, %struct.de_desc* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  %171 = call i32 (...) @wmb()
  br label %172

172:                                              ; preds = %166, %153
  %173 = load i32, i32* %5, align 4
  %174 = call i8* @NEXT_TX(i32 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.de_private*, %struct.de_private** %3, align 8
  %177 = getelementptr inbounds %struct.de_private, %struct.de_private* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.de_private*, %struct.de_private** %3, align 8
  %179 = call i64 @TX_BUFFS_AVAIL(%struct.de_private* %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %172
  %182 = load %struct.net_device*, %struct.net_device** %2, align 8
  %183 = call i32 @netif_stop_queue(%struct.net_device* %182)
  br label %184

184:                                              ; preds = %181, %172
  %185 = load i32, i32* @TxPoll, align 4
  %186 = load i32, i32* @NormalTxPoll, align 4
  %187 = call i32 @dw32(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %42, %24
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @MacMode, align 4
  %191 = call i32 @dr32(i32 %190)
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load i32, i32* @MacMode, align 4
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @dw32(i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %188
  ret void
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @build_setup_frame_hash(i32, %struct.net_device*) #1

declare dso_local i32 @build_setup_frame_perfect(i32, %struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @NEXT_TX(i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.de_private*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
