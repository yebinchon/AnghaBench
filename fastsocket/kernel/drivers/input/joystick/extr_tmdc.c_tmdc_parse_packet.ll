; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_tmdc.c_tmdc_parse_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_tmdc.c_tmdc_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i8 }
%struct.tmdc_port = type { i8, i32, i64*, i32*, i32*, i32, i32* }

@TMDC_BYTE_ID = common dso_local global i64 0, align 8
@tmdc_byte_a = common dso_local global i64* null, align 8
@tmdc_byte_d = common dso_local global i64* null, align 8
@ABS_HAT0X = common dso_local global i64 0, align 8
@ABS_HAT0Y = common dso_local global i64 0, align 8
@tmdc_hat_to_axis = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmdc_port*, i8*)* @tmdc_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmdc_parse_packet(%struct.tmdc_port* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmdc_port*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tmdc_port* %0, %struct.tmdc_port** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* @TMDC_BYTE_ID, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %15 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 8
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %227

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %57, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %24 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %29 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %227

37:                                               ; preds = %27
  %38 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %39 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %42 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i64*, i64** @tmdc_byte_a, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @input_report_abs(i32 %40, i64 %47, i8 zeroext %55)
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %21

60:                                               ; preds = %21
  %61 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %62 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  switch i32 %64, label %156 [
    i32 128, label %65
    i32 129, label %115
  ]

65:                                               ; preds = %60
  %66 = load i64*, i64** @tmdc_byte_d, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %71 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @ABS_HAT0X, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %79, 3
  %81 = and i32 %80, 1
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = ashr i32 %87, 1
  %89 = and i32 %88, 1
  %90 = sub nsw i32 %81, %89
  %91 = trunc i32 %90 to i8
  %92 = call i32 @input_report_abs(i32 %72, i64 %73, i8 zeroext %91)
  %93 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %94 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* @ABS_HAT0Y, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = ashr i32 %102, 2
  %104 = and i32 %103, 1
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 1
  %112 = sub nsw i32 %104, %111
  %113 = trunc i32 %112 to i8
  %114 = call i32 @input_report_abs(i32 %95, i64 %96, i8 zeroext %113)
  br label %156

115:                                              ; preds = %60
  %116 = load i64*, i64** @tmdc_byte_a, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 3
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %6, align 4
  %120 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %121 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* @ABS_HAT0X, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmdc_hat_to_axis, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = sub nsw i32 %130, 141
  %132 = sdiv i32 %131, 25
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @input_report_abs(i32 %122, i64 %123, i8 zeroext %136)
  %138 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %139 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* @ABS_HAT0Y, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tmdc_hat_to_axis, align 8
  %143 = load i8*, i8** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = sub nsw i32 %148, 141
  %150 = sdiv i32 %149, 25
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @input_report_abs(i32 %140, i64 %141, i8 zeroext %154)
  br label %156

156:                                              ; preds = %60, %115, %65
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %219, %156
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 4
  br i1 %159, label %160, label %222

160:                                              ; preds = %157
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %206, %160
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %164 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp slt i32 %162, %169
  br i1 %170, label %171, label %209

171:                                              ; preds = %161
  %172 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %173 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %176 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %178, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i8*, i8** %5, align 8
  %185 = load i64*, i64** @tmdc_byte_d, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i8, i8* %184, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %195 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %193, %200
  %202 = ashr i32 %192, %201
  %203 = and i32 %202, 1
  %204 = trunc i32 %203 to i8
  %205 = call i32 @input_report_key(i32 %174, i32 %183, i8 zeroext %204)
  br label %206

206:                                              ; preds = %171
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  br label %161

209:                                              ; preds = %161
  %210 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %211 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %209
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %157

222:                                              ; preds = %157
  %223 = load %struct.tmdc_port*, %struct.tmdc_port** %4, align 8
  %224 = getelementptr inbounds %struct.tmdc_port, %struct.tmdc_port* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @input_sync(i32 %225)
  store i32 0, i32* %3, align 4
  br label %227

227:                                              ; preds = %222, %36, %19
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @input_report_abs(i32, i64, i8 zeroext) #1

declare dso_local i32 @input_report_key(i32, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
