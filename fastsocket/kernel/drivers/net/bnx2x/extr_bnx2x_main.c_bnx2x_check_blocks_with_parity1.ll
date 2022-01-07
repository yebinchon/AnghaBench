; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"PBF\00", align 1
@PBF_REG_PBF_PRTY_STS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"QM\00", align 1
@QM_REG_QM_PRTY_STS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"TM\00", align 1
@TM_REG_TM_PRTY_STS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"XSDM\00", align 1
@XSDM_REG_XSDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"XCM\00", align 1
@XCM_REG_XCM_PRTY_STS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"XSEMI\00", align 1
@XSEM_REG_XSEM_PRTY_STS_0 = common dso_local global i64 0, align 8
@XSEM_REG_XSEM_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"DOORBELLQ\00", align 1
@DORQ_REG_DORQ_PRTY_STS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"NIG\00", align 1
@NIG_REG_NIG_PRTY_STS = common dso_local global i64 0, align 8
@NIG_REG_NIG_PRTY_STS_0 = common dso_local global i64 0, align 8
@NIG_REG_NIG_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"VAUX PCI CORE\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@DBG_REG_DBG_PRTY_STS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"USDM\00", align 1
@USDM_REG_USDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"UCM\00", align 1
@UCM_REG_UCM_PRTY_STS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [6 x i8] c"USEMI\00", align 1
@USEM_REG_USEM_PRTY_STS_0 = common dso_local global i64 0, align 8
@USEM_REG_USEM_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"UPB\00", align 1
@GRCBASE_UPB = common dso_local global i64 0, align 8
@PB_REG_PB_PRTY_STS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"CSDM\00", align 1
@CSDM_REG_CSDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [4 x i8] c"CCM\00", align 1
@CCM_REG_CCM_PRTY_STS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32, i32*, i32)* @bnx2x_check_blocks_with_parity1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_blocks_with_parity1(%struct.bnx2x* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %225, %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %228

16:                                               ; preds = %13
  %17 = load i32, i32* %11, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %12, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %224

23:                                               ; preds = %16
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %219 [
    i32 138, label %25
    i32 137, label %36
    i32 136, label %47
    i32 129, label %58
    i32 130, label %69
    i32 128, label %80
    i32 140, label %94
    i32 139, label %105
    i32 131, label %128
    i32 141, label %137
    i32 133, label %148
    i32 135, label %159
    i32 132, label %170
    i32 134, label %184
    i32 142, label %197
    i32 143, label %208
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = call i32 @_print_next_block(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %33 = load i64, i64* @PBF_REG_PBF_PRTY_STS, align 8
  %34 = call i32 @_print_parity(%struct.bnx2x* %32, i64 %33)
  br label %35

35:                                               ; preds = %28, %25
  br label %219

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  %42 = call i32 @_print_next_block(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %44 = load i64, i64* @QM_REG_QM_PRTY_STS, align 8
  %45 = call i32 @_print_parity(%struct.bnx2x* %43, i64 %44)
  br label %46

46:                                               ; preds = %39, %36
  br label %219

47:                                               ; preds = %23
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = call i32 @_print_next_block(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %55 = load i64, i64* @TM_REG_TM_PRTY_STS, align 8
  %56 = call i32 @_print_parity(%struct.bnx2x* %54, i64 %55)
  br label %57

57:                                               ; preds = %50, %47
  br label %219

58:                                               ; preds = %23
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = call i32 @_print_next_block(i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %66 = load i64, i64* @XSDM_REG_XSDM_PRTY_STS, align 8
  %67 = call i32 @_print_parity(%struct.bnx2x* %65, i64 %66)
  br label %68

68:                                               ; preds = %61, %58
  br label %219

69:                                               ; preds = %23
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = call i32 @_print_next_block(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %77 = load i64, i64* @XCM_REG_XCM_PRTY_STS, align 8
  %78 = call i32 @_print_parity(%struct.bnx2x* %76, i64 %77)
  br label %79

79:                                               ; preds = %72, %69
  br label %219

80:                                               ; preds = %23
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = call i32 @_print_next_block(i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %88 = load i64, i64* @XSEM_REG_XSEM_PRTY_STS_0, align 8
  %89 = call i32 @_print_parity(%struct.bnx2x* %87, i64 %88)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %91 = load i64, i64* @XSEM_REG_XSEM_PRTY_STS_1, align 8
  %92 = call i32 @_print_parity(%struct.bnx2x* %90, i64 %91)
  br label %93

93:                                               ; preds = %83, %80
  br label %219

94:                                               ; preds = %23
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = call i32 @_print_next_block(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %101 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %102 = load i64, i64* @DORQ_REG_DORQ_PRTY_STS, align 8
  %103 = call i32 @_print_parity(%struct.bnx2x* %101, i64 %102)
  br label %104

104:                                              ; preds = %97, %94
  br label %219

105:                                              ; preds = %23
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  %111 = call i32 @_print_next_block(i32 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %112 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %113 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %117 = load i64, i64* @NIG_REG_NIG_PRTY_STS, align 8
  %118 = call i32 @_print_parity(%struct.bnx2x* %116, i64 %117)
  br label %126

119:                                              ; preds = %108
  %120 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %121 = load i64, i64* @NIG_REG_NIG_PRTY_STS_0, align 8
  %122 = call i32 @_print_parity(%struct.bnx2x* %120, i64 %121)
  %123 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %124 = load i64, i64* @NIG_REG_NIG_PRTY_STS_1, align 8
  %125 = call i32 @_print_parity(%struct.bnx2x* %123, i64 %124)
  br label %126

126:                                              ; preds = %119, %115
  br label %127

127:                                              ; preds = %126, %105
  br label %219

128:                                              ; preds = %23
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = call i32 @_print_next_block(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %135

135:                                              ; preds = %131, %128
  %136 = load i32*, i32** %9, align 8
  store i32 1, i32* %136, align 4
  br label %219

137:                                              ; preds = %23
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = call i32 @_print_next_block(i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %144 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %145 = load i64, i64* @DBG_REG_DBG_PRTY_STS, align 8
  %146 = call i32 @_print_parity(%struct.bnx2x* %144, i64 %145)
  br label %147

147:                                              ; preds = %140, %137
  br label %219

148:                                              ; preds = %23
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  %154 = call i32 @_print_next_block(i32 %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %155 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %156 = load i64, i64* @USDM_REG_USDM_PRTY_STS, align 8
  %157 = call i32 @_print_parity(%struct.bnx2x* %155, i64 %156)
  br label %158

158:                                              ; preds = %151, %148
  br label %219

159:                                              ; preds = %23
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  %165 = call i32 @_print_next_block(i32 %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %166 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %167 = load i64, i64* @UCM_REG_UCM_PRTY_STS, align 8
  %168 = call i32 @_print_parity(%struct.bnx2x* %166, i64 %167)
  br label %169

169:                                              ; preds = %162, %159
  br label %219

170:                                              ; preds = %23
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  %176 = call i32 @_print_next_block(i32 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %177 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %178 = load i64, i64* @USEM_REG_USEM_PRTY_STS_0, align 8
  %179 = call i32 @_print_parity(%struct.bnx2x* %177, i64 %178)
  %180 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %181 = load i64, i64* @USEM_REG_USEM_PRTY_STS_1, align 8
  %182 = call i32 @_print_parity(%struct.bnx2x* %180, i64 %181)
  br label %183

183:                                              ; preds = %173, %170
  br label %219

184:                                              ; preds = %23
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %184
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %8, align 4
  %190 = call i32 @_print_next_block(i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %191 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %192 = load i64, i64* @GRCBASE_UPB, align 8
  %193 = load i64, i64* @PB_REG_PB_PRTY_STS, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @_print_parity(%struct.bnx2x* %191, i64 %194)
  br label %196

196:                                              ; preds = %187, %184
  br label %219

197:                                              ; preds = %23
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %197
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  %203 = call i32 @_print_next_block(i32 %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %204 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %205 = load i64, i64* @CSDM_REG_CSDM_PRTY_STS, align 8
  %206 = call i32 @_print_parity(%struct.bnx2x* %204, i64 %205)
  br label %207

207:                                              ; preds = %200, %197
  br label %219

208:                                              ; preds = %23
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  %214 = call i32 @_print_next_block(i32 %212, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %215 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %216 = load i64, i64* @CCM_REG_CCM_PRTY_STS, align 8
  %217 = call i32 @_print_parity(%struct.bnx2x* %215, i64 %216)
  br label %218

218:                                              ; preds = %211, %208
  br label %219

219:                                              ; preds = %23, %218, %207, %196, %183, %169, %158, %147, %135, %127, %104, %93, %79, %68, %57, %46, %35
  %220 = load i32, i32* %12, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %7, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %7, align 4
  br label %224

224:                                              ; preds = %219, %16
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %13

228:                                              ; preds = %13
  %229 = load i32, i32* %8, align 4
  ret i32 %229
}

declare dso_local i32 @_print_next_block(i32, i8*) #1

declare dso_local i32 @_print_parity(%struct.bnx2x*, i64) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
