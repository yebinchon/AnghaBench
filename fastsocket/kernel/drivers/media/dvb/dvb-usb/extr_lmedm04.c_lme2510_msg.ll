; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_lmedm04.c_lme2510_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.lme2510_state* }
%struct.lme2510_state = type { i32, i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"I2C From Interupt Message out(%02x) in(%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32*, i32, i32*, i32)* @lme2510_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_msg(%struct.dvb_usb_device* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_usb_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lme2510_state*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %15 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %14, i32 0, i32 1
  %16 = load %struct.lme2510_state*, %struct.lme2510_state** %15, align 8
  store %struct.lme2510_state* %16, %struct.lme2510_state** %13, align 8
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = call i64 @mutex_lock_interruptible(i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %241

24:                                               ; preds = %5
  %25 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %26 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %127

29:                                               ; preds = %24
  %30 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @lme2510_usb_talk(%struct.dvb_usb_device* %30, i32* %31, i32 %32, i32* %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %37 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %125 [
    i32 129, label %39
    i32 128, label %75
  ]

39:                                               ; preds = %29
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 28
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 14
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %54 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %56 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %49
  %61 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %62 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 16
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %68 = call i32 @lme2510_stream_restart(%struct.dvb_usb_device* %67)
  %69 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %70 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %60, %49
  %72 = call i32 @msleep(i32 80)
  br label %73

73:                                               ; preds = %71, %44
  br label %74

74:                                               ; preds = %73, %39
  br label %126

75:                                               ; preds = %29
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 208
  br i1 %79, label %80, label %124

80:                                               ; preds = %75
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 36
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %90 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %92 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %85
  %97 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %98 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96
  %103 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %104 = call i32 @lme2510_stream_restart(%struct.dvb_usb_device* %103)
  %105 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %106 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %96, %85
  br label %108

108:                                              ; preds = %107, %80
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 6
  %113 = zext i1 %112 to i32
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 5
  %118 = zext i1 %117 to i32
  %119 = and i32 %113, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = call i32 @msleep(i32 5)
  br label %123

123:                                              ; preds = %121, %108
  br label %124

124:                                              ; preds = %123, %75
  br label %126

125:                                              ; preds = %29
  br label %126

126:                                              ; preds = %125, %124, %74
  br label %236

127:                                              ; preds = %24
  %128 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %129 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %227 [
    i32 129, label %131
    i32 128, label %174
  ]

131:                                              ; preds = %127
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %164 [
    i32 14, label %135
    i32 67, label %143
    i32 28, label %151
    i32 21, label %159
    i32 22, label %159
    i32 23, label %159
    i32 24, label %159
  ]

135:                                              ; preds = %131
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 85, i32* %137, align 4
  %138 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %139 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  br label %173

143:                                              ; preds = %131
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  store i32 85, i32* %145, align 4
  %146 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %147 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  store i32 %148, i32* %150, align 4
  br label %173

151:                                              ; preds = %131
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 85, i32* %153, align 4
  %154 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %155 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %10, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32 %156, i32* %158, align 4
  br label %173

159:                                              ; preds = %131, %131, %131, %131
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 85, i32* %161, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 0, i32* %163, align 4
  br label %173

164:                                              ; preds = %131
  %165 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @lme2510_usb_talk(%struct.dvb_usb_device* %165, i32* %166, i32 %167, i32* %168, i32 %169)
  %171 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %172 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %171, i32 0, i32 0
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %164, %159, %151, %143, %135
  br label %228

174:                                              ; preds = %127
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %217 [
    i32 16, label %178
    i32 45, label %196
    i32 36, label %204
    i32 46, label %212
    i32 38, label %212
    i32 39, label %212
  ]

178:                                              ; preds = %174
  %179 = load i32*, i32** %10, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32 85, i32* %180, align 4
  %181 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %182 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 128
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %192

187:                                              ; preds = %178
  %188 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %189 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %190, 2
  br label %192

192:                                              ; preds = %187, %186
  %193 = phi i32 [ 0, %186 ], [ %191, %187 ]
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  store i32 %193, i32* %195, align 4
  br label %226

196:                                              ; preds = %174
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32 85, i32* %198, align 4
  %199 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %200 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %10, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 %201, i32* %203, align 4
  br label %226

204:                                              ; preds = %174
  %205 = load i32*, i32** %10, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  store i32 85, i32* %206, align 4
  %207 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %208 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  store i32 %209, i32* %211, align 4
  br label %226

212:                                              ; preds = %174, %174, %174
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  store i32 85, i32* %214, align 4
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 0, i32* %216, align 4
  br label %226

217:                                              ; preds = %174
  %218 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = load i32, i32* %11, align 4
  %223 = call i32 @lme2510_usb_talk(%struct.dvb_usb_device* %218, i32* %219, i32 %220, i32* %221, i32 %222)
  %224 = load %struct.lme2510_state*, %struct.lme2510_state** %13, align 8
  %225 = getelementptr inbounds %struct.lme2510_state, %struct.lme2510_state* %224, i32 0, i32 0
  store i32 1, i32* %225, align 4
  br label %226

226:                                              ; preds = %217, %212, %204, %196, %192
  br label %228

227:                                              ; preds = %127
  br label %228

228:                                              ; preds = %227, %226, %173
  %229 = load i32*, i32** %8, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %10, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @deb_info(i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %231, i32 %234)
  br label %236

236:                                              ; preds = %228, %126
  %237 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %7, align 8
  %238 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %237, i32 0, i32 0
  %239 = call i32 @mutex_unlock(i32* %238)
  %240 = load i32, i32* %12, align 4
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %236, %21
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @lme2510_usb_talk(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @lme2510_stream_restart(%struct.dvb_usb_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @deb_info(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
