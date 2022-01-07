; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_fill_tx_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_fill_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdc_ncm_ctx = type { i32, i64, i64, %struct.sk_buff*, %struct.TYPE_9__*, %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.sk_buff*, %struct.sk_buff*, i64, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.sk_buff = type { i32, i64 }
%struct.usb_cdc_ncm_nth16 = type { i8*, i8*, i8*, i32 }
%struct.usb_cdc_ncm_ndp16 = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_CDC_NCM_NTH16_SIGN = common dso_local global i32 0, align 4
@CDC_NCM_DPT_DATAGRAMS_MAX = common dso_local global i64 0, align 8
@CDC_NCM_RESTART_TIMER_DATAGRAM_CNT = common dso_local global i64 0, align 8
@CDC_NCM_TIMER_PENDING_CNT = common dso_local global i32 0, align 4
@CDC_NCM_MIN_TX_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @cdc_ncm_fill_tx_frame(%struct.cdc_ncm_ctx* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.cdc_ncm_ctx*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.usb_cdc_ncm_nth16*, align 8
  %9 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.cdc_ncm_ctx* %0, %struct.cdc_ncm_ctx** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %19, i32 0, i32 9
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %22 = call i32 @swap(%struct.sk_buff* %18, %struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %24, i32 0, i32 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  %27 = call i32 @swap(%struct.sk_buff* %23, %struct.sk_buff* %26)
  br label %29

28:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %30, i32 0, i32 3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %31, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %80, label %35

35:                                               ; preds = %29
  %36 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call %struct.sk_buff* @alloc_skb(i32 %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %10, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = icmp eq %struct.sk_buff* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %35
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = icmp ne %struct.sk_buff* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %48)
  %50 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %50, i32 0, i32 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47, %44
  br label %373

58:                                               ; preds = %35
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = call i64* @skb_put(%struct.sk_buff* %59, i32 32)
  %61 = call i64 @memset(i64* %60, i32 0, i32 32)
  %62 = inttoptr i64 %61 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %62, %struct.usb_cdc_ncm_nth16** %8, align 8
  %63 = load i32, i32* @USB_CDC_NCM_NTH16_SIGN, align 4
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %8, align 8
  %66 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = call i8* @cpu_to_le16(i64 32)
  %68 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %8, align 8
  %69 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = sext i32 %72 to i64
  %75 = call i8* @cpu_to_le16(i64 %74)
  %76 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %8, align 8
  %77 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %58, %29
  %81 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %82 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %241, %80
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %244

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = icmp eq %struct.sk_buff* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %94, i32 0, i32 9
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  store %struct.sk_buff* %96, %struct.sk_buff** %6, align 8
  %97 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %97, i32 0, i32 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  store %struct.sk_buff* %99, %struct.sk_buff** %7, align 8
  %100 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %100, i32 0, i32 9
  store %struct.sk_buff* null, %struct.sk_buff** %101, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %103 = icmp eq %struct.sk_buff* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %244

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %90
  %107 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %115 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %114, i32 0, i32 11
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %118, i32 0, i32 10
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = call %struct.usb_cdc_ncm_ndp16* @cdc_ncm_ndp(%struct.cdc_ncm_ctx* %107, %struct.sk_buff* %108, %struct.sk_buff* %109, i64 %121)
  store %struct.usb_cdc_ncm_ndp16* %122, %struct.usb_cdc_ncm_ndp16** %9, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %125 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %124, i32 0, i32 11
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %128 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %127, i32 0, i32 10
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %131 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @cdc_ncm_align_tail(%struct.sk_buff* %123, i64 %126, i64 %129, i32 %132)
  %134 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %9, align 8
  %135 = icmp ne %struct.usb_cdc_ncm_ndp16* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %106
  %137 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %139, %142
  %144 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %145 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %186

148:                                              ; preds = %136, %106
  %149 = load i64, i64* %11, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %152)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %154 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %155 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %154, i32 0, i32 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %185

161:                                              ; preds = %148
  %162 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %163 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %162, i32 0, i32 9
  %164 = load %struct.sk_buff*, %struct.sk_buff** %163, align 8
  %165 = icmp ne %struct.sk_buff* %164, null
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %168 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %167, i32 0, i32 9
  %169 = load %struct.sk_buff*, %struct.sk_buff** %168, align 8
  %170 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %169)
  %171 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %172 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %171, i32 0, i32 4
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %166, %161
  %179 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %180 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %181 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %180, i32 0, i32 9
  store %struct.sk_buff* %179, %struct.sk_buff** %181, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %183 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %184 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %183, i32 0, i32 8
  store %struct.sk_buff* %182, %struct.sk_buff** %184, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store i32 1, i32* %14, align 4
  br label %185

185:                                              ; preds = %178, %151
  br label %244

186:                                              ; preds = %136
  %187 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %9, align 8
  %188 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @le16_to_cpu(i8* %189)
  store i64 %190, i64* %13, align 8
  %191 = load i64, i64* %13, align 8
  %192 = sub i64 %191, 16
  %193 = udiv i64 %192, 4
  %194 = sub i64 %193, 1
  store i64 %194, i64* %12, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = call i8* @cpu_to_le16(i64 %198)
  %200 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %9, align 8
  %201 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %200, i32 0, i32 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = load i64, i64* %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  store i8* %199, i8** %205, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = call i8* @cpu_to_le16(i64 %209)
  %211 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %9, align 8
  %212 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %211, i32 0, i32 1
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = load i64, i64* %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  store i8* %210, i8** %216, align 8
  %217 = load i64, i64* %13, align 8
  %218 = add i64 %217, 4
  %219 = call i8* @cpu_to_le16(i64 %218)
  %220 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %9, align 8
  %221 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %220, i32 0, i32 0
  store i8* %219, i8** %221, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i64* @skb_put(%struct.sk_buff* %222, i32 %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %228 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @memcpy(i64* %226, i64 %229, i32 %232)
  %234 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %235 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %234)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* @CDC_NCM_DPT_DATAGRAMS_MAX, align 8
  %238 = icmp sge i64 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %186
  store i32 1, i32* %14, align 4
  br label %244

240:                                              ; preds = %186
  br label %241

241:                                              ; preds = %240
  %242 = load i64, i64* %11, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %11, align 8
  br label %84

244:                                              ; preds = %239, %185, %104, %84
  %245 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %246 = icmp ne %struct.sk_buff* %245, null
  br i1 %246, label %247, label %257

247:                                              ; preds = %244
  %248 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %249 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %248)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %250 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %251 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %250, i32 0, i32 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %247, %244
  %258 = load i64, i64* %11, align 8
  %259 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %260 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  %261 = load i64, i64* %11, align 8
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %257
  %264 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %265 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %266 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %265, i32 0, i32 3
  store %struct.sk_buff* %264, %struct.sk_buff** %266, align 8
  br label %373

267:                                              ; preds = %257
  %268 = load i64, i64* %11, align 8
  %269 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %270 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %267
  %274 = load i32, i32* %14, align 4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %273
  %277 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %278 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %279 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %278, i32 0, i32 3
  store %struct.sk_buff* %277, %struct.sk_buff** %279, align 8
  %280 = load i64, i64* %11, align 8
  %281 = load i64, i64* @CDC_NCM_RESTART_TIMER_DATAGRAM_CNT, align 8
  %282 = icmp slt i64 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %276
  %284 = load i32, i32* @CDC_NCM_TIMER_PENDING_CNT, align 4
  %285 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %286 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %285, i32 0, i32 7
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %283, %276
  br label %373

288:                                              ; preds = %273, %267
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  %291 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @CDC_NCM_MIN_TX_PKT, align 4
  %295 = icmp sgt i32 %293, %294
  br i1 %295, label %296, label %314

296:                                              ; preds = %290
  %297 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %298 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %299 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %302 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sub nsw i32 %300, %303
  %305 = call i64* @skb_put(%struct.sk_buff* %297, i32 %304)
  %306 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %307 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %310 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 %308, %311
  %313 = call i64 @memset(i64* %305, i32 0, i32 %312)
  br label %314

314:                                              ; preds = %296, %290
  %315 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %316 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = sext i32 %317 to i64
  %319 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %320 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %319, i32 0, i32 6
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i64 @le16_to_cpu(i8* %324)
  %326 = srem i64 %318, %325
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %346

328:                                              ; preds = %314
  %329 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %330 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = sext i32 %331 to i64
  %333 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %334 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %333, i32 0, i32 5
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @le32_to_cpu(i32 %336)
  %338 = icmp slt i64 %332, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %328
  %340 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %341 = call i64 @skb_tailroom(%struct.sk_buff* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %339
  %344 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %345 = call i64* @skb_put(%struct.sk_buff* %344, i32 1)
  store i64 0, i64* %345, align 8
  br label %346

346:                                              ; preds = %343, %339, %328, %314
  %347 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %348 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = inttoptr i64 %349 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %350, %struct.usb_cdc_ncm_nth16** %8, align 8
  %351 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %352 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = call i8* @cpu_to_le16(i64 %354)
  %356 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %8, align 8
  %357 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %356, i32 0, i32 0
  store i8* %355, i8** %357, align 8
  %358 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %359 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %358, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %359, align 8
  %360 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %361 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %364 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %363, i32 0, i32 4
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %362
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %367, align 4
  %372 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %372, %struct.sk_buff** %4, align 8
  br label %382

373:                                              ; preds = %287, %263, %57
  %374 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %375 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %374, i32 0, i32 3
  %376 = load %struct.sk_buff*, %struct.sk_buff** %375, align 8
  %377 = icmp ne %struct.sk_buff* %376, null
  br i1 %377, label %378, label %381

378:                                              ; preds = %373
  %379 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %5, align 8
  %380 = call i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx* %379)
  br label %381

381:                                              ; preds = %378, %373
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %382

382:                                              ; preds = %381, %346
  %383 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %383
}

declare dso_local i32 @swap(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @memset(i64*, i32, i32) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.usb_cdc_ncm_ndp16* @cdc_ncm_ndp(%struct.cdc_ncm_ctx*, %struct.sk_buff*, %struct.sk_buff*, i64) #1

declare dso_local i32 @cdc_ncm_align_tail(%struct.sk_buff*, i64, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
