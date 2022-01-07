; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c___if_usb_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_if_usb.c___if_usb_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i64, i32, i32, %struct.TYPE_5__*, i64, i32, i32, i64, i32, i64, i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@__if_usb_prog_firmware.reset_count = internal global i32 10, align 4
@LBS_DEB_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"request_firmware() failed with %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"firmware %s not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"URB submission is failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BOOT_CMD_RESP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to load fw, resetting device!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"FW download failure, time = %d ms\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*, i8*, i32)* @__if_usb_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__if_usb_prog_firmware(%struct.if_usb_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.if_usb_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @LBS_DEB_USB, align 4
  %11 = call i32 @lbs_deb_enter(i32 %10)
  %12 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %13 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %12, i32 0, i32 3
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %16 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %15, i32 0, i32 13
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @request_firmware(%struct.TYPE_5__** %13, i8* %14, i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i8*, ...) @lbs_pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, ...) @lbs_pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %214

27:                                               ; preds = %3
  %28 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %29 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %28, i32 0, i32 3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %34 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @check_fwfile_format(i32 %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %207

43:                                               ; preds = %27
  %44 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %45 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_kill_urb(i32 %46)
  %48 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %49 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_kill_urb(i32 %50)
  %52 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %53 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %52, i32 0, i32 11
  store i64 0, i64* %53, align 8
  %54 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %55 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %57 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %59 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %58, i32 0, i32 9
  store i64 0, i64* %59, align 8
  %60 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %61 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %197, %141, %43
  %63 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %64 = call i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %68 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %67, i32 0, i32 13
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @lbs_deb_usbd(i32* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %207

74:                                               ; preds = %62
  %75 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %76 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %106, %74
  store i32 0, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  %80 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @if_usb_issue_boot_command(%struct.if_usb_card* %80, i32 %81)
  br label %83

83:                                               ; preds = %95, %77
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = call i32 @msleep_interruptible(i32 100)
  br label %87

87:                                               ; preds = %83
  %88 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %89 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 10
  br label %95

95:                                               ; preds = %92, %87
  %96 = phi i1 [ false, %87 ], [ %94, %92 ]
  br i1 %96, label %83, label %97

97:                                               ; preds = %95
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %100 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 5
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi i1 [ false, %98 ], [ %105, %103 ]
  br i1 %107, label %77, label %108

108:                                              ; preds = %106
  %109 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %110 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BOOT_CMD_RESP_NOT_SUPPORTED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %108
  %115 = load i32, i32* @EOPNOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  %117 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %118 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @usb_kill_urb(i32 %119)
  %121 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %122 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @usb_kill_urb(i32 %123)
  %125 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %126 = call i64 @if_usb_submit_rx_urb(%struct.if_usb_card* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %114
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %128, %114
  br label %207

132:                                              ; preds = %108
  %133 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %134 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp sle i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load i32, i32* @__if_usb_prog_firmware.reset_count, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* @__if_usb_prog_firmware.reset_count, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %143 = call i32 @if_usb_reset_device(%struct.if_usb_card* %142)
  br label %62

144:                                              ; preds = %137
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %8, align 4
  br label %207

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147
  store i32 0, i32* %7, align 4
  %149 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %150 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %149, i32 0, i32 10
  store i64 0, i64* %150, align 8
  %151 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %152 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %151, i32 0, i32 11
  store i64 0, i64* %152, align 8
  %153 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %154 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %153, i32 0, i32 1
  store i32 1, i32* %154, align 8
  %155 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %156 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %158 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %157, i32 0, i32 2
  store i32 -1, i32* %158, align 4
  %159 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %160 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %159, i32 0, i32 10
  store i64 0, i64* %160, align 8
  %161 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %162 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %161, i32 0, i32 9
  store i64 0, i64* %162, align 8
  %163 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %164 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %163)
  %165 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %166 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %169 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %168, i32 0, i32 7
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %148
  %173 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %174 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %172, %148
  %178 = phi i1 [ true, %148 ], [ %176, %172 ]
  %179 = zext i1 %178 to i32
  %180 = call i32 @wait_event_interruptible(i32 %167, i32 %179)
  %181 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %182 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %181, i32 0, i32 6
  %183 = call i32 @del_timer_sync(i32* %182)
  %184 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %185 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @usb_kill_urb(i32 %186)
  %188 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %189 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %177
  %193 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* @__if_usb_prog_firmware.reset_count, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* @__if_usb_prog_firmware.reset_count, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %199 = call i32 @if_usb_reset_device(%struct.if_usb_card* %198)
  br label %62

200:                                              ; preds = %192
  %201 = load i32, i32* %7, align 4
  %202 = mul nsw i32 %201, 100
  %203 = call i32 (i8*, ...) @lbs_pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* @EIO, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %8, align 4
  br label %207

206:                                              ; preds = %177
  br label %207

207:                                              ; preds = %206, %200, %144, %131, %66, %40
  %208 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %209 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %208, i32 0, i32 3
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = call i32 @release_firmware(%struct.TYPE_5__* %210)
  %212 = load %struct.if_usb_card*, %struct.if_usb_card** %4, align 8
  %213 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %212, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %213, align 8
  br label %214

214:                                              ; preds = %207, %22
  %215 = load i32, i32* @LBS_DEB_USB, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 @lbs_deb_leave_args(i32 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* %8, align 4
  ret i32 %218
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_5__**, i8*, i32*) #1

declare dso_local i32 @lbs_pr_err(i8*, ...) #1

declare dso_local i64 @check_fwfile_format(i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @lbs_deb_usbd(i32*, i8*) #1

declare dso_local i32 @if_usb_issue_boot_command(%struct.if_usb_card*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @if_usb_submit_rx_urb(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_reset_device(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @lbs_pr_info(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_5__*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
