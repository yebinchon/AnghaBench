; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_hidinput_apple_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-apple.c_hidinput_apple_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i32 }
%struct.apple_sc = type { i32, i32, i32, i32 }
%struct.apple_key_translation = type { i32, i64 }

@KEY_FN = common dso_local global i64 0, align 8
@fnmode = common dso_local global i32 0, align 4
@powerbook_fn_keys = common dso_local global i32 0, align 4
@apple_fn_keys = common dso_local global i32 0, align 4
@APPLE_FLAG_FKEY = common dso_local global i32 0, align 4
@APPLE_NUMLOCK_EMULATION = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i64 0, align 8
@powerbook_numlock_keys = common dso_local global i32 0, align 4
@APPLE_ISO_KEYBOARD = common dso_local global i32 0, align 4
@apple_iso_keyboard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.input_dev*, %struct.hid_usage*, i64)* @hidinput_apple_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidinput_apple_event(%struct.hid_device* %0, %struct.input_dev* %1, %struct.hid_usage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.apple_sc*, align 8
  %11 = alloca %struct.apple_key_translation*, align 8
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.input_dev* %1, %struct.input_dev** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = call %struct.apple_sc* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.apple_sc* %14, %struct.apple_sc** %10, align 8
  %15 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %16 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @KEY_FN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %27 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %29 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %30 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @input_event(%struct.input_dev* %28, i32 %31, i64 %34, i64 %35)
  store i32 1, i32* %5, align 4
  br label %228

37:                                               ; preds = %4
  %38 = load i32, i32* @fnmode, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %201

40:                                               ; preds = %37
  %41 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 541
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 768
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @powerbook_fn_keys, align 4
  br label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @apple_fn_keys, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %57 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.apple_key_translation* @apple_find_translation(i32 %55, i64 %58)
  store %struct.apple_key_translation* %59, %struct.apple_key_translation** %11, align 8
  %60 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %61 = icmp ne %struct.apple_key_translation* %60, null
  br i1 %61, label %62, label %139

62:                                               ; preds = %54
  %63 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %64 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %67 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @test_bit(i64 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  br label %106

72:                                               ; preds = %62
  %73 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %74 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @APPLE_FLAG_FKEY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load i32, i32* @fnmode, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %84 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* @fnmode, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %92 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %87
  %97 = phi i1 [ false, %87 ], [ %95, %90 ]
  br label %98

98:                                               ; preds = %96, %82
  %99 = phi i1 [ true, %82 ], [ %97, %96 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %12, align 4
  br label %105

101:                                              ; preds = %72
  %102 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %103 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %101, %98
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %109
  %113 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %114 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %117 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @set_bit(i64 %115, i32 %118)
  br label %128

120:                                              ; preds = %109
  %121 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %122 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %125 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @clear_bit(i64 %123, i32 %126)
  br label %128

128:                                              ; preds = %120, %112
  %129 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %130 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %131 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %134 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @input_event(%struct.input_dev* %129, i32 %132, i64 %135, i64 %136)
  store i32 1, i32* %5, align 4
  br label %228

138:                                              ; preds = %106
  br label %139

139:                                              ; preds = %138, %54
  %140 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %141 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @APPLE_NUMLOCK_EMULATION, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %200

146:                                              ; preds = %139
  %147 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %148 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %151 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @test_bit(i64 %149, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %146
  %156 = load i64, i64* @LED_NUML, align 8
  %157 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %158 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @test_bit(i64 %156, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %200

162:                                              ; preds = %155, %146
  %163 = load i32, i32* @powerbook_numlock_keys, align 4
  %164 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %165 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call %struct.apple_key_translation* @apple_find_translation(i32 %163, i64 %166)
  store %struct.apple_key_translation* %167, %struct.apple_key_translation** %11, align 8
  %168 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %169 = icmp ne %struct.apple_key_translation* %168, null
  br i1 %169, label %170, label %199

170:                                              ; preds = %162
  %171 = load i64, i64* %9, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %175 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %178 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @set_bit(i64 %176, i32 %179)
  br label %189

181:                                              ; preds = %170
  %182 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %183 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %186 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @clear_bit(i64 %184, i32 %187)
  br label %189

189:                                              ; preds = %181, %173
  %190 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %191 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %192 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %195 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %9, align 8
  %198 = call i32 @input_event(%struct.input_dev* %190, i32 %193, i64 %196, i64 %197)
  br label %199

199:                                              ; preds = %189, %162
  store i32 1, i32* %5, align 4
  br label %228

200:                                              ; preds = %155, %139
  br label %201

201:                                              ; preds = %200, %37
  %202 = load %struct.apple_sc*, %struct.apple_sc** %10, align 8
  %203 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @APPLE_ISO_KEYBOARD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %201
  %209 = load i32, i32* @apple_iso_keyboard, align 4
  %210 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %211 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call %struct.apple_key_translation* @apple_find_translation(i32 %209, i64 %212)
  store %struct.apple_key_translation* %213, %struct.apple_key_translation** %11, align 8
  %214 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %215 = icmp ne %struct.apple_key_translation* %214, null
  br i1 %215, label %216, label %226

216:                                              ; preds = %208
  %217 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %218 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %219 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.apple_key_translation*, %struct.apple_key_translation** %11, align 8
  %222 = getelementptr inbounds %struct.apple_key_translation, %struct.apple_key_translation* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %9, align 8
  %225 = call i32 @input_event(%struct.input_dev* %217, i32 %220, i64 %223, i64 %224)
  store i32 1, i32* %5, align 4
  br label %228

226:                                              ; preds = %208
  br label %227

227:                                              ; preds = %226, %201
  store i32 0, i32* %5, align 4
  br label %228

228:                                              ; preds = %227, %216, %199, %128, %20
  %229 = load i32, i32* %5, align 4
  ret i32 %229
}

declare dso_local %struct.apple_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i64, i64) #1

declare dso_local %struct.apple_key_translation* @apple_find_translation(i32, i64) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
