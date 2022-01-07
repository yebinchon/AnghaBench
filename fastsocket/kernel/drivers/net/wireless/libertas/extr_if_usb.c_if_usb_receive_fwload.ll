; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_receive_fwload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c_if_usb_receive_fwload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, %struct.if_usb_card* }
%struct.if_usb_card = type { i32, i64, i32, i64, i32, %struct.TYPE_4__*, i32, %struct.sk_buff* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.fwsyncheader = type { i64, i64, i64, i64 }
%struct.bootcmdresp = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [37 x i8] c"URB status is failed during fw load\0A\00", align 1
@IPFIELD_ALIGN_OFFSET = common dso_local global i64 0, align 8
@CMD_TYPE_INDICATION = common dso_local global i32 0, align 4
@MACREG_INT_CODE_FIRMWARE_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Firmware ready event received\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Waiting for confirmation; got %x %x\0A\00", align 1
@BOOT_CMD_RESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Received valid boot command response\0A\00", align 1
@BOOT_CMD_MAGIC_NUMBER = common dso_local global i32 0, align 4
@CMD_TYPE_REQUEST = common dso_local global i32 0, align 4
@CMD_TYPE_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Firmware already seems alive; resetting\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"boot cmd response wrong magic number (0x%x)\0A\00", align 1
@BOOT_CMD_FW_BY_USB = common dso_local global i64 0, align 8
@BOOT_CMD_UPDATE_FW = common dso_local global i64 0, align 8
@BOOT_CMD_UPDATE_BOOT2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"boot cmd response cmd_tag error (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"boot cmd response result error (%d)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Failure to allocate syncfwheader\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"FW received Blk with correct CRC\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"FW received Blk seqnum = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"FW received Blk with CRC error\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @if_usb_receive_fwload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_receive_fwload(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.fwsyncheader*, align 8
  %6 = alloca %struct.bootcmdresp, align 8
  %7 = alloca i64*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load %struct.if_usb_card*, %struct.if_usb_card** %9, align 8
  store %struct.if_usb_card* %10, %struct.if_usb_card** %3, align 8
  %11 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %12 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %11, i32 0, i32 7
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %20 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @lbs_deb_usbd(i32* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  br label %264

26:                                               ; preds = %1
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = inttoptr i64 %36 to i64*
  store i64* %37, i64** %7, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @CMD_TYPE_INDICATION, align 4
  %42 = call i64 @cpu_to_le32(i32 %41)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %31
  %45 = load i64*, i64** %7, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @MACREG_INT_CODE_FIRMWARE_READY, align 4
  %49 = call i64 @cpu_to_le32(i32 %48)
  %50 = icmp eq i64 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %54 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %53, i32 0, i32 6
  %55 = call i32 @wake_up(i32* %54)
  br label %68

56:                                               ; preds = %44, %31
  %57 = load i64*, i64** %7, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @le32_to_cpu(i64 %59)
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @le32_to_cpu(i64 %63)
  %65 = call i32 @lbs_deb_usb(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %64)
  %66 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %67 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %66)
  br label %68

68:                                               ; preds = %56, %51
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @kfree_skb(%struct.sk_buff* %69)
  br label %264

71:                                               ; preds = %26
  %72 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %73 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %188

76:                                               ; preds = %71
  %77 = bitcast %struct.bootcmdresp* %6 to %struct.fwsyncheader*
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @memcpy(%struct.fwsyncheader* %77, i64 %82, i32 32)
  %84 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %85 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  %91 = icmp slt i32 %90, 12550
  br i1 %91, label %92, label %105

92:                                               ; preds = %76
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = call i32 @kfree_skb(%struct.sk_buff* %93)
  %95 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %96 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %95)
  %97 = load i64, i64* @BOOT_CMD_RESP_OK, align 8
  %98 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %99 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %101 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %100, i32 0, i32 5
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = call i32 @lbs_deb_usbd(i32* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %264

105:                                              ; preds = %76
  %106 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @BOOT_CMD_MAGIC_NUMBER, align 4
  %109 = call i64 @cpu_to_le32(i32 %108)
  %110 = icmp ne i64 %107, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @CMD_TYPE_REQUEST, align 4
  %115 = call i64 @cpu_to_le32(i32 %114)
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @CMD_TYPE_DATA, align 4
  %121 = call i64 @cpu_to_le32(i32 %120)
  %122 = icmp eq i64 %119, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @CMD_TYPE_INDICATION, align 4
  %127 = call i64 @cpu_to_le32(i32 %126)
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123, %117, %111
  %130 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %131 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  %137 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %138 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %137, i32 0, i32 1
  store i64 -1, i64* %138, align 8
  br label %144

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @le32_to_cpu(i64 %141)
  %143 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %139, %136
  br label %183

145:                                              ; preds = %105
  %146 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @BOOT_CMD_FW_BY_USB, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BOOT_CMD_UPDATE_FW, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @BOOT_CMD_UPDATE_BOOT2, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %162)
  br label %182

164:                                              ; preds = %155, %150, %145
  %165 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @BOOT_CMD_RESP_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.bootcmdresp, %struct.bootcmdresp* %6, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %171)
  br label %181

173:                                              ; preds = %164
  %174 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %175 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %174, i32 0, i32 1
  store i64 1, i64* %175, align 8
  %176 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %177 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %176, i32 0, i32 5
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = call i32 @lbs_deb_usbd(i32* %179, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %181

181:                                              ; preds = %173, %169
  br label %182

182:                                              ; preds = %181, %160
  br label %183

183:                                              ; preds = %182, %144
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = call i32 @kfree_skb(%struct.sk_buff* %184)
  %186 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %187 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %186)
  br label %264

188:                                              ; preds = %71
  %189 = load i32, i32* @GFP_ATOMIC, align 4
  %190 = call %struct.fwsyncheader* @kmalloc(i32 32, i32 %189)
  store %struct.fwsyncheader* %190, %struct.fwsyncheader** %5, align 8
  %191 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %192 = icmp ne %struct.fwsyncheader* %191, null
  br i1 %192, label %201, label %193

193:                                              ; preds = %188
  %194 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %195 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %194, i32 0, i32 5
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = call i32 @lbs_deb_usbd(i32* %197, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %199 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %200 = call i32 @kfree_skb(%struct.sk_buff* %199)
  br label %264

201:                                              ; preds = %188
  %202 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @IPFIELD_ALIGN_OFFSET, align 8
  %207 = add nsw i64 %205, %206
  %208 = call i32 @memcpy(%struct.fwsyncheader* %202, i64 %207, i32 32)
  %209 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %210 = getelementptr inbounds %struct.fwsyncheader, %struct.fwsyncheader* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %230, label %213

213:                                              ; preds = %201
  %214 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %215 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %214, i32 0, i32 5
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %219 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %220 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %219, i32 0, i32 5
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %224 = getelementptr inbounds %struct.fwsyncheader, %struct.fwsyncheader* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @le32_to_cpu(i64 %225)
  %227 = call i32 (i32*, i8*, ...) @lbs_deb_usb2(i32* %222, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %226)
  %228 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %229 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %228, i32 0, i32 2
  store i32 1, i32* %229, align 8
  br label %238

230:                                              ; preds = %201
  %231 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %232 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %231, i32 0, i32 5
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = call i32 @lbs_deb_usbd(i32* %234, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %236 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %237 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %236, i32 0, i32 2
  store i32 0, i32* %237, align 8
  br label %238

238:                                              ; preds = %230, %213
  %239 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %240 = call i32 @kfree_skb(%struct.sk_buff* %239)
  %241 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %242 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %241, i32 0, i32 4
  %243 = load i64, i64* @jiffies, align 8
  %244 = load i32, i32* @HZ, align 4
  %245 = mul nsw i32 %244, 5
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %243, %246
  %248 = call i32 @mod_timer(i32* %242, i64 %247)
  %249 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %250 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %238
  %254 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %255 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %254, i32 0, i32 0
  store i32 1, i32* %255, align 8
  br label %259

256:                                              ; preds = %238
  %257 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %258 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %257)
  br label %259

259:                                              ; preds = %256, %253
  %260 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %261 = call i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %260)
  %262 = load %struct.fwsyncheader*, %struct.fwsyncheader** %5, align 8
  %263 = call i32 @kfree(%struct.fwsyncheader* %262)
  br label %264

264:                                              ; preds = %259, %193, %183, %92, %68, %18
  ret void
}

declare dso_local i32 @lbs_deb_usbd(i32*, i8*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @lbs_pr_info(i8*, ...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lbs_deb_usb(i8*, i64, i64) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @memcpy(%struct.fwsyncheader*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.fwsyncheader* @kmalloc(i32, i32) #1

declare dso_local i32 @lbs_deb_usb2(i32*, i8*, ...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @kfree(%struct.fwsyncheader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
