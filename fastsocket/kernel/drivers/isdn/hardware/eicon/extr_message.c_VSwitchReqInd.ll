; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_VSwitchReqInd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_VSwitchReqInd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@NCR_FACILITY = common dso_local global i64 0, align 8
@MAX_MULTI_IE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"VSwitchReqInd(%d)\00", align 1
@S_ECT = common dso_local global i32 0, align 4
@VSWITCH_IND = common dso_local global i32 0, align 4
@VSWITCH_REQ = common dso_local global i32 0, align 4
@VSWITCHIE = common dso_local global i32 0, align 4
@VSWITCH_REQ_PEND = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32**)* @VSwitchReqInd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VSwitchReqInd(%struct.TYPE_8__* %0, i32 %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NCR_FACILITY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %15, %10, %3
  br label %272

28:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %269, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @MAX_MULTI_IE, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %272

33:                                               ; preds = %29
  %34 = load i32**, i32*** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32*, i32** %34, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %269

42:                                               ; preds = %33
  %43 = load i32**, i32*** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 7
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32**, i32*** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 0, i32* %55, align 4
  br label %269

56:                                               ; preds = %42
  %57 = load i32**, i32*** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 @dbug(i32 1, i32 %63)
  %65 = load i32**, i32*** %6, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %225 [
    i32 129, label %71
    i32 128, label %224
  ]

71:                                               ; preds = %56
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @S_ECT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @S_ECT, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %82, %71
  br label %263

91:                                               ; preds = %82, %76
  %92 = load i32**, i32*** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 11
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load i32**, i32*** %6, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 3
  br i1 %106, label %107, label %108

107:                                              ; preds = %99, %91
  br label %263

108:                                              ; preds = %99
  %109 = load i32**, i32*** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @VSWITCH_IND, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %108
  %118 = load i32**, i32*** %6, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 9
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %139

125:                                              ; preds = %117
  %126 = load i32**, i32*** %6, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds i32*, i32** %126, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 9
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32**, i32*** %6, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i32*, i32** %134, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 9
  store i32 2, i32* %138, align 4
  br label %167

139:                                              ; preds = %117, %108
  %140 = load i32**, i32*** %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @VSWITCH_REQ, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %139
  %149 = load i32**, i32*** %6, align 8
  %150 = load i64, i64* %7, align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 9
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load i32**, i32*** %6, align 8
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 9
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %166

165:                                              ; preds = %148, %139
  br label %263

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %125
  %168 = load i32**, i32*** %6, align 8
  %169 = load i64, i64* %7, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 10
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32**, i32*** %6, align 8
  %177 = load i64, i64* %7, align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 11
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @VSWITCHIE, align 4
  %185 = load i32**, i32*** %6, align 8
  %186 = load i64, i64* %7, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 %184, i32* %189, align 4
  %190 = load i32, i32* @VSWITCH_REQ, align 4
  %191 = load i32**, i32*** %6, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i32*, i32** %191, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 %190, i32* %195, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  store i32 0, i32* %199, align 4
  %200 = load i32, i32* @VSWITCH_REQ_PEND, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  store i32 %200, i32* %204, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i32, i32* @ESC, align 4
  %209 = load i32**, i32*** %6, align 8
  %210 = load i64, i64* %7, align 8
  %211 = getelementptr inbounds i32*, i32** %209, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = call i32 @add_p(%struct.TYPE_9__* %207, i32 %208, i32* %213)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = load i32, i32* @VSWITCH_REQ, align 4
  %219 = call i32 @sig_req(%struct.TYPE_9__* %217, i32 %218, i32 0)
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = call i32 @send_req(%struct.TYPE_9__* %222)
  br label %263

224:                                              ; preds = %56
  br label %225

225:                                              ; preds = %56, %224
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = icmp ne %struct.TYPE_9__* %228, null
  br i1 %229, label %230, label %262

230:                                              ; preds = %225
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %262

235:                                              ; preds = %230
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 3
  br i1 %241, label %242, label %262

242:                                              ; preds = %235
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 3
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = load i32, i32* @ESC, align 4
  %247 = load i32**, i32*** %6, align 8
  %248 = load i64, i64* %7, align 8
  %249 = getelementptr inbounds i32*, i32** %247, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = call i32 @add_p(%struct.TYPE_9__* %245, i32 %246, i32* %251)
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 3
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = load i32, i32* @VSWITCH_REQ, align 4
  %257 = call i32 @sig_req(%struct.TYPE_9__* %255, i32 %256, i32 0)
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = call i32 @send_req(%struct.TYPE_9__* %260)
  br label %262

262:                                              ; preds = %242, %235, %230, %225
  br label %263

263:                                              ; preds = %262, %167, %165, %107, %90
  %264 = load i32**, i32*** %6, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds i32*, i32** %264, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 0, i32* %268, align 4
  br label %269

269:                                              ; preds = %263, %50, %41
  %270 = load i64, i64* %7, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %7, align 8
  br label %29

272:                                              ; preds = %27, %29
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i32) #1

declare dso_local i32 @add_p(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @sig_req(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @send_req(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
