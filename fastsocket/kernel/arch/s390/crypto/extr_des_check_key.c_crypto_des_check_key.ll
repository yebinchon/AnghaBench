; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_check_key.c_crypto_des_check_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_des_check_key.c_crypto_des_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parity = common dso_local global i32* null, align 8
@CRYPTO_TFM_REQ_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_des_check_key(i64* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** @parity, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** @parity, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 %26, 4
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** @parity, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 4
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** @parity, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 4
  store i32 %47, i32* %8, align 4
  %48 = load i32*, i32** @parity, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 4
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 4
  store i32 %57, i32* %8, align 4
  %58 = load i32*, i32** @parity, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 5
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 %66, 4
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** @parity, align 8
  %69 = load i64*, i64** %5, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 6
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, 4
  store i32 %77, i32* %8, align 4
  %78 = load i32*, i32** @parity, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 7
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  store i32 -2004318072, i32* %9, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CRYPTO_TFM_REQ_WEAK_KEY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %199

91:                                               ; preds = %3
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 3
  %95 = sub nsw i32 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %199, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 1094799697
  br i1 %101, label %102, label %150

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 825303329
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 336860437
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %109, 286331153
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %200

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 320016914
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %200

116:                                              ; preds = %112
  br label %126

117:                                              ; preds = %105
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 336860437
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %200

121:                                              ; preds = %117
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 370546198
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %200

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %116
  br label %149

127:                                              ; preds = %102
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 875832613
  br i1 %129, label %130, label %139

130:                                              ; preds = %127
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 825303329
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %200

134:                                              ; preds = %130
  %135 = load i32, i32* %8, align 4
  %136 = icmp eq i32 %135, 858989090
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %200

138:                                              ; preds = %134
  br label %148

139:                                              ; preds = %127
  %140 = load i32, i32* %8, align 4
  %141 = icmp eq i32 %140, 875832613
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %200

143:                                              ; preds = %139
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %144, 909518374
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %200

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147, %138
  br label %149

149:                                              ; preds = %148, %126
  br label %198

150:                                              ; preds = %99
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 1633771873
  br i1 %152, label %153, label %175

153:                                              ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %154, 1145328981
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 1094799697
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %200

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %161, 1128485458
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %200

164:                                              ; preds = %160
  br label %174

165:                                              ; preds = %153
  %166 = load i32, i32* %8, align 4
  %167 = icmp eq i32 %166, 1145328981
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  br label %200

169:                                              ; preds = %165
  %170 = load i32, i32* %8, align 4
  %171 = icmp eq i32 %170, 1179014742
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  br label %200

173:                                              ; preds = %169
  br label %174

174:                                              ; preds = %173, %164
  br label %197

175:                                              ; preds = %150
  %176 = load i32, i32* %8, align 4
  %177 = icmp slt i32 %176, 1684301157
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* %8, align 4
  %180 = icmp eq i32 %179, 1633771873
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %200

182:                                              ; preds = %178
  %183 = load i32, i32* %8, align 4
  %184 = icmp eq i32 %183, 1667457634
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %200

186:                                              ; preds = %182
  br label %196

187:                                              ; preds = %175
  %188 = load i32, i32* %8, align 4
  %189 = icmp eq i32 %188, 1684301157
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %200

191:                                              ; preds = %187
  %192 = load i32, i32* %8, align 4
  %193 = icmp eq i32 %192, 1717986918
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %200

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %186
  br label %197

197:                                              ; preds = %196, %174
  br label %198

198:                                              ; preds = %197, %149
  br label %199

199:                                              ; preds = %198, %91, %3
  store i32 0, i32* %4, align 4
  br label %207

200:                                              ; preds = %194, %190, %185, %181, %172, %168, %163, %159, %146, %142, %137, %133, %124, %120, %115, %111
  %201 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %200, %199
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
