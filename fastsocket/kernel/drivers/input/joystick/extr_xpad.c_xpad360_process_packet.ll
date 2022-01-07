; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad360_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad360_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MAP_DPAD_TO_AXES = common dso_local global i64 0, align 8
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@MAP_DPAD_TO_BUTTONS = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_TL = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_MODE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, i32, i8*)* @xpad360_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad360_process_packet(%struct.usb_xpad* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usb_xpad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %9 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %7, align 8
  %11 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %12 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAP_DPAD_TO_AXES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = load i32, i32* @ABS_HAT0X, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sub nsw i32 %27, %36
  %38 = trunc i32 %37 to i8
  %39 = call i32 @input_report_abs(%struct.input_dev* %17, i32 %18, i8 zeroext %38)
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = load i32, i32* @ABS_HAT0Y, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sub nsw i32 %50, %59
  %61 = trunc i32 %60 to i8
  %62 = call i32 @input_report_abs(%struct.input_dev* %40, i32 %41, i8 zeroext %61)
  br label %107

63:                                               ; preds = %3
  %64 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %65 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MAP_DPAD_TO_BUTTONS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %63
  %70 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %71 = load i32, i32* @BTN_LEFT, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 4
  %77 = trunc i32 %76 to i8
  %78 = call i32 @input_report_key(%struct.input_dev* %70, i32 %71, i8 zeroext %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %80 = load i32, i32* @BTN_RIGHT, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 8
  %86 = trunc i32 %85 to i8
  %87 = call i32 @input_report_key(%struct.input_dev* %79, i32 %80, i8 zeroext %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %89 = load i32, i32* @BTN_0, align 4
  %90 = load i8*, i8** %6, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %93, 1
  %95 = trunc i32 %94 to i8
  %96 = call i32 @input_report_key(%struct.input_dev* %88, i32 %89, i8 zeroext %95)
  %97 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %98 = load i32, i32* @BTN_1, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 2
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 2
  %104 = trunc i32 %103 to i8
  %105 = call i32 @input_report_key(%struct.input_dev* %97, i32 %98, i8 zeroext %104)
  br label %106

106:                                              ; preds = %69, %63
  br label %107

107:                                              ; preds = %106, %16
  %108 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %109 = load i32, i32* @BTN_START, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, 16
  %115 = trunc i32 %114 to i8
  %116 = call i32 @input_report_key(%struct.input_dev* %108, i32 %109, i8 zeroext %115)
  %117 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %118 = load i32, i32* @BTN_BACK, align 4
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 32
  %124 = trunc i32 %123 to i8
  %125 = call i32 @input_report_key(%struct.input_dev* %117, i32 %118, i8 zeroext %124)
  %126 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %127 = load i32, i32* @BTN_THUMBL, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 64
  %133 = trunc i32 %132 to i8
  %134 = call i32 @input_report_key(%struct.input_dev* %126, i32 %127, i8 zeroext %133)
  %135 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %136 = load i32, i32* @BTN_THUMBR, align 4
  %137 = load i8*, i8** %6, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 128
  %142 = trunc i32 %141 to i8
  %143 = call i32 @input_report_key(%struct.input_dev* %135, i32 %136, i8 zeroext %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %145 = load i32, i32* @BTN_A, align 4
  %146 = load i8*, i8** %6, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = and i32 %149, 16
  %151 = trunc i32 %150 to i8
  %152 = call i32 @input_report_key(%struct.input_dev* %144, i32 %145, i8 zeroext %151)
  %153 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %154 = load i32, i32* @BTN_B, align 4
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 3
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 32
  %160 = trunc i32 %159 to i8
  %161 = call i32 @input_report_key(%struct.input_dev* %153, i32 %154, i8 zeroext %160)
  %162 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %163 = load i32, i32* @BTN_X, align 4
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 64
  %169 = trunc i32 %168 to i8
  %170 = call i32 @input_report_key(%struct.input_dev* %162, i32 %163, i8 zeroext %169)
  %171 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %172 = load i32, i32* @BTN_Y, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 128
  %178 = trunc i32 %177 to i8
  %179 = call i32 @input_report_key(%struct.input_dev* %171, i32 %172, i8 zeroext %178)
  %180 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %181 = load i32, i32* @BTN_TL, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 1
  %187 = trunc i32 %186 to i8
  %188 = call i32 @input_report_key(%struct.input_dev* %180, i32 %181, i8 zeroext %187)
  %189 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %190 = load i32, i32* @BTN_TR, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 3
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 2
  %196 = trunc i32 %195 to i8
  %197 = call i32 @input_report_key(%struct.input_dev* %189, i32 %190, i8 zeroext %196)
  %198 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %199 = load i32, i32* @BTN_MODE, align 4
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 3
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = and i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = call i32 @input_report_key(%struct.input_dev* %198, i32 %199, i8 zeroext %205)
  %207 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %208 = load i32, i32* @ABS_X, align 4
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 6
  %211 = bitcast i8* %210 to i32*
  %212 = call i64 @le16_to_cpup(i32* %211)
  %213 = trunc i64 %212 to i8
  %214 = call i32 @input_report_abs(%struct.input_dev* %207, i32 %208, i8 zeroext %213)
  %215 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %216 = load i32, i32* @ABS_Y, align 4
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 8
  %219 = bitcast i8* %218 to i32*
  %220 = call i64 @le16_to_cpup(i32* %219)
  %221 = trunc i64 %220 to i8
  %222 = zext i8 %221 to i32
  %223 = xor i32 %222, -1
  %224 = trunc i32 %223 to i8
  %225 = call i32 @input_report_abs(%struct.input_dev* %215, i32 %216, i8 zeroext %224)
  %226 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %227 = load i32, i32* @ABS_RX, align 4
  %228 = load i8*, i8** %6, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 10
  %230 = bitcast i8* %229 to i32*
  %231 = call i64 @le16_to_cpup(i32* %230)
  %232 = trunc i64 %231 to i8
  %233 = call i32 @input_report_abs(%struct.input_dev* %226, i32 %227, i8 zeroext %232)
  %234 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %235 = load i32, i32* @ABS_RY, align 4
  %236 = load i8*, i8** %6, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 12
  %238 = bitcast i8* %237 to i32*
  %239 = call i64 @le16_to_cpup(i32* %238)
  %240 = trunc i64 %239 to i8
  %241 = zext i8 %240 to i32
  %242 = xor i32 %241, -1
  %243 = trunc i32 %242 to i8
  %244 = call i32 @input_report_abs(%struct.input_dev* %234, i32 %235, i8 zeroext %243)
  %245 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %246 = load i32, i32* @ABS_Z, align 4
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  %249 = load i8, i8* %248, align 1
  %250 = call i32 @input_report_abs(%struct.input_dev* %245, i32 %246, i8 zeroext %249)
  %251 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %252 = load i32, i32* @ABS_RZ, align 4
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 5
  %255 = load i8, i8* %254, align 1
  %256 = call i32 @input_report_abs(%struct.input_dev* %251, i32 %252, i8 zeroext %255)
  %257 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %258 = call i32 @input_sync(%struct.input_dev* %257)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
