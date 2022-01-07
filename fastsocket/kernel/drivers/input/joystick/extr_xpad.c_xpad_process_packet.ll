; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_process_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_xpad.c_xpad_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@MAP_DPAD_TO_AXES = common dso_local global i64 0, align 8
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
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
@BTN_C = common dso_local global i32 0, align 4
@BTN_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, i32, i8*)* @xpad_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_process_packet(%struct.usb_xpad* %0, i32 %1, i8* %2) #0 {
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
  %11 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %12 = load i32, i32* @ABS_X, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 12
  %15 = bitcast i8* %14 to i32*
  %16 = call i64 @le16_to_cpup(i32* %15)
  %17 = trunc i64 %16 to i32
  %18 = call i32 @input_report_abs(%struct.input_dev* %11, i32 %12, i32 %17)
  %19 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %20 = load i32, i32* @ABS_Y, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 14
  %23 = bitcast i8* %22 to i32*
  %24 = call i64 @le16_to_cpup(i32* %23)
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, -1
  %27 = call i32 @input_report_abs(%struct.input_dev* %19, i32 %20, i32 %26)
  %28 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %29 = load i32, i32* @ABS_RX, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 16
  %32 = bitcast i8* %31 to i32*
  %33 = call i64 @le16_to_cpup(i32* %32)
  %34 = trunc i64 %33 to i32
  %35 = call i32 @input_report_abs(%struct.input_dev* %28, i32 %29, i32 %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %37 = load i32, i32* @ABS_RY, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 18
  %40 = bitcast i8* %39 to i32*
  %41 = call i64 @le16_to_cpup(i32* %40)
  %42 = trunc i64 %41 to i32
  %43 = xor i32 %42, -1
  %44 = call i32 @input_report_abs(%struct.input_dev* %36, i32 %37, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = load i32, i32* @ABS_Z, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 10
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %46, i32 %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = load i32, i32* @ABS_RZ, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 11
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 @input_report_abs(%struct.input_dev* %52, i32 %53, i32 %57)
  %59 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %60 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAP_DPAD_TO_AXES, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %3
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = load i32, i32* @ABS_HAT0X, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 8
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sub nsw i32 %75, %84
  %86 = call i32 @input_report_abs(%struct.input_dev* %65, i32 %66, i32 %85)
  %87 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %88 = load i32, i32* @ABS_HAT0Y, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sub nsw i32 %97, %106
  %108 = call i32 @input_report_abs(%struct.input_dev* %87, i32 %88, i32 %107)
  br label %146

109:                                              ; preds = %3
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = load i32, i32* @BTN_LEFT, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = call i32 @input_report_key(%struct.input_dev* %110, i32 %111, i8 zeroext %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = load i32, i32* @BTN_RIGHT, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 2
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 8
  %126 = trunc i32 %125 to i8
  %127 = call i32 @input_report_key(%struct.input_dev* %119, i32 %120, i8 zeroext %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = load i32, i32* @BTN_0, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 1
  %135 = trunc i32 %134 to i8
  %136 = call i32 @input_report_key(%struct.input_dev* %128, i32 %129, i8 zeroext %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %138 = load i32, i32* @BTN_1, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 2
  %144 = trunc i32 %143 to i8
  %145 = call i32 @input_report_key(%struct.input_dev* %137, i32 %138, i8 zeroext %144)
  br label %146

146:                                              ; preds = %109, %64
  %147 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %148 = load i32, i32* @BTN_START, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 16
  %154 = trunc i32 %153 to i8
  %155 = call i32 @input_report_key(%struct.input_dev* %147, i32 %148, i8 zeroext %154)
  %156 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %157 = load i32, i32* @BTN_BACK, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 32
  %163 = trunc i32 %162 to i8
  %164 = call i32 @input_report_key(%struct.input_dev* %156, i32 %157, i8 zeroext %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %166 = load i32, i32* @BTN_THUMBL, align 4
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 64
  %172 = trunc i32 %171 to i8
  %173 = call i32 @input_report_key(%struct.input_dev* %165, i32 %166, i8 zeroext %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %175 = load i32, i32* @BTN_THUMBR, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 128
  %181 = trunc i32 %180 to i8
  %182 = call i32 @input_report_key(%struct.input_dev* %174, i32 %175, i8 zeroext %181)
  %183 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %184 = load i32, i32* @BTN_A, align 4
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 4
  %187 = load i8, i8* %186, align 1
  %188 = call i32 @input_report_key(%struct.input_dev* %183, i32 %184, i8 zeroext %187)
  %189 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %190 = load i32, i32* @BTN_B, align 4
  %191 = load i8*, i8** %6, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 5
  %193 = load i8, i8* %192, align 1
  %194 = call i32 @input_report_key(%struct.input_dev* %189, i32 %190, i8 zeroext %193)
  %195 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %196 = load i32, i32* @BTN_X, align 4
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 6
  %199 = load i8, i8* %198, align 1
  %200 = call i32 @input_report_key(%struct.input_dev* %195, i32 %196, i8 zeroext %199)
  %201 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %202 = load i32, i32* @BTN_Y, align 4
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 7
  %205 = load i8, i8* %204, align 1
  %206 = call i32 @input_report_key(%struct.input_dev* %201, i32 %202, i8 zeroext %205)
  %207 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %208 = load i32, i32* @BTN_C, align 4
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 8
  %211 = load i8, i8* %210, align 1
  %212 = call i32 @input_report_key(%struct.input_dev* %207, i32 %208, i8 zeroext %211)
  %213 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %214 = load i32, i32* @BTN_Z, align 4
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 9
  %217 = load i8, i8* %216, align 1
  %218 = call i32 @input_report_key(%struct.input_dev* %213, i32 %214, i8 zeroext %217)
  %219 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %220 = call i32 @input_sync(%struct.input_dev* %219)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
