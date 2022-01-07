; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_IndParse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_IndParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SHIFT = common dso_local global i64 0, align 8
@ESC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"mIE[%d]=0x%x\00", align 1
@OAD = common dso_local global i64 0, align 8
@CONN_NR = common dso_local global i64 0, align 8
@CAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64*, i64**, i64)* @IndParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IndParse(%struct.TYPE_7__* %0, i64* %1, i64** %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64** %2, i64*** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %14, align 8
  store i64 0, i64* %15, align 8
  br label %24

24:                                               ; preds = %34, %4
  %25 = load i64, i64* %15, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i64**, i64*** %7, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  store i64* bitcast ([1 x i8]* @.str to i64*), i64** %33, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %15, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %15, align 8
  br label %24

37:                                               ; preds = %24
  store i64 0, i64* %15, align 8
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64**, i64*** %7, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds i64*, i64** %43, i64 %44
  store i64* bitcast ([1 x i8]* @.str to i64*), i64** %45, align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %15, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %15, align 8
  br label %38

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %250, %49
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %51, %59
  br i1 %60, label %61, label %255

61:                                               ; preds = %50
  %62 = load i64*, i64** %14, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = and i64 %66, 128
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  br label %77

70:                                               ; preds = %61
  %71 = load i64*, i64** %14, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %70, %69
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %78, %79
  %81 = icmp ugt i64 %80, 270
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %256

83:                                               ; preds = %77
  %84 = load i64, i64* %13, align 8
  %85 = and i64 %84, 128
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i64, i64* %13, align 8
  %89 = and i64 %88, 127
  store i64 %89, i64* %13, align 8
  br label %92

90:                                               ; preds = %83
  %91 = load i64, i64* %13, align 8
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i64, i64* %10, align 8
  %94 = and i64 %93, 240
  %95 = load i64, i64* @SHIFT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %92
  %98 = load i64*, i64** %14, align 8
  %99 = load i64, i64* %9, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = and i64 %102, 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %97
  %106 = load i64, i64* %12, align 8
  %107 = and i64 %106, 7
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %105, %97
  %109 = load i64, i64* %12, align 8
  %110 = and i64 %109, 7
  store i64 %110, i64* %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = or i64 %111, 128
  store i64 %112, i64* %13, align 8
  br label %250

113:                                              ; preds = %92
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* @ESC, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load i64, i64* %11, align 8
  %119 = icmp uge i64 %118, 3
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i64*, i64** %14, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 2
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = or i64 %125, 2048
  store i64 %126, i64* %16, align 8
  br label %129

127:                                              ; preds = %117, %113
  %128 = load i64, i64* %10, align 8
  store i64 %128, i64* %16, align 8
  br label %129

129:                                              ; preds = %127, %120
  %130 = load i64, i64* %12, align 8
  %131 = shl i64 %130, 8
  %132 = load i64, i64* %16, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %16, align 8
  store i64 1, i64* %15, align 8
  br label %134

134:                                              ; preds = %151, %129
  %135 = load i64, i64* %15, align 8
  %136 = load i64*, i64** %6, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  %140 = icmp ult i64 %135, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %134
  %142 = load i64*, i64** %6, align 8
  %143 = load i64, i64* %15, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp ne i64 %145, %146
  br label %148

148:                                              ; preds = %141, %134
  %149 = phi i1 [ false, %134 ], [ %147, %141 ]
  br i1 %149, label %150, label %154

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %15, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %15, align 8
  br label %134

154:                                              ; preds = %148
  %155 = load i64, i64* %15, align 8
  %156 = load i64*, i64** %6, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 0
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  %160 = icmp ult i64 %155, %159
  br i1 %160, label %161, label %249

161:                                              ; preds = %154
  %162 = load i64, i64* %8, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %15, align 8
  %166 = sub i64 %165, 1
  store i64 %166, i64* %17, align 8
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i64*, i64** %14, align 8
  %169 = load i64, i64* %9, align 8
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64**, i64*** %7, align 8
  %173 = load i64, i64* %17, align 8
  %174 = getelementptr inbounds i64*, i64** %172, i64 %173
  store i64* %171, i64** %174, align 8
  %175 = load i64**, i64*** %7, align 8
  %176 = load i64, i64* %17, align 8
  %177 = getelementptr inbounds i64*, i64** %175, i64 %176
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %14, align 8
  %181 = load i64, i64* %9, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %179, i64 %183)
  %185 = call i32 @dbug(i32 1, i32 %184)
  %186 = load i64*, i64** %6, align 8
  %187 = load i64, i64* %15, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @OAD, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %206, label %192

192:                                              ; preds = %167
  %193 = load i64*, i64** %6, align 8
  %194 = load i64, i64* %15, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @CONN_NR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load i64*, i64** %6, align 8
  %201 = load i64, i64* %15, align 8
  %202 = getelementptr inbounds i64, i64* %200, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CAD, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %246

206:                                              ; preds = %199, %192, %167
  %207 = load i64*, i64** %14, align 8
  %208 = load i64, i64* %9, align 8
  %209 = add i64 %208, 2
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = and i64 %211, 128
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %245

214:                                              ; preds = %206
  %215 = load i64*, i64** %14, align 8
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, 1
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = add i64 %219, 1
  %221 = load i64*, i64** %14, align 8
  %222 = load i64, i64* %9, align 8
  %223 = add i64 %222, 0
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  store i64 %220, i64* %224, align 8
  %225 = load i64*, i64** %14, align 8
  %226 = load i64, i64* %9, align 8
  %227 = add i64 %226, 2
  %228 = getelementptr inbounds i64, i64* %225, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = and i64 %229, 127
  %231 = load i64*, i64** %14, align 8
  %232 = load i64, i64* %9, align 8
  %233 = add i64 %232, 1
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  store i64 %230, i64* %234, align 8
  %235 = load i64*, i64** %14, align 8
  %236 = load i64, i64* %9, align 8
  %237 = add i64 %236, 2
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  store i64 128, i64* %238, align 8
  %239 = load i64*, i64** %14, align 8
  %240 = load i64, i64* %9, align 8
  %241 = getelementptr inbounds i64, i64* %239, i64 %240
  %242 = load i64**, i64*** %7, align 8
  %243 = load i64, i64* %17, align 8
  %244 = getelementptr inbounds i64*, i64** %242, i64 %243
  store i64* %241, i64** %244, align 8
  br label %245

245:                                              ; preds = %214, %206
  br label %246

246:                                              ; preds = %245, %199
  %247 = load i64, i64* %17, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %17, align 8
  br label %249

249:                                              ; preds = %246, %154
  br label %250

250:                                              ; preds = %249, %108
  %251 = load i64, i64* %11, align 8
  %252 = add i64 %251, 1
  %253 = load i64, i64* %9, align 8
  %254 = add i64 %253, %252
  store i64 %254, i64* %9, align 8
  br label %50

255:                                              ; preds = %50
  br label %256

256:                                              ; preds = %255, %82
  ret void
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
