; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_dis.c_print_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_dis.c_print_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.operand = type { i32 }
%struct.insn = type { i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@long_insn_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%.5s\09\00", align 1
@formats = common dso_local global i8** null, align 8
@operands = common dso_local global %struct.operand* null, align 8
@OPERAND_INDEX = common dso_local global i32 0, align 4
@OPERAND_BASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@OPERAND_GPR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"%%r%i\00", align 1
@OPERAND_FPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%%f%i\00", align 1
@OPERAND_AR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%%a%i\00", align 1
@OPERAND_CR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%%c%i\00", align 1
@OPERAND_PCREL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@OPERAND_SIGNED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@OPERAND_DISP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @print_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_insn(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.insn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.operand*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.insn* @find_insn(i8* %15)
  store %struct.insn* %16, %struct.insn** %7, align 8
  %17 = load %struct.insn*, %struct.insn** %7, align 8
  %18 = icmp ne %struct.insn* %17, null
  br i1 %18, label %19, label %245

19:                                               ; preds = %3
  %20 = load %struct.insn*, %struct.insn** %7, align 8
  %21 = getelementptr inbounds %struct.insn, %struct.insn* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load i8*, i8** %12, align 8
  %29 = load i8**, i8*** @long_insn_name, align 8
  %30 = load %struct.insn*, %struct.insn** %7, align 8
  %31 = getelementptr inbounds %struct.insn, %struct.insn* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %29, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load i8*, i8** %12, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %12, align 8
  br label %52

43:                                               ; preds = %19
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.insn*, %struct.insn** %7, align 8
  %46 = getelementptr inbounds %struct.insn, %struct.insn* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %43, %27
  store i8 0, i8* %11, align 1
  %53 = load i8**, i8*** @formats, align 8
  %54 = load %struct.insn*, %struct.insn** %7, align 8
  %55 = getelementptr inbounds %struct.insn, %struct.insn* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8*, i8** %53, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %239, %52
  %61 = load i8*, i8** %8, align 8
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 6
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i1 [ false, %60 ], [ %67, %65 ]
  br i1 %69, label %70, label %244

70:                                               ; preds = %68
  %71 = load %struct.operand*, %struct.operand** @operands, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.operand, %struct.operand* %71, i64 %75
  store %struct.operand* %76, %struct.operand** %9, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.operand*, %struct.operand** %9, align 8
  %79 = call i32 @extract_operand(i8* %77, %struct.operand* %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.operand*, %struct.operand** %9, align 8
  %81 = getelementptr inbounds %struct.operand, %struct.operand* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @OPERAND_INDEX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %70
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %239

90:                                               ; preds = %86, %70
  %91 = load %struct.operand*, %struct.operand** %9, align 8
  %92 = getelementptr inbounds %struct.operand, %struct.operand* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @OPERAND_BASE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 40
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i8 44, i8* %11, align 1
  br label %239

105:                                              ; preds = %100, %97, %90
  %106 = load i8, i8* %11, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i8*, i8** %12, align 8
  %110 = load i8, i8* %11, align 1
  %111 = sext i8 %110 to i32
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i8*, i8** %12, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %12, align 8
  br label %116

116:                                              ; preds = %108, %105
  %117 = load %struct.operand*, %struct.operand** %9, align 8
  %118 = getelementptr inbounds %struct.operand, %struct.operand* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @OPERAND_GPR, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load i8*, i8** %12, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i8*, i8** %12, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %12, align 8
  br label %215

130:                                              ; preds = %116
  %131 = load %struct.operand*, %struct.operand** %9, align 8
  %132 = getelementptr inbounds %struct.operand, %struct.operand* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @OPERAND_FPR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i8*, i8** %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 (i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i8*, i8** %12, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %12, align 8
  br label %214

144:                                              ; preds = %130
  %145 = load %struct.operand*, %struct.operand** %9, align 8
  %146 = getelementptr inbounds %struct.operand, %struct.operand* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @OPERAND_AR, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  %155 = load i8*, i8** %12, align 8
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %12, align 8
  br label %213

158:                                              ; preds = %144
  %159 = load %struct.operand*, %struct.operand** %9, align 8
  %160 = getelementptr inbounds %struct.operand, %struct.operand* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @OPERAND_CR, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i8*, i8** %12, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i8*, i8*, ...) @sprintf(i8* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  %169 = load i8*, i8** %12, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8* %171, i8** %12, align 8
  br label %212

172:                                              ; preds = %158
  %173 = load %struct.operand*, %struct.operand** %9, align 8
  %174 = getelementptr inbounds %struct.operand, %struct.operand* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @OPERAND_PCREL, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %172
  %180 = load i8*, i8** %12, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %6, align 8
  %184 = add i64 %182, %183
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i64 %184)
  %186 = load i8*, i8** %12, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %12, align 8
  br label %211

189:                                              ; preds = %172
  %190 = load %struct.operand*, %struct.operand** %9, align 8
  %191 = getelementptr inbounds %struct.operand, %struct.operand* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @OPERAND_SIGNED, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %189
  %197 = load i8*, i8** %12, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 (i8*, i8*, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %198)
  %200 = load i8*, i8** %12, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  store i8* %202, i8** %12, align 8
  br label %210

203:                                              ; preds = %189
  %204 = load i8*, i8** %12, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %205)
  %207 = load i8*, i8** %12, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %12, align 8
  br label %210

210:                                              ; preds = %203, %196
  br label %211

211:                                              ; preds = %210, %179
  br label %212

212:                                              ; preds = %211, %165
  br label %213

213:                                              ; preds = %212, %151
  br label %214

214:                                              ; preds = %213, %137
  br label %215

215:                                              ; preds = %214, %123
  %216 = load %struct.operand*, %struct.operand** %9, align 8
  %217 = getelementptr inbounds %struct.operand, %struct.operand* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @OPERAND_DISP, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  store i8 40, i8* %11, align 1
  br label %238

223:                                              ; preds = %215
  %224 = load %struct.operand*, %struct.operand** %9, align 8
  %225 = getelementptr inbounds %struct.operand, %struct.operand* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @OPERAND_BASE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = load i8*, i8** %12, align 8
  %232 = call i32 (i8*, i8*, ...) @sprintf(i8* %231, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %233 = load i8*, i8** %12, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %12, align 8
  store i8 44, i8* %11, align 1
  br label %237

236:                                              ; preds = %223
  store i8 44, i8* %11, align 1
  br label %237

237:                                              ; preds = %236, %230
  br label %238

238:                                              ; preds = %237, %222
  br label %239

239:                                              ; preds = %238, %104, %89
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %8, align 8
  %242 = load i32, i32* %13, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %60

244:                                              ; preds = %68
  br label %251

245:                                              ; preds = %3
  %246 = load i8*, i8** %12, align 8
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* %246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %248 = load i8*, i8** %12, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %12, align 8
  br label %251

251:                                              ; preds = %245, %244
  %252 = load i8*, i8** %12, align 8
  %253 = load i8*, i8** %4, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  ret i32 %257
}

declare dso_local %struct.insn* @find_insn(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @extract_operand(i8*, %struct.operand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
