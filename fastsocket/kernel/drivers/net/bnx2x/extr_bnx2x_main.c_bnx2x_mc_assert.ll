; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_mc_assert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_mc_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BAR_XSTRORM_INTMEM = common dso_local global i64 0, align 8
@XSTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"XSTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@STROM_ASSERT_ARRAY_SIZE = common dso_local global i32 0, align 4
@COMMON_ASM_INVALID_ASSERT_OPCODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"XSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@TSTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"TSTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"TSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@CSTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"CSTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"CSTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@USTORM_ASSERT_LIST_INDEX_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"USTORM_ASSERT_LIST_INDEX 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"USTORM_ASSERT_INDEX 0x%x = 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_mc_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mc_assert(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %12 = load i64, i64* @XSTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call signext i8 @REG_RD8(%struct.bnx2x* %10, i64 %13)
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %3, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i8, i8* %3, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %68, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @STROM_ASSERT_ARRAY_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %22
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %29)
  %31 = add nsw i64 %28, %30
  %32 = call i64 @REG_RD(%struct.bnx2x* %27, i64 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = add nsw i64 %37, 4
  %39 = call i64 @REG_RD(%struct.bnx2x* %33, i64 %38)
  store i64 %39, i64* %7, align 8
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 8
  %46 = call i64 @REG_RD(%struct.bnx2x* %40, i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %48 = load i64, i64* @BAR_XSTRORM_INTMEM, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @XSTORM_ASSERT_LIST_OFFSET(i32 %49)
  %51 = add nsw i64 %48, %50
  %52 = add nsw i64 %51, 12
  %53 = call i64 @REG_RD(%struct.bnx2x* %47, i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %26
  %58 = load i32, i32* %4, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %59, i64 %60, i64 %61, i64 %62)
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %26
  br label %71

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %22

71:                                               ; preds = %66, %22
  %72 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %73 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %74 = load i64, i64* @TSTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call signext i8 @REG_RD8(%struct.bnx2x* %72, i64 %75)
  store i8 %76, i8* %3, align 1
  %77 = load i8, i8* %3, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i8, i8* %3, align 1
  %81 = sext i8 %80 to i32
  %82 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %71
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %130, %83
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @STROM_ASSERT_ARRAY_SIZE, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %133

88:                                               ; preds = %84
  %89 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %90 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %91)
  %93 = add nsw i64 %90, %92
  %94 = call i64 @REG_RD(%struct.bnx2x* %89, i64 %93)
  store i64 %94, i64* %6, align 8
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %97)
  %99 = add nsw i64 %96, %98
  %100 = add nsw i64 %99, 4
  %101 = call i64 @REG_RD(%struct.bnx2x* %95, i64 %100)
  store i64 %101, i64* %7, align 8
  %102 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %103 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = add nsw i64 %106, 8
  %108 = call i64 @REG_RD(%struct.bnx2x* %102, i64 %107)
  store i64 %108, i64* %8, align 8
  %109 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %110 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i64 @TSTORM_ASSERT_LIST_OFFSET(i32 %111)
  %113 = add nsw i64 %110, %112
  %114 = add nsw i64 %113, 12
  %115 = call i64 @REG_RD(%struct.bnx2x* %109, i64 %114)
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %88
  %120 = load i32, i32* %4, align 4
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %6, align 8
  %125 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %129

128:                                              ; preds = %88
  br label %133

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %84

133:                                              ; preds = %128, %84
  %134 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %135 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %136 = load i64, i64* @CSTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %137 = add nsw i64 %135, %136
  %138 = call signext i8 @REG_RD8(%struct.bnx2x* %134, i64 %137)
  store i8 %138, i8* %3, align 1
  %139 = load i8, i8* %3, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load i8, i8* %3, align 1
  %143 = sext i8 %142 to i32
  %144 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %133
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %192, %145
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @STROM_ASSERT_ARRAY_SIZE, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %195

150:                                              ; preds = %146
  %151 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %152 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %153)
  %155 = add nsw i64 %152, %154
  %156 = call i64 @REG_RD(%struct.bnx2x* %151, i64 %155)
  store i64 %156, i64* %6, align 8
  %157 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %158 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %159 = load i32, i32* %4, align 4
  %160 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %159)
  %161 = add nsw i64 %158, %160
  %162 = add nsw i64 %161, 4
  %163 = call i64 @REG_RD(%struct.bnx2x* %157, i64 %162)
  store i64 %163, i64* %7, align 8
  %164 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %165 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %166 = load i32, i32* %4, align 4
  %167 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %166)
  %168 = add nsw i64 %165, %167
  %169 = add nsw i64 %168, 8
  %170 = call i64 @REG_RD(%struct.bnx2x* %164, i64 %169)
  store i64 %170, i64* %8, align 8
  %171 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %172 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %173 = load i32, i32* %4, align 4
  %174 = call i64 @CSTORM_ASSERT_LIST_OFFSET(i32 %173)
  %175 = add nsw i64 %172, %174
  %176 = add nsw i64 %175, 12
  %177 = call i64 @REG_RD(%struct.bnx2x* %171, i64 %176)
  store i64 %177, i64* %9, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %150
  %182 = load i32, i32* %4, align 4
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* %6, align 8
  %187 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %191

190:                                              ; preds = %150
  br label %195

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %4, align 4
  br label %146

195:                                              ; preds = %190, %146
  %196 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %197 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %198 = load i64, i64* @USTORM_ASSERT_LIST_INDEX_OFFSET, align 8
  %199 = add nsw i64 %197, %198
  %200 = call signext i8 @REG_RD8(%struct.bnx2x* %196, i64 %199)
  store i8 %200, i8* %3, align 1
  %201 = load i8, i8* %3, align 1
  %202 = icmp ne i8 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load i8, i8* %3, align 1
  %205 = sext i8 %204 to i32
  %206 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  br label %207

207:                                              ; preds = %203, %195
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %254, %207
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* @STROM_ASSERT_ARRAY_SIZE, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %257

212:                                              ; preds = %208
  %213 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %214 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %215 = load i32, i32* %4, align 4
  %216 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %215)
  %217 = add nsw i64 %214, %216
  %218 = call i64 @REG_RD(%struct.bnx2x* %213, i64 %217)
  store i64 %218, i64* %6, align 8
  %219 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %220 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %221 = load i32, i32* %4, align 4
  %222 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %221)
  %223 = add nsw i64 %220, %222
  %224 = add nsw i64 %223, 4
  %225 = call i64 @REG_RD(%struct.bnx2x* %219, i64 %224)
  store i64 %225, i64* %7, align 8
  %226 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %227 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %228 = load i32, i32* %4, align 4
  %229 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %228)
  %230 = add nsw i64 %227, %229
  %231 = add nsw i64 %230, 8
  %232 = call i64 @REG_RD(%struct.bnx2x* %226, i64 %231)
  store i64 %232, i64* %8, align 8
  %233 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %234 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %235 = load i32, i32* %4, align 4
  %236 = call i64 @USTORM_ASSERT_LIST_OFFSET(i32 %235)
  %237 = add nsw i64 %234, %236
  %238 = add nsw i64 %237, 12
  %239 = call i64 @REG_RD(%struct.bnx2x* %233, i64 %238)
  store i64 %239, i64* %9, align 8
  %240 = load i64, i64* %6, align 8
  %241 = load i64, i64* @COMMON_ASM_INVALID_ASSERT_OPCODE, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %212
  %244 = load i32, i32* %4, align 4
  %245 = load i64, i64* %9, align 8
  %246 = load i64, i64* %8, align 8
  %247 = load i64, i64* %7, align 8
  %248 = load i64, i64* %6, align 8
  %249 = call i32 (i8*, i32, ...) @BNX2X_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %244, i64 %245, i64 %246, i64 %247, i64 %248)
  %250 = load i32, i32* %5, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %5, align 4
  br label %253

252:                                              ; preds = %212
  br label %257

253:                                              ; preds = %243
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  br label %208

257:                                              ; preds = %252, %208
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local signext i8 @REG_RD8(%struct.bnx2x*, i64) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, ...) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i64 @XSTORM_ASSERT_LIST_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ASSERT_LIST_OFFSET(i32) #1

declare dso_local i64 @CSTORM_ASSERT_LIST_OFFSET(i32) #1

declare dso_local i64 @USTORM_ASSERT_LIST_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
