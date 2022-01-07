; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_process_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i64, i64, i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@PSMOUSE_IMPS = common dso_local global i64 0, align 8
@PSMOUSE_GENPS = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@PSMOUSE_IMEX = common dso_local global i64 0, align 8
@REL_HWHEEL = common dso_local global i32 0, align 4
@BTN_SIDE = common dso_local global i32 0, align 4
@BTN_EXTRA = common dso_local global i32 0, align 4
@PSMOUSE_THINKPS = common dso_local global i64 0, align 8
@PSMOUSE_CORTRON = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @psmouse_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 4
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %20, i32* %2, align 4
  br label %278

21:                                               ; preds = %1
  %22 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %23 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PSMOUSE_IMPS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %29 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PSMOUSE_GENPS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27, %21
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = load i32, i32* @REL_WHEEL, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 0, %39
  %41 = call i32 @input_report_rel(%struct.input_dev* %34, i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %33, %27
  %43 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %44 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PSMOUSE_IMEX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %120

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 192
  switch i32 %53, label %119 [
    i32 128, label %54
    i32 64, label %69
    i32 0, label %84
    i32 192, label %84
  ]

54:                                               ; preds = %48
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = load i32, i32* @REL_WHEEL, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 32
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 31
  %67 = sub nsw i32 %61, %66
  %68 = call i32 @input_report_rel(%struct.input_dev* %55, i32 %56, i32 %67)
  br label %119

69:                                               ; preds = %48
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = load i32, i32* @REL_HWHEEL, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 32
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 31
  %82 = sub nsw i32 %76, %81
  %83 = call i32 @input_report_rel(%struct.input_dev* %70, i32 %71, i32 %82)
  br label %119

84:                                               ; preds = %48, %48
  %85 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %86 = load i32, i32* @REL_WHEEL, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 8
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 3
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 7
  %97 = sub nsw i32 %91, %96
  %98 = call i32 @input_report_rel(%struct.input_dev* %85, i32 %86, i32 %97)
  %99 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %100 = load i32, i32* @BTN_SIDE, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = ashr i32 %104, 4
  %106 = and i32 %105, 1
  %107 = trunc i32 %106 to i8
  %108 = call i32 @input_report_key(%struct.input_dev* %99, i32 %100, i8 zeroext %107)
  %109 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %110 = load i32, i32* @BTN_EXTRA, align 4
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = ashr i32 %114, 5
  %116 = and i32 %115, 1
  %117 = trunc i32 %116 to i8
  %118 = call i32 @input_report_key(%struct.input_dev* %109, i32 %110, i8 zeroext %117)
  br label %119

119:                                              ; preds = %48, %84, %69, %54
  br label %120

120:                                              ; preds = %119, %42
  %121 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %122 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PSMOUSE_GENPS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %120
  %127 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %128 = load i32, i32* @BTN_SIDE, align 4
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = ashr i32 %132, 6
  %134 = and i32 %133, 1
  %135 = trunc i32 %134 to i8
  %136 = call i32 @input_report_key(%struct.input_dev* %127, i32 %128, i8 zeroext %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %138 = load i32, i32* @BTN_EXTRA, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = ashr i32 %142, 7
  %144 = and i32 %143, 1
  %145 = trunc i32 %144 to i8
  %146 = call i32 @input_report_key(%struct.input_dev* %137, i32 %138, i8 zeroext %145)
  br label %147

147:                                              ; preds = %126, %120
  %148 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %149 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @PSMOUSE_THINKPS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %147
  %154 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %155 = load i32, i32* @BTN_EXTRA, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = ashr i32 %159, 3
  %161 = and i32 %160, 1
  %162 = trunc i32 %161 to i8
  %163 = call i32 @input_report_key(%struct.input_dev* %154, i32 %155, i8 zeroext %162)
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = and i32 %167, 64
  %169 = shl i32 %168, 1
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = or i32 %173, %169
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %171, align 1
  br label %176

176:                                              ; preds = %153, %147
  %177 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %178 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @PSMOUSE_CORTRON, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %176
  %183 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %184 = load i32, i32* @BTN_SIDE, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = ashr i32 %188, 3
  %190 = and i32 %189, 1
  %191 = trunc i32 %190 to i8
  %192 = call i32 @input_report_key(%struct.input_dev* %183, i32 %184, i8 zeroext %191)
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = or i32 %196, 8
  %198 = trunc i32 %197 to i8
  store i8 %198, i8* %194, align 1
  br label %199

199:                                              ; preds = %182, %176
  %200 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %201 = load i32, i32* @BTN_LEFT, align 4
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 0
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = and i32 %205, 1
  %207 = trunc i32 %206 to i8
  %208 = call i32 @input_report_key(%struct.input_dev* %200, i32 %201, i8 zeroext %207)
  %209 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %210 = load i32, i32* @BTN_MIDDLE, align 4
  %211 = load i8*, i8** %5, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = ashr i32 %214, 2
  %216 = and i32 %215, 1
  %217 = trunc i32 %216 to i8
  %218 = call i32 @input_report_key(%struct.input_dev* %209, i32 %210, i8 zeroext %217)
  %219 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %220 = load i32, i32* @BTN_RIGHT, align 4
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = ashr i32 %224, 1
  %226 = and i32 %225, 1
  %227 = trunc i32 %226 to i8
  %228 = call i32 @input_report_key(%struct.input_dev* %219, i32 %220, i8 zeroext %227)
  %229 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %230 = load i32, i32* @REL_X, align 4
  %231 = load i8*, i8** %5, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %199
  %237 = load i8*, i8** %5, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = load i8*, i8** %5, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 256
  %247 = sub nsw i32 %240, %246
  br label %249

248:                                              ; preds = %199
  br label %249

249:                                              ; preds = %248, %236
  %250 = phi i32 [ %247, %236 ], [ 0, %248 ]
  %251 = call i32 @input_report_rel(%struct.input_dev* %229, i32 %230, i32 %250)
  %252 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %253 = load i32, i32* @REL_Y, align 4
  %254 = load i8*, i8** %5, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 2
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %249
  %260 = load i8*, i8** %5, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = shl i32 %263, 3
  %265 = and i32 %264, 256
  %266 = load i8*, i8** %5, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 2
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = sub nsw i32 %265, %269
  br label %272

271:                                              ; preds = %249
  br label %272

272:                                              ; preds = %271, %259
  %273 = phi i32 [ %270, %259 ], [ 0, %271 ]
  %274 = call i32 @input_report_rel(%struct.input_dev* %252, i32 %253, i32 %273)
  %275 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %276 = call i32 @input_sync(%struct.input_dev* %275)
  %277 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %272, %19
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
