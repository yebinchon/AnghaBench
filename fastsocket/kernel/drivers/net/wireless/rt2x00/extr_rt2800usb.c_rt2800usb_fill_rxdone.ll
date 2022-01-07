; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_fill_rxdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800usb.c_rt2800usb_fill_rxdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rxdone_entry_desc = type { i32, i32, i32 }
%struct.skb_frame_desc = type { i32, i32 }

@RXINFO_W0_USB_DMA_RX_PKT_LEN = common dso_local global i32 0, align 4
@RXINFO_DESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bad frame size %d, forcing to 0\0A\00", align 1
@RXD_W0_CRC_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RXD_W0_CIPHER_ERROR = common dso_local global i32 0, align 4
@RXD_W0_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_CRYPTO_SUCCESS = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_CRYPTO_FAIL_MIC = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RXD_W0_MY_BSS = common dso_local global i32 0, align 4
@RXDONE_MY_BSS = common dso_local global i32 0, align 4
@RXD_W0_L2PAD = common dso_local global i32 0, align 4
@RXDONE_L2PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.queue_entry*, %struct.rxdone_entry_desc*)* @rt2800usb_fill_rxdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800usb_fill_rxdone(%struct.queue_entry* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca %struct.rxdone_entry_desc*, align 8
  %5 = alloca %struct.skb_frame_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %4, align 8
  %10 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %11 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = call %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__* %12)
  store %struct.skb_frame_desc* %13, %struct.skb_frame_desc** %5, align 8
  %14 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %6, align 8
  %20 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %21 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.skb_frame_desc*, %struct.skb_frame_desc** %5, align 8
  %25 = getelementptr inbounds %struct.skb_frame_desc, %struct.skb_frame_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %22, i32* %23, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @rt2x00_desc_read(i32* %28, i32 0, i32* %8)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @RXINFO_W0_USB_DMA_RX_PKT_LEN, align 4
  %32 = call i32 @rt2x00_get_field32(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %34 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* @RXINFO_DESC_SIZE, align 4
  %37 = call i32 @skb_pull(%struct.TYPE_6__* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %43 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %41, %46
  br label %48

48:                                               ; preds = %40, %2
  %49 = phi i1 [ true, %2 ], [ %47, %40 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %55 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @rt2x00_err(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %160

61:                                               ; preds = %48
  %62 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %63 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @rt2x00_desc_read(i32* %71, i32 0, i32* %8)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @RXD_W0_CRC_ERROR, align 4
  %75 = call i32 @rt2x00_get_field32(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %61
  %78 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %79 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %80 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %61
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @RXD_W0_CIPHER_ERROR, align 4
  %86 = call i32 @rt2x00_get_field32(i32 %84, i32 %85)
  %87 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %88 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @RXD_W0_DECRYPTED, align 4
  %91 = call i32 @rt2x00_get_field32(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %129

93:                                               ; preds = %83
  %94 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %95 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %96 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %100 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %101 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %105 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RX_CRYPTO_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %93
  %110 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %111 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %112 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %128

115:                                              ; preds = %93
  %116 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %117 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @RX_CRYPTO_FAIL_MIC, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %123 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %124 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %115
  br label %128

128:                                              ; preds = %127, %109
  br label %129

129:                                              ; preds = %128, %83
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @RXD_W0_MY_BSS, align 4
  %132 = call i32 @rt2x00_get_field32(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load i32, i32* @RXDONE_MY_BSS, align 4
  %136 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %137 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %134, %129
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @RXD_W0_L2PAD, align 4
  %143 = call i32 @rt2x00_get_field32(i32 %141, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @RXDONE_L2PAD, align 4
  %147 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %148 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %153 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @skb_trim(%struct.TYPE_6__* %154, i32 %155)
  %157 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %158 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %4, align 8
  %159 = call i32 @rt2800_process_rxwi(%struct.queue_entry* %157, %struct.rxdone_entry_desc* %158)
  br label %160

160:                                              ; preds = %151, %53
  ret void
}

declare dso_local %struct.skb_frame_desc* @get_skb_frame_desc(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_err(i32, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rt2800_process_rxwi(%struct.queue_entry*, %struct.rxdone_entry_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
