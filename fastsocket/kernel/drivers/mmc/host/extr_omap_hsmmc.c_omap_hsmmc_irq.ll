; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32, %struct.mmc_data*, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mmc_data = type { i32 }

@STAT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"IRQ Status is %x\0A\00", align 1
@ERR = common dso_local global i32 0, align 4
@CMD_TIMEOUT = common dso_local global i32 0, align 4
@CMD_CRC = common dso_local global i32 0, align 4
@SRC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@SRD = common dso_local global i32 0, align 4
@DATA_TIMEOUT = common dso_local global i32 0, align 4
@DATA_CRC = common dso_local global i32 0, align 4
@CARD_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Ignoring card err CMD%d\0A\00", align 1
@CC = common dso_local global i32 0, align 4
@TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_hsmmc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_hsmmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_hsmmc_host*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.omap_hsmmc_host*
  store %struct.omap_hsmmc_host* %13, %struct.omap_hsmmc_host** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %18 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp eq %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %23 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STAT, align 4
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @STAT, align 4
  %30 = call i32 @OMAP_HSMMC_READ(i32 %28, i32 %29)
  %31 = call i32 @OMAP_HSMMC_WRITE(i32 %24, i32 %25, i32 %30)
  %32 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %33 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @STAT, align 4
  %36 = call i32 @OMAP_HSMMC_READ(i32 %34, i32 %35)
  %37 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %38 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %40, i32* %3, align 4
  br label %262

41:                                               ; preds = %2
  %42 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %43 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %42, i32 0, i32 4
  %44 = load %struct.mmc_data*, %struct.mmc_data** %43, align 8
  store %struct.mmc_data* %44, %struct.mmc_data** %7, align 8
  %45 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %46 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @STAT, align 4
  %49 = call i32 @OMAP_HSMMC_READ(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %51 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mmc_dev(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ERR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %210

60:                                               ; preds = %41
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @CMD_TIMEOUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @CMD_CRC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %125

70:                                               ; preds = %65, %60
  %71 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %72 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @CMD_TIMEOUT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %82 = load i32, i32* @SRC, align 4
  %83 = call i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host* %81, i32 %82)
  %84 = load i32, i32* @ETIMEDOUT, align 4
  %85 = sub nsw i32 0, %84
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %87 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  br label %97

90:                                               ; preds = %75
  %91 = load i32, i32* @EILSEQ, align 4
  %92 = sub nsw i32 0, %91
  %93 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %94 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %80
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %100 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %99, i32 0, i32 4
  %101 = load %struct.mmc_data*, %struct.mmc_data** %100, align 8
  %102 = icmp ne %struct.mmc_data* %101, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %105 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %103, %98
  %109 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %110 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %109, i32 0, i32 4
  %111 = load %struct.mmc_data*, %struct.mmc_data** %110, align 8
  %112 = icmp ne %struct.mmc_data* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %115 = load i32, i32* @ETIMEDOUT, align 4
  %116 = sub nsw i32 0, %115
  %117 = call i32 @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host* %114, i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %120 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %119, i32 0, i32 6
  store i64 0, i64* %120, align 8
  %121 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %122 = load i32, i32* @SRD, align 4
  %123 = call i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host* %121, i32 %122)
  br label %124

124:                                              ; preds = %118, %103
  br label %125

125:                                              ; preds = %124, %65
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @DATA_TIMEOUT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @DATA_CRC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %181

135:                                              ; preds = %130, %125
  %136 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %137 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %136, i32 0, i32 4
  %138 = load %struct.mmc_data*, %struct.mmc_data** %137, align 8
  %139 = icmp ne %struct.mmc_data* %138, null
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %142 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %180

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @DATA_TIMEOUT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = sub nsw i32 0, %151
  br label %156

153:                                              ; preds = %145
  %154 = load i32, i32* @EILSEQ, align 4
  %155 = sub nsw i32 0, %154
  br label %156

156:                                              ; preds = %153, %150
  %157 = phi i32 [ %152, %150 ], [ %155, %153 ]
  store i32 %157, i32* %11, align 4
  %158 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %159 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %158, i32 0, i32 4
  %160 = load %struct.mmc_data*, %struct.mmc_data** %159, align 8
  %161 = icmp ne %struct.mmc_data* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host* %163, i32 %164)
  br label %174

166:                                              ; preds = %156
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %169 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i32 %167, i32* %173, align 4
  br label %174

174:                                              ; preds = %166, %162
  %175 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %176 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %175, i32 0, i32 6
  store i64 0, i64* %176, align 8
  %177 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %178 = load i32, i32* @SRD, align 4
  %179 = call i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host* %177, i32 %178)
  store i32 1, i32* %9, align 4
  br label %180

180:                                              ; preds = %174, %140
  br label %181

181:                                              ; preds = %180, %130
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @CARD_ERR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %181
  %187 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %188 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @mmc_dev(i32 %189)
  %191 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %192 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %191, i32 0, i32 2
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dev_dbg(i32 %190, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %198 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %197, i32 0, i32 2
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = icmp ne %struct.TYPE_6__* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %186
  store i32 1, i32* %8, align 4
  br label %202

202:                                              ; preds = %201, %186
  %203 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %204 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %203, i32 0, i32 4
  %205 = load %struct.mmc_data*, %struct.mmc_data** %204, align 8
  %206 = icmp ne %struct.mmc_data* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 1, i32* %9, align 4
  br label %208

208:                                              ; preds = %207, %202
  br label %209

209:                                              ; preds = %208, %181
  br label %210

210:                                              ; preds = %209, %41
  %211 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %212 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @STAT, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @OMAP_HSMMC_WRITE(i32 %213, i32 %214, i32 %215)
  %217 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %218 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @STAT, align 4
  %221 = call i32 @OMAP_HSMMC_READ(i32 %219, i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %210
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @CC, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %224
  %230 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %231 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %230, i32 0, i32 2
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = icmp ne %struct.TYPE_6__* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %229, %210
  %235 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %236 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %237 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %236, i32 0, i32 2
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = call i32 @omap_hsmmc_cmd_done(%struct.omap_hsmmc_host* %235, %struct.TYPE_6__* %238)
  br label %240

240:                                              ; preds = %234, %229, %224
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @TC, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %243, %240
  %249 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %250 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %249, i32 0, i32 1
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = icmp ne %struct.TYPE_5__* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %255 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %256 = call i32 @omap_hsmmc_xfer_done(%struct.omap_hsmmc_host* %254, %struct.mmc_data* %255)
  br label %257

257:                                              ; preds = %253, %248, %243
  %258 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %6, align 8
  %259 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %258, i32 0, i32 0
  %260 = call i32 @spin_unlock(i32* %259)
  %261 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %261, i32* %3, align 4
  br label %262

262:                                              ; preds = %257, %21
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @omap_hsmmc_reset_controller_fsm(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @omap_hsmmc_dma_cleanup(%struct.omap_hsmmc_host*, i32) #1

declare dso_local i32 @omap_hsmmc_cmd_done(%struct.omap_hsmmc_host*, %struct.TYPE_6__*) #1

declare dso_local i32 @omap_hsmmc_xfer_done(%struct.omap_hsmmc_host*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
