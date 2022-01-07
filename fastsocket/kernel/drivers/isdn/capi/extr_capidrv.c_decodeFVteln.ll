; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_decodeFVteln.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_decodeFVteln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"FV:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32*)* @decodeFVteln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decodeFVteln(i8* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %239

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %33, %18
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  br label %21

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -2, i32* %4, align 4
  br label %239

41:                                               ; preds = %36
  %42 = load i8*, i8** %10, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 112
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 80
  br i1 %50, label %51, label %54

51:                                               ; preds = %46, %41
  store i32 0, i32* %9, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %10, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 97
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 65
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %54
  store i32 1, i32* %9, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %224, %128, %67
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = icmp ne i8 %70, 0
  br i1 %71, label %72, label %226

72:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isdigit(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 -3, i32* %4, align 4
  br label %239

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %84, %78
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isdigit(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %85, 10
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 48
  %91 = add nsw i32 %86, %90
  store i32 %91, i32* %12, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  br label %79

94:                                               ; preds = %79
  %95 = load i32, i32* %12, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %98, 30
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %94
  store i32 -4, i32* %4, align 4
  br label %239

101:                                              ; preds = %97
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %10, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 44
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %116, label %129

116:                                              ; preds = %111, %106, %101
  %117 = load i32, i32* %12, align 4
  %118 = shl i32 1, %117
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %8, align 8
  %121 = or i64 %120, %119
  store i64 %121, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = load i8, i8* %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i8*, i8** %10, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %10, align 8
  br label %128

128:                                              ; preds = %125, %116
  br label %68

129:                                              ; preds = %111
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 45
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 -5, i32* %4, align 4
  br label %239

135:                                              ; preds = %129
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %10, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i64 @isdigit(i8 signext %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  store i32 -3, i32* %4, align 4
  br label %239

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %149, %143
  %145 = load i8*, i8** %10, align 8
  %146 = load i8, i8* %145, align 1
  %147 = call i64 @isdigit(i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load i32, i32* %13, align 4
  %151 = mul nsw i32 %150, 10
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = sub nsw i32 %154, 48
  %156 = add nsw i32 %151, %155
  store i32 %156, i32* %13, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %10, align 8
  br label %144

159:                                              ; preds = %144
  %160 = load i32, i32* %13, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = icmp sgt i32 %163, 30
  br i1 %164, label %165, label %166

165:                                              ; preds = %162, %159
  store i32 -4, i32* %4, align 4
  br label %239

166:                                              ; preds = %162
  %167 = load i8*, i8** %10, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = load i8*, i8** %10, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 44
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = load i8*, i8** %10, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 32
  br i1 %180, label %181, label %225

181:                                              ; preds = %176, %171, %166
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %197, %185
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %200

191:                                              ; preds = %187
  %192 = load i32, i32* %11, align 4
  %193 = shl i32 1, %192
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %8, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %8, align 8
  br label %197

197:                                              ; preds = %191
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %187

200:                                              ; preds = %187
  br label %217

201:                                              ; preds = %181
  %202 = load i32, i32* %12, align 4
  store i32 %202, i32* %11, align 4
  br label %203

203:                                              ; preds = %213, %201
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %13, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %207, label %216

207:                                              ; preds = %203
  %208 = load i32, i32* %11, align 4
  %209 = shl i32 1, %208
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %8, align 8
  %212 = or i64 %211, %210
  store i64 %212, i64* %8, align 8
  br label %213

213:                                              ; preds = %207
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %11, align 4
  br label %203

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216, %200
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %218 = load i8*, i8** %10, align 8
  %219 = load i8, i8* %218, align 1
  %220 = icmp ne i8 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i8*, i8** %10, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %10, align 8
  br label %224

224:                                              ; preds = %221, %217
  br label %68

225:                                              ; preds = %176
  store i32 -6, i32* %4, align 4
  br label %239

226:                                              ; preds = %68
  %227 = load i32*, i32** %7, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32, i32* %9, align 4
  %231 = load i32*, i32** %7, align 8
  store i32 %230, i32* %231, align 4
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i64*, i64** %6, align 8
  %234 = icmp ne i64* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i64, i64* %8, align 8
  %237 = load i64*, i64** %6, align 8
  store i64 %236, i64* %237, align 8
  br label %238

238:                                              ; preds = %235, %232
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %238, %225, %165, %142, %134, %100, %77, %40, %17
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
