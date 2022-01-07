; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { i32, %struct.net_device*, %struct.TYPE_3__, %struct.urb*, i64*, i32, i32 }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32, i32 }

@MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No memory left for URBs\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@ems_usb_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"couldn't setup read URBs\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"rx performance may be slow\0A\00", align 1
@INTR_IN_BUFFER_SIZE = common dso_local global i32 0, align 4
@ems_usb_read_interrupt_callback = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"intr URB submit failed: %d\0A\00", align 1
@CONTR_CAN_MESSAGE = common dso_local global i32 0, align 4
@CONTR_CONT_ON = common dso_local global i32 0, align 4
@CONTR_CAN_STATE = common dso_local global i32 0, align 4
@CONTR_BUS_ERROR = common dso_local global i32 0, align 4
@SJA1000_MOD_NORMAL = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"couldn't submit control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ems_usb*)* @ems_usb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_start(%struct.ems_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32*, align 8
  store %struct.ems_usb* %0, %struct.ems_usb** %3, align 8
  %9 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %9, i32 0, i32 1
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %13 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %17 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %16, i32 0, i32 0
  store i32 15, i32* %17, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %109, %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_RX_URBS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %112

22:                                               ; preds = %18
  store %struct.urb* null, %struct.urb** %7, align 8
  store i32* null, i32** %8, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %23)
  store %struct.urb* %24, %struct.urb** %7, align 8
  %25 = load %struct.urb*, %struct.urb** %7, align 8
  %26 = icmp ne %struct.urb* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %22
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %232

35:                                               ; preds = %22
  %36 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %37 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load %struct.urb*, %struct.urb** %7, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = call i32* @usb_buffer_alloc(i32 %38, i32 %39, i32 %40, i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %35
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.urb*, %struct.urb** %7, align 8
  %53 = call i32 @usb_free_urb(%struct.urb* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %232

56:                                               ; preds = %35
  %57 = load %struct.urb*, %struct.urb** %7, align 8
  %58 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %59 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %62 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_rcvbulkpipe(i32 %63, i32 2)
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %67 = load i32, i32* @ems_usb_read_bulk_callback, align 4
  %68 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %69 = call i32 @usb_fill_bulk_urb(%struct.urb* %57, i32 %60, i32 %64, i32* %65, i32 %66, i32 %67, %struct.ems_usb* %68)
  %70 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %71 = load %struct.urb*, %struct.urb** %7, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.urb*, %struct.urb** %7, align 8
  %76 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %77 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %76, i32 0, i32 6
  %78 = call i32 @usb_anchor_urb(%struct.urb* %75, i32* %77)
  %79 = load %struct.urb*, %struct.urb** %7, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @usb_submit_urb(%struct.urb* %79, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %56
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %91 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %90, i32 0, i32 1
  %92 = load %struct.net_device*, %struct.net_device** %91, align 8
  %93 = call i32 @netif_device_detach(%struct.net_device* %92)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load %struct.urb*, %struct.urb** %7, align 8
  %96 = call i32 @usb_unanchor_urb(%struct.urb* %95)
  %97 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %98 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.urb*, %struct.urb** %7, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @usb_buffer_free(i32 %99, i32 %100, i32* %101, i32 %104)
  br label %112

106:                                              ; preds = %56
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = call i32 @usb_free_urb(%struct.urb* %107)
  br label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %18

112:                                              ; preds = %94, %18
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @dev_warn(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %232

122:                                              ; preds = %112
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @MAX_RX_URBS, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @dev_warn(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %132

132:                                              ; preds = %126, %122
  %133 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %134 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %133, i32 0, i32 3
  %135 = load %struct.urb*, %struct.urb** %134, align 8
  %136 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %137 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %140 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @usb_rcvintpipe(i32 %141, i32 1)
  %143 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %144 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* @INTR_IN_BUFFER_SIZE, align 4
  %147 = load i32, i32* @ems_usb_read_interrupt_callback, align 4
  %148 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %149 = call i32 @usb_fill_int_urb(%struct.urb* %135, i32 %138, i32 %142, i64* %145, i32 %146, i32 %147, %struct.ems_usb* %148, i32 1)
  %150 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %151 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %150, i32 0, i32 3
  %152 = load %struct.urb*, %struct.urb** %151, align 8
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i32 @usb_submit_urb(%struct.urb* %152, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %132
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %164 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %163, i32 0, i32 1
  %165 = load %struct.net_device*, %struct.net_device** %164, align 8
  %166 = call i32 @netif_device_detach(%struct.net_device* %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 (i32, i8*, ...) @dev_warn(i32 %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %232

175:                                              ; preds = %132
  %176 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %177 = load i32, i32* @CONTR_CAN_MESSAGE, align 4
  %178 = load i32, i32* @CONTR_CONT_ON, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @ems_usb_control_cmd(%struct.ems_usb* %176, i32 %179)
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %214

184:                                              ; preds = %175
  %185 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %186 = load i32, i32* @CONTR_CAN_STATE, align 4
  %187 = load i32, i32* @CONTR_CONT_ON, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @ems_usb_control_cmd(%struct.ems_usb* %185, i32 %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %214

193:                                              ; preds = %184
  %194 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %195 = load i32, i32* @CONTR_BUS_ERROR, align 4
  %196 = load i32, i32* @CONTR_CONT_ON, align 4
  %197 = or i32 %195, %196
  %198 = call i32 @ems_usb_control_cmd(%struct.ems_usb* %194, i32 %197)
  store i32 %198, i32* %5, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %214

202:                                              ; preds = %193
  %203 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %204 = load i32, i32* @SJA1000_MOD_NORMAL, align 4
  %205 = call i32 @ems_usb_write_mode(%struct.ems_usb* %203, i32 %204)
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %214

209:                                              ; preds = %202
  %210 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %211 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %212 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  store i32 0, i32* %2, align 4
  br label %232

214:                                              ; preds = %208, %201, %192, %183
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @ENODEV, align 4
  %217 = sub nsw i32 0, %216
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %221 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %220, i32 0, i32 1
  %222 = load %struct.net_device*, %struct.net_device** %221, align 8
  %223 = call i32 @netif_device_detach(%struct.net_device* %222)
  br label %224

224:                                              ; preds = %219, %214
  %225 = load %struct.net_device*, %struct.net_device** %4, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %5, align 4
  %230 = call i32 (i32, i8*, ...) @dev_warn(i32 %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %224, %209, %167, %115, %46, %27
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32* @usb_buffer_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.ems_usb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i64*, i32, i32, %struct.ems_usb*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @ems_usb_control_cmd(%struct.ems_usb*, i32) #1

declare dso_local i32 @ems_usb_write_mode(%struct.ems_usb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
