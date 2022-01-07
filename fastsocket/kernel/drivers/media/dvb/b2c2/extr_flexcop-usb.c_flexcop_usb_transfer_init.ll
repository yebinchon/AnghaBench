; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_transfer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_transfer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32, i32, %struct.urb**, i32*, i32, i32, %struct.TYPE_9__* }
%struct.urb = type { i32, i32, i32, %struct.TYPE_10__*, i32*, i32, i32, i32, %struct.flexcop_usb*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@B2C2_USB_NUM_ISO_URB = common dso_local global i32 0, align 4
@B2C2_USB_FRAMES_PER_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"creating %d iso-urbs with %d frames each of %d bytes size = %d.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"initializing and submitting urb no. %d (buf_offset: %d).\0A\00", align 1
@flexcop_usb_urb_complete = common dso_local global i32 0, align 4
@B2C2_USB_DATA_PIPE = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"urb no: %d, frame: %d, frame_offset: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"submitting urb %d failed with %d.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"submitted urb no. %d.\0A\00", align 1
@FC_SRAM_DEST_MEDIA = common dso_local global i32 0, align 4
@FC_SRAM_DEST_NET = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAO = common dso_local global i32 0, align 4
@FC_SRAM_DEST_CAI = common dso_local global i32 0, align 4
@FC_SRAM_DEST_TARGET_WAN_USB = common dso_local global i32 0, align 4
@FC_WAN_SPEED_8MBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_usb*)* @flexcop_usb_transfer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_transfer_init(%struct.flexcop_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.urb*, align 8
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %3, align 8
  %12 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %13 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %12, i32 0, i32 6
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le16_to_cpu(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %25 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %30 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %36 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %35, i32 0, i32 5
  %37 = call i32* @pci_alloc_consistent(i32* null, i32 %34, i32* %36)
  %38 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %39 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %41 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %219

47:                                               ; preds = %1
  %48 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %49 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @memset(i32* %50, i32 0, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %55 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %82, %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call %struct.urb* @usb_alloc_urb(i32 %61, i32 %62)
  %64 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %65 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %64, i32 0, i32 2
  %66 = load %struct.urb**, %struct.urb*** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.urb*, %struct.urb** %66, i64 %68
  store %struct.urb* %63, %struct.urb** %69, align 8
  %70 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %71 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %70, i32 0, i32 2
  %72 = load %struct.urb**, %struct.urb*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.urb*, %struct.urb** %72, i64 %74
  %76 = load %struct.urb*, %struct.urb** %75, align 8
  %77 = icmp eq %struct.urb* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %60
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %215

81:                                               ; preds = %60
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %56

85:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %190, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @B2C2_USB_NUM_ISO_URB, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %193

90:                                               ; preds = %86
  store i32 0, i32* %10, align 4
  %91 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %92 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %91, i32 0, i32 2
  %93 = load %struct.urb**, %struct.urb*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.urb*, %struct.urb** %93, i64 %95
  %97 = load %struct.urb*, %struct.urb** %96, align 8
  store %struct.urb* %97, %struct.urb** %11, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %102 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.urb*, %struct.urb** %11, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 9
  store i32 %103, i32* %105, align 8
  %106 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %107 = load %struct.urb*, %struct.urb** %11, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 8
  store %struct.flexcop_usb* %106, %struct.flexcop_usb** %108, align 8
  %109 = load i32, i32* @flexcop_usb_urb_complete, align 4
  %110 = load %struct.urb*, %struct.urb** %11, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @B2C2_USB_DATA_PIPE, align 4
  %113 = load %struct.urb*, %struct.urb** %11, align 8
  %114 = getelementptr inbounds %struct.urb, %struct.urb* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @URB_ISO_ASAP, align 4
  %116 = load %struct.urb*, %struct.urb** %11, align 8
  %117 = getelementptr inbounds %struct.urb, %struct.urb* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 8
  %118 = load %struct.urb*, %struct.urb** %11, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %121 = load %struct.urb*, %struct.urb** %11, align 8
  %122 = getelementptr inbounds %struct.urb, %struct.urb* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load %struct.urb*, %struct.urb** %11, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %129 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load %struct.urb*, %struct.urb** %11, align 8
  %135 = getelementptr inbounds %struct.urb, %struct.urb* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %169, %90
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @B2C2_USB_FRAMES_PER_ISO, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.urb*, %struct.urb** %11, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 3
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  store i32 %150, i32* %157, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.urb*, %struct.urb** %11, align 8
  %160 = getelementptr inbounds %struct.urb, %struct.urb* %159, i32 0, i32 3
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  store i32 %158, i32* %165, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %145
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %141

172:                                              ; preds = %141
  %173 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %174 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %173, i32 0, i32 2
  %175 = load %struct.urb**, %struct.urb*** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.urb*, %struct.urb** %175, i64 %177
  %179 = load %struct.urb*, %struct.urb** %178, align 8
  %180 = load i32, i32* @GFP_ATOMIC, align 4
  %181 = call i32 @usb_submit_urb(%struct.urb* %179, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %172
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %184, i32 %185)
  br label %215

187:                                              ; preds = %172
  %188 = load i32, i32* %6, align 4
  %189 = call i32 (i8*, i32, ...) @deb_ts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %86

193:                                              ; preds = %86
  %194 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %195 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @FC_SRAM_DEST_MEDIA, align 4
  %198 = load i32, i32* @FC_SRAM_DEST_NET, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @FC_SRAM_DEST_CAO, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @FC_SRAM_DEST_CAI, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @FC_SRAM_DEST_TARGET_WAN_USB, align 4
  %205 = call i32 @flexcop_sram_set_dest(i32 %196, i32 %203, i32 %204)
  %206 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %207 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @FC_WAN_SPEED_8MBITS, align 4
  %210 = call i32 @flexcop_wan_set_speed(i32 %208, i32 %209)
  %211 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %212 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @flexcop_sram_ctrl(i32 %213, i32 1, i32 1, i32 1)
  store i32 0, i32* %2, align 4
  br label %219

215:                                              ; preds = %183, %78
  %216 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %217 = call i32 @flexcop_usb_transfer_exit(%struct.flexcop_usb* %216)
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %2, align 4
  br label %219

219:                                              ; preds = %215, %193, %44
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @deb_ts(i8*, i32, ...) #1

declare dso_local i32* @pci_alloc_consistent(i32*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @flexcop_sram_set_dest(i32, i32, i32) #1

declare dso_local i32 @flexcop_wan_set_speed(i32, i32) #1

declare dso_local i32 @flexcop_sram_ctrl(i32, i32, i32, i32) #1

declare dso_local i32 @flexcop_usb_transfer_exit(%struct.flexcop_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
