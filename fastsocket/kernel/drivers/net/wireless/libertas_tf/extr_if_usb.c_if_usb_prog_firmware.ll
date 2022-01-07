; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_prog_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_if_usb.c_if_usb_prog_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i64, i32, i32, i32, i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@if_usb_prog_firmware.reset_count = internal global i32 10, align 4
@LBTF_DEB_USB = common dso_local global i32 0, align 4
@fw_name = common dso_local global i32 0, align 4
@lbtf_fw_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"request_firmware() failed with %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"firmware %s not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"URB submission is failed\0A\00", align 1
@BOOT_CMD_FW_BY_USB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to load fw, resetting device!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"FW download failure, time = %d ms\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_usb_card*)* @if_usb_prog_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_usb_prog_firmware(%struct.if_usb_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.if_usb_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.if_usb_card* %0, %struct.if_usb_card** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @LBTF_DEB_USB, align 4
  %8 = call i32 @lbtf_deb_enter(i32 %7)
  %9 = load i32, i32* @fw_name, align 4
  %10 = call i32 @kparam_block_sysfs_write(i32 %9)
  %11 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %12 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %11, i32 0, i32 4
  %13 = load i32, i32* @lbtf_fw_name, align 4
  %14 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %15 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %14, i32 0, i32 12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.TYPE_6__** %12, i32 %13, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @lbtf_fw_name, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @fw_name, align 4
  %27 = call i32 @kparam_unblock_sysfs_write(i32 %26)
  br label %176

28:                                               ; preds = %1
  %29 = load i32, i32* @fw_name, align 4
  %30 = call i32 @kparam_unblock_sysfs_write(i32 %29)
  %31 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %32 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %31, i32 0, i32 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %37 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @check_fwfile_format(i32 %35, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %28
  br label %165

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %153, %98, %44
  %46 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %47 = call i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %51 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %50, i32 0, i32 12
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @lbtf_deb_usbd(i32* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %165

55:                                               ; preds = %45
  %56 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %57 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %87, %55
  store i32 0, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  %61 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %62 = load i32, i32* @BOOT_CMD_FW_BY_USB, align 4
  %63 = call i32 @if_usb_issue_boot_command(%struct.if_usb_card* %61, i32 %62)
  br label %64

64:                                               ; preds = %76, %58
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = call i32 @msleep_interruptible(i32 100)
  br label %68

68:                                               ; preds = %64
  %69 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %70 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 10
  br label %76

76:                                               ; preds = %73, %68
  %77 = phi i1 [ false, %68 ], [ %75, %73 ]
  br i1 %77, label %64, label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %81 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 5
  br label %87

87:                                               ; preds = %84, %79
  %88 = phi i1 [ false, %79 ], [ %86, %84 ]
  br i1 %88, label %58, label %89

89:                                               ; preds = %87
  %90 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %91 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* @if_usb_prog_firmware.reset_count, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* @if_usb_prog_firmware.reset_count, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %100 = call i32 @if_usb_reset_device(%struct.if_usb_card* %99)
  br label %45

101:                                              ; preds = %94
  store i32 -1, i32* %2, align 4
  br label %181

102:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  %103 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %104 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %103, i32 0, i32 10
  store i64 0, i64* %104, align 8
  %105 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %106 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %105, i32 0, i32 11
  store i64 0, i64* %106, align 8
  %107 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %108 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %107, i32 0, i32 1
  store i32 1, i32* %108, align 8
  %109 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %110 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %109, i32 0, i32 5
  store i64 0, i64* %110, align 8
  %111 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %112 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %111, i32 0, i32 2
  store i32 -1, i32* %112, align 4
  %113 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %114 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %113, i32 0, i32 10
  store i64 0, i64* %114, align 8
  %115 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %116 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %115, i32 0, i32 9
  store i64 0, i64* %116, align 8
  %117 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %118 = call i32 @if_usb_send_fw_pkt(%struct.if_usb_card* %117)
  %119 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %120 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %123 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %122, i32 0, i32 3
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %102
  %129 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %130 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %128, %102
  %134 = phi i1 [ true, %102 ], [ %132, %128 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @wait_event_interruptible(i32 %121, i32 %135)
  %137 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %138 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %137, i32 0, i32 7
  %139 = call i32 @del_timer_sync(i32* %138)
  %140 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %141 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @usb_kill_urb(i32 %142)
  %144 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %145 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %133
  %149 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @if_usb_prog_firmware.reset_count, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* @if_usb_prog_firmware.reset_count, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %155 = call i32 @if_usb_reset_device(%struct.if_usb_card* %154)
  br label %45

156:                                              ; preds = %148
  %157 = load i32, i32* %4, align 4
  %158 = mul nsw i32 %157, 100
  %159 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  store i32 -1, i32* %5, align 4
  br label %165

160:                                              ; preds = %133
  %161 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %162 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %161, i32 0, i32 3
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  br label %165

165:                                              ; preds = %160, %156, %49, %43
  %166 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %167 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = call i32 @release_firmware(%struct.TYPE_6__* %168)
  %170 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %171 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %170, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %171, align 8
  %172 = load %struct.if_usb_card*, %struct.if_usb_card** %3, align 8
  %173 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %172, i32 0, i32 3
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = call i32 @if_usb_setup_firmware(%struct.TYPE_7__* %174)
  br label %176

176:                                              ; preds = %165, %21
  %177 = load i32, i32* @LBTF_DEB_USB, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @lbtf_deb_leave_args(i32 %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %176, %101
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @kparam_block_sysfs_write(i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kparam_unblock_sysfs_write(i32) #1

declare dso_local i64 @check_fwfile_format(i32, i32) #1

declare dso_local i64 @if_usb_submit_rx_urb_fwload(%struct.if_usb_card*) #1

declare dso_local i32 @lbtf_deb_usbd(i32*, i8*) #1

declare dso_local i32 @if_usb_issue_boot_command(%struct.if_usb_card*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @if_usb_reset_device(%struct.if_usb_card*) #1

declare dso_local i32 @if_usb_send_fw_pkt(%struct.if_usb_card*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.TYPE_6__*) #1

declare dso_local i32 @if_usb_setup_firmware(%struct.TYPE_7__*) #1

declare dso_local i32 @lbtf_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
