; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_card_to_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_card_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.btmrvl_sdio_card*, %struct.hci_dev* }
%struct.btmrvl_sdio_card = type { i32, i32 }
%struct.hci_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32*, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"card or function is NULL!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"read rx_len failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDIO_HEADER_LEN = common dso_local global i32 0, align 4
@ALLOC_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid packet length: %d\00", align 1
@BTSDIO_DMA_ALIGN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"No free skb\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"readsb failed: %d\00", align 1
@HCI_VENDOR_PKT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknow packet type:%d\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*)* @btmrvl_sdio_card_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_card_to_host(%struct.btmrvl_private* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca %struct.btmrvl_sdio_card*, align 8
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %13 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  store %struct.hci_dev* %15, %struct.hci_dev** %10, align 8
  %16 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %17 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %18, align 8
  store %struct.btmrvl_sdio_card* %19, %struct.btmrvl_sdio_card** %11, align 8
  %20 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %11, align 8
  %21 = icmp ne %struct.btmrvl_sdio_card* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %11, align 8
  %24 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %1
  %28 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %214

31:                                               ; preds = %22
  %32 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %11, align 8
  %33 = call i32 @btmrvl_sdio_read_rx_len(%struct.btmrvl_sdio_card* %32, i32* %3)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %214

40:                                               ; preds = %31
  %41 = load i32, i32* @SDIO_BLOCK_SIZE, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SDIO_HEADER_LEN, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* @ALLOC_BUF_SIZE, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51, %40
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %214

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call %struct.sk_buff* @bt_skb_alloc(i32 %67, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %7, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = icmp eq %struct.sk_buff* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %214

74:                                               ; preds = %62
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = and i64 %78, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = ptrtoint i32* %88 to i64
  %90 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = and i64 %89, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @skb_put(%struct.sk_buff* %85, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = ptrtoint i32* %99 to i64
  %101 = load i32, i32* @BTSDIO_DMA_ALIGN, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = and i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = call i32 @skb_pull(%struct.sk_buff* %96, i32 %105)
  br label %107

107:                                              ; preds = %84, %74
  %108 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  store i32* %110, i32** %9, align 8
  %111 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %11, align 8
  %112 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %11, align 8
  %116 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = mul nsw i32 %118, %119
  %121 = call i32 @sdio_readsb(i32 %113, i32* %114, i32 %117, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %107
  %125 = load i32, i32* %4, align 4
  %126 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %214

129:                                              ; preds = %107
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %3, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %3, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  switch i32 %142, label %202 [
    i32 131, label %143
    i32 129, label %143
    i32 130, label %143
    i32 128, label %173
  ]

143:                                              ; preds = %129, %129, %129
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %145)
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  %148 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %149 = bitcast %struct.hci_dev* %148 to i8*
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 1
  store i8* %149, i8** %151, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @skb_put(%struct.sk_buff* %152, i32 %153)
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = load i32, i32* @SDIO_HEADER_LEN, align 4
  %157 = call i32 @skb_pull(%struct.sk_buff* %155, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %164

160:                                              ; preds = %143
  %161 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %163 = call i32 @btmrvl_check_evtpkt(%struct.btmrvl_private* %161, %struct.sk_buff* %162)
  br label %164

164:                                              ; preds = %160, %143
  %165 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %166 = call i32 @hci_recv_frame(%struct.sk_buff* %165)
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %169 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %167
  store i32 %172, i32* %170, align 4
  br label %213

173:                                              ; preds = %129
  %174 = load i32, i32* @HCI_VENDOR_PKT, align 4
  %175 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %176 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %175)
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 4
  %178 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %179 = bitcast %struct.hci_dev* %178 to i8*
  %180 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %183 = load i32, i32* %3, align 4
  %184 = call i32 @skb_put(%struct.sk_buff* %182, i32 %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %186 = load i32, i32* @SDIO_HEADER_LEN, align 4
  %187 = call i32 @skb_pull(%struct.sk_buff* %185, i32 %186)
  %188 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = call i32 @btmrvl_process_event(%struct.btmrvl_private* %188, %struct.sk_buff* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %173
  %193 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %194 = call i32 @hci_recv_frame(%struct.sk_buff* %193)
  br label %195

195:                                              ; preds = %192, %173
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %198 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, %196
  store i32 %201, i32* %199, align 4
  br label %213

202:                                              ; preds = %129
  %203 = load i32, i32* %8, align 4
  %204 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %5, align 4
  %209 = mul nsw i32 %207, %208
  %210 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 %205, i32* %206, i32 %209)
  %211 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %212 = call i32 @kfree_skb(%struct.sk_buff* %211)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %213

213:                                              ; preds = %202, %195, %164
  br label %214

214:                                              ; preds = %213, %124, %72, %57, %36, %27
  %215 = load i32, i32* %4, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %219 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %224 = icmp ne %struct.sk_buff* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %227 = call i32 @kfree_skb(%struct.sk_buff* %226)
  br label %228

228:                                              ; preds = %225, %217
  br label %229

229:                                              ; preds = %228, %214
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @btmrvl_sdio_read_rx_len(%struct.btmrvl_sdio_card*, i32*) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @sdio_readsb(i32, i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @btmrvl_check_evtpkt(%struct.btmrvl_private*, %struct.sk_buff*) #1

declare dso_local i32 @hci_recv_frame(%struct.sk_buff*) #1

declare dso_local i32 @btmrvl_process_event(%struct.btmrvl_private*, %struct.sk_buff*) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
