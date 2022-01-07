; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_cmdfunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_cmdfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, i32, %struct.cafe_priv* }
%struct.cafe_priv = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"cmdfunc %02x, 0x%x, 0x%x\0A\00", align 1
@NAND_CTRL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Continue command, ctl1 %08x, #data %d\0A\00", align 1
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@NAND_ADDR1 = common dso_local global i32 0, align 4
@NAND_ADDR2 = common dso_local global i32 0, align 4
@CTRL1_CHIPSELECT = common dso_local global i32 0, align 4
@NAND_CMD_READID = common dso_local global i32 0, align 4
@NAND_CMD_READ1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Setup for delayed command, ctl1 %08x, dlen %x\0A\00", align 1
@NAND_CMD_RNDOUTSTART = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"dlen %x, ctl1 %x, ctl2 %x\0A\00", align 1
@NAND_DATA_LEN = common dso_local global i32 0, align 4
@NAND_IRQ = common dso_local global i32 0, align 4
@usedma = common dso_local global i64 0, align 8
@NAND_DMA_CTRL = common dso_local global i32 0, align 4
@regdebug = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"About to write command %08x to register 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Register %x: %08x\0A\00", align 1
@NAND_CTRL1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Wait for ready, IRQ %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"Command %x completed after %d usec, irqs %x (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32, i32, i32)* @cafe_nand_cmdfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_nand_cmdfunc(%struct.mtd_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cafe_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 3
  %19 = load %struct.cafe_priv*, %struct.cafe_priv** %18, align 8
  store %struct.cafe_priv* %19, %struct.cafe_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -2147483648, i32* %12, align 4
  %20 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %21 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 138
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 137
  br i1 %32, label %33, label %61

33:                                               ; preds = %30, %4
  %34 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %35 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %36 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, 256
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @NAND_CTRL2, align 4
  %42 = call i32 @cafe_writel(%struct.cafe_priv* %34, i32 %40, i32 %41)
  %43 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %44 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %47 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, -1073741825
  store i32 %49, i32* %47, align 8
  %50 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %51 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %55 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %58 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %59)
  br label %249

61:                                               ; preds = %30
  %62 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %63 = load i32, i32* @NAND_CTRL2, align 4
  %64 = call i32 @cafe_writel(%struct.cafe_priv* %62, i32 0, i32 %63)
  %65 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 512
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @NAND_CMD_READOOB, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %75 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @NAND_CMD_READ0, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %69, %61
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @NAND_ADDR1, align 4
  %87 = call i32 @cafe_writel(%struct.cafe_priv* %84, i32 %85, i32 %86)
  store i32 2, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %103

91:                                               ; preds = %83
  br label %123

92:                                               ; preds = %80
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %122

95:                                               ; preds = %92
  %96 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 65535
  %99 = load i32, i32* @NAND_ADDR1, align 4
  %100 = call i32 @cafe_writel(%struct.cafe_priv* %96, i32 %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 16
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %95, %90
  %104 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @NAND_ADDR2, align 4
  %107 = call i32 @cafe_writel(%struct.cafe_priv* %104, i32 %105, i32 %106)
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %10, align 4
  %110 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %111 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %114 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 16
  %117 = icmp sgt i32 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %103
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %122, %91
  %124 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %125 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %127 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %126, i32 0, i32 2
  store i32 0, i32* %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = or i32 -2147483648, %128
  %130 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %131 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CTRL1_CHIPSELECT, align 4
  %134 = and i32 %132, %133
  %135 = or i32 %129, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @NAND_CMD_READID, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %123
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 133
  br i1 %141, label %142, label %147

142:                                              ; preds = %139, %123
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, 67108864
  store i32 %144, i32* %11, align 4
  %145 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %146 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %145, i32 0, i32 3
  store i32 4, i32* %146, align 4
  store i32 1, i32* %10, align 4
  br label %184

147:                                              ; preds = %139
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @NAND_CMD_READ0, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %162, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @NAND_CMD_READ1, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @NAND_CMD_READOOB, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 135
  br i1 %161, label %162, label %176

162:                                              ; preds = %159, %155, %151, %147
  %163 = load i32, i32* %11, align 4
  %164 = or i32 %163, 67108864
  store i32 %164, i32* %11, align 4
  %165 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %166 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %169 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %167, %170
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %175 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  br label %183

176:                                              ; preds = %159
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 134
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %11, align 4
  %181 = or i32 %180, 33554432
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %176
  br label %183

183:                                              ; preds = %182, %162
  br label %184

184:                                              ; preds = %183, %142
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %184
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 %188, 1
  %190 = or i32 %189, 8
  %191 = shl i32 %190, 27
  %192 = load i32, i32* %11, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %11, align 4
  br label %194

194:                                              ; preds = %187, %184
  %195 = load i32, i32* %6, align 4
  %196 = icmp eq i32 %195, 134
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %6, align 4
  %199 = icmp eq i32 %198, 139
  br i1 %199, label %200, label %215

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %203 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %205 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %204, i32 0, i32 4
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %209 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %212 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %207, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %210, i32 %213)
  br label %393

215:                                              ; preds = %197
  %216 = load i32, i32* %6, align 4
  %217 = icmp eq i32 %216, 135
  br i1 %217, label %218, label %228

218:                                              ; preds = %215
  %219 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %220 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %221 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, 256
  %224 = load i32, i32* @NAND_CMD_RNDOUTSTART, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @NAND_CTRL2, align 4
  %227 = call i32 @cafe_writel(%struct.cafe_priv* %219, i32 %225, i32 %226)
  br label %248

228:                                              ; preds = %215
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @NAND_CMD_READ0, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %247

232:                                              ; preds = %228
  %233 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %234 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp sgt i32 %235, 512
  br i1 %236, label %237, label %247

237:                                              ; preds = %232
  %238 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %239 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %240 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = or i32 %241, 256
  %243 = load i32, i32* @NAND_CMD_READSTART, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* @NAND_CTRL2, align 4
  %246 = call i32 @cafe_writel(%struct.cafe_priv* %238, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %237, %232, %228
  br label %248

248:                                              ; preds = %247, %218
  br label %249

249:                                              ; preds = %248, %33
  %250 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %251 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %250, i32 0, i32 4
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %255 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %11, align 4
  %258 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %259 = load i32, i32* @NAND_CTRL2, align 4
  %260 = call i32 @cafe_readl(%struct.cafe_priv* %258, i32 %259)
  %261 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %253, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %256, i32 %257, i32 %260)
  %262 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %263 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %264 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @NAND_DATA_LEN, align 4
  %267 = call i32 @cafe_writel(%struct.cafe_priv* %262, i32 %265, i32 %266)
  %268 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %269 = load i32, i32* @NAND_IRQ, align 4
  %270 = call i32 @cafe_writel(%struct.cafe_priv* %268, i32 -1879048192, i32 %269)
  %271 = load i64, i64* @usedma, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %249
  %274 = load i32, i32* %11, align 4
  %275 = and i32 %274, 100663296
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %273
  %278 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %279 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = add i32 -1073741824, %280
  store i32 %281, i32* %13, align 4
  %282 = load i32, i32* %11, align 4
  %283 = and i32 %282, 67108864
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load i32, i32* %13, align 4
  %287 = or i32 %286, 536870912
  store i32 %287, i32* %13, align 4
  store i32 268435456, i32* %12, align 4
  br label %288

288:                                              ; preds = %285, %277
  %289 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load i32, i32* @NAND_DMA_CTRL, align 4
  %292 = call i32 @cafe_writel(%struct.cafe_priv* %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %288, %273, %249
  %294 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %295 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %294, i32 0, i32 3
  store i32 0, i32* %295, align 4
  %296 = load i32, i32* @regdebug, align 4
  %297 = call i64 @unlikely(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %319

299:                                              ; preds = %293
  %300 = load i32, i32* %11, align 4
  %301 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %300)
  store i32 4, i32* %14, align 4
  br label %302

302:                                              ; preds = %315, %299
  %303 = load i32, i32* %14, align 4
  %304 = icmp slt i32 %303, 92
  br i1 %304, label %305, label %318

305:                                              ; preds = %302
  %306 = load i32, i32* %14, align 4
  %307 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %308 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %309, %311
  %313 = call i32 @readl(i64 %312)
  %314 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %306, i32 %313)
  br label %315

315:                                              ; preds = %305
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %316, 4
  store i32 %317, i32* %14, align 4
  br label %302

318:                                              ; preds = %302
  br label %319

319:                                              ; preds = %318, %293
  %320 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @NAND_CTRL1, align 4
  %323 = call i32 @cafe_writel(%struct.cafe_priv* %320, i32 %321, i32 %322)
  %324 = call i32 @ndelay(i32 100)
  store i32 500000, i32* %15, align 4
  br label %325

325:                                              ; preds = %351, %319
  %326 = load i32, i32* %15, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %354

328:                                              ; preds = %325
  %329 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %330 = load i32, i32* @NAND_IRQ, align 4
  %331 = call i32 @cafe_readl(%struct.cafe_priv* %329, i32 %330)
  store i32 %331, i32* %16, align 4
  %332 = load i32, i32* %16, align 4
  %333 = load i32, i32* %12, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %328
  br label %354

337:                                              ; preds = %328
  %338 = call i32 @udelay(i32 1)
  %339 = load i32, i32* %15, align 4
  %340 = srem i32 %339, 100000
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %349, label %342

342:                                              ; preds = %337
  %343 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %344 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %343, i32 0, i32 4
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 0
  %347 = load i32, i32* %16, align 4
  %348 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %346, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %347)
  br label %349

349:                                              ; preds = %342, %337
  %350 = call i32 (...) @cpu_relax()
  br label %351

351:                                              ; preds = %349
  %352 = load i32, i32* %15, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %15, align 4
  br label %325

354:                                              ; preds = %336, %325
  %355 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* @NAND_IRQ, align 4
  %358 = call i32 @cafe_writel(%struct.cafe_priv* %355, i32 %356, i32 %357)
  %359 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %360 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %359, i32 0, i32 4
  %361 = load %struct.TYPE_2__*, %struct.TYPE_2__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 0
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* %15, align 4
  %365 = sub nsw i32 500000, %364
  %366 = load i32, i32* %16, align 4
  %367 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %368 = load i32, i32* @NAND_IRQ, align 4
  %369 = call i32 @cafe_readl(%struct.cafe_priv* %367, i32 %368)
  %370 = call i32 (i32*, i8*, i32, ...) @cafe_dev_dbg(i32* %362, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %363, i32 %365, i32 %366, i32 %369)
  %371 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %372 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = and i32 %373, 1073741824
  %375 = call i32 @WARN_ON(i32 %374)
  %376 = load i32, i32* %6, align 4
  switch i32 %376, label %384 [
    i32 141, label %377
    i32 137, label %377
    i32 139, label %377
    i32 138, label %377
    i32 134, label %377
    i32 136, label %377
    i32 133, label %377
    i32 140, label %377
    i32 135, label %377
    i32 132, label %377
    i32 131, label %377
    i32 130, label %377
    i32 129, label %377
    i32 128, label %377
  ]

377:                                              ; preds = %354, %354, %354, %354, %354, %354, %354, %354, %354, %354, %354, %354, %354, %354
  %378 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %379 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %380 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = load i32, i32* @NAND_CTRL2, align 4
  %383 = call i32 @cafe_writel(%struct.cafe_priv* %378, i32 %381, i32 %382)
  br label %393

384:                                              ; preds = %354
  %385 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %386 = call i32 @nand_wait_ready(%struct.mtd_info* %385)
  %387 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %388 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  %389 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load i32, i32* @NAND_CTRL2, align 4
  %392 = call i32 @cafe_writel(%struct.cafe_priv* %387, i32 %390, i32 %391)
  br label %393

393:                                              ; preds = %384, %377, %200
  ret void
}

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @cafe_writel(%struct.cafe_priv*, i32, i32) #1

declare dso_local i32 @cafe_readl(%struct.cafe_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nand_wait_ready(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
