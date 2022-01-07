; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_UnStuffData.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_UnStuffData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Stuff_Magic = common dso_local global i32 0, align 4
@Stuff_CountMask = common dso_local global i32 0, align 4
@Stuff_CodeMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32)* @UnStuffData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnStuffData(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21, %18, %4
  store i32* null, i32** %5, align 8
  br label %216

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %208, %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ult i32* %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %209

39:                                               ; preds = %37
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @Stuff_Magic, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* @Stuff_CountMask, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @Stuff_Magic, align 4
  %49 = xor i32 %47, %48
  %50 = load i32, i32* @Stuff_CodeMask, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %208 [
    i32 131, label %52
    i32 130, label %101
    i32 129, label %143
    i32 128, label %181
  ]

52:                                               ; preds = %39
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32*, i32** %7, align 8
  %59 = icmp uge i32* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32* null, i32** %5, align 8
  br label %216

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @Stuff_Magic, align 4
  %67 = xor i32 %65, %66
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %11, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ult i32* %75, %76
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %62, label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32* %85, i32** %6, align 8
  br label %100

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* @Stuff_Magic, align 4
  %91 = xor i32 129, %90
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %99

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 131, %94
  %96 = load i32, i32* @Stuff_Magic, align 4
  %97 = xor i32 %95, %96
  %98 = load i32*, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %89
  br label %100

100:                                              ; preds = %99, %83
  br label %208

101:                                              ; preds = %39
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32*, i32** %7, align 8
  %108 = icmp uge i32* %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32* null, i32** %5, align 8
  br label %216

110:                                              ; preds = %101
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @Stuff_Magic, align 4
  %116 = xor i32 %114, %115
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %11, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32*, i32** %8, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = icmp ult i32* %124, %125
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i1 [ false, %119 ], [ %126, %123 ]
  br i1 %128, label %111, label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* @Stuff_Magic, align 4
  %134 = xor i32 128, %133
  %135 = load i32*, i32** %6, align 8
  store i32 %134, i32* %135, align 4
  br label %142

136:                                              ; preds = %129
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 130, %137
  %139 = load i32, i32* @Stuff_Magic, align 4
  %140 = xor i32 %138, %139
  %141 = load i32*, i32** %6, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %132
  br label %208

143:                                              ; preds = %39
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32*, i32** %7, align 8
  %147 = icmp uge i32* %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32* null, i32** %5, align 8
  br label %216

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %166, %149
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @Stuff_Magic, align 4
  %155 = xor i32 %153, %154
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  br label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %11, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32*, i32** %8, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = icmp ult i32* %163, %164
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi i1 [ false, %158 ], [ %165, %162 ]
  br i1 %167, label %150, label %168

168:                                              ; preds = %166
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32* %173, i32** %6, align 8
  br label %180

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 129, %175
  %177 = load i32, i32* @Stuff_Magic, align 4
  %178 = xor i32 %176, %177
  %179 = load i32*, i32** %6, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %174, %171
  br label %208

181:                                              ; preds = %39
  br label %182

182:                                              ; preds = %193, %181
  %183 = load i32*, i32** %8, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %8, align 8
  store i32 0, i32* %183, align 4
  br label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %11, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i32*, i32** %8, align 8
  %191 = load i32*, i32** %10, align 8
  %192 = icmp ult i32* %190, %191
  br label %193

193:                                              ; preds = %189, %185
  %194 = phi i1 [ false, %185 ], [ %192, %189 ]
  br i1 %194, label %182, label %195

195:                                              ; preds = %193
  %196 = load i32, i32* %11, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32* %200, i32** %6, align 8
  br label %207

201:                                              ; preds = %195
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 128, %202
  %204 = load i32, i32* @Stuff_Magic, align 4
  %205 = xor i32 %203, %204
  %206 = load i32*, i32** %6, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %201, %198
  br label %208

208:                                              ; preds = %39, %207, %180, %142, %100
  br label %29

209:                                              ; preds = %37
  %210 = load i32*, i32** %8, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = icmp ult i32* %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32* null, i32** %5, align 8
  br label %216

214:                                              ; preds = %209
  %215 = load i32*, i32** %6, align 8
  store i32* %215, i32** %5, align 8
  br label %216

216:                                              ; preds = %214, %213, %148, %109, %60, %27
  %217 = load i32*, i32** %5, align 8
  ret i32* %217
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
