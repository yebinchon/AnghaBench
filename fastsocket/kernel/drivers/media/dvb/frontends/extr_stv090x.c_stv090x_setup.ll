; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_reg = type { i32, i32 }
%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i64, %struct.TYPE_2__*, %struct.stv090x_config* }
%struct.TYPE_2__ = type { i32 }
%struct.stv090x_config = type { i32, i64, i64, i64, i32 }

@STV0900 = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Initializing STV0900\00", align 1
@stv0900_initval = common dso_local global %struct.stv090x_reg* null, align 8
@stv0900_cut20_val = common dso_local global %struct.stv090x_reg* null, align 8
@STV0903 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Initializing STV0903\00", align 1
@stv0903_initval = common dso_local global %struct.stv090x_reg* null, align 8
@stv0903_cut20_val = common dso_local global %struct.stv090x_reg* null, align 8
@STV090x_P1_DMDISTATE = common dso_local global i32 0, align 4
@STV090x_P2_DMDISTATE = common dso_local global i32 0, align 4
@STV090x_P1_TNRCFG = common dso_local global i32 0, align 4
@STV090x_P2_TNRCFG = common dso_local global i32 0, align 4
@ENARPT_LEVEL_FIELD = common dso_local global i32 0, align 4
@STV090x_P1_I2CRPT = common dso_local global i32 0, align 4
@STV090x_P2_I2CRPT = common dso_local global i32 0, align 4
@STV090x_NCOARSE = common dso_local global i32 0, align 4
@STV090x_I2CCFG = common dso_local global i32 0, align 4
@STV090x_SYNTCTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Setting up initial values\00", align 1
@STV090x_MID = common dso_local global i32 0, align 4
@STV090x_TSGENERAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Setting up Cut 2.0 initial values\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ERROR: Unsupported Cut: 0x%02x!\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"INFO: Cut: 0x%02x probably incomplete support!\00", align 1
@STV090x_TSTTNR1 = common dso_local global i32 0, align 4
@ADC1_INMODE_FIELD = common dso_local global i32 0, align 4
@STV090x_ADC_1Vpp = common dso_local global i64 0, align 8
@STV090x_TSTTNR3 = common dso_local global i32 0, align 4
@ADC2_INMODE_FIELD = common dso_local global i32 0, align 4
@STV090x_TSTRES0 = common dso_local global i32 0, align 4
@SEC_MINI_A = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv090x_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_setup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stv090x_state*, align 8
  %5 = alloca %struct.stv090x_config*, align 8
  %6 = alloca %struct.stv090x_reg*, align 8
  %7 = alloca %struct.stv090x_reg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %13, align 8
  store %struct.stv090x_state* %14, %struct.stv090x_state** %4, align 8
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 2
  %17 = load %struct.stv090x_config*, %struct.stv090x_config** %16, align 8
  store %struct.stv090x_config* %17, %struct.stv090x_config** %5, align 8
  store %struct.stv090x_reg* null, %struct.stv090x_reg** %6, align 8
  store %struct.stv090x_reg* null, %struct.stv090x_reg** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %19 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @STV0900, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @FE_DEBUG, align 4
  %25 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %24, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_initval, align 8
  store %struct.stv090x_reg* %26, %struct.stv090x_reg** %6, align 8
  %27 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_initval, align 8
  %28 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %27)
  store i64 %28, i64* %8, align 8
  %29 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_cut20_val, align 8
  store %struct.stv090x_reg* %29, %struct.stv090x_reg** %7, align 8
  %30 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0900_cut20_val, align 8
  %31 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %30)
  store i64 %31, i64* %9, align 8
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %34 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STV0903, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load i32, i32* @FE_DEBUG, align 4
  %40 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %39, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_initval, align 8
  store %struct.stv090x_reg* %41, %struct.stv090x_reg** %6, align 8
  %42 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_initval, align 8
  %43 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %42)
  store i64 %43, i64* %8, align 8
  %44 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_cut20_val, align 8
  store %struct.stv090x_reg* %44, %struct.stv090x_reg** %7, align 8
  %45 = load %struct.stv090x_reg*, %struct.stv090x_reg** @stv0903_cut20_val, align 8
  %46 = call i64 @ARRAY_SIZE(%struct.stv090x_reg* %45)
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %38, %32
  br label %48

48:                                               ; preds = %47, %23
  %49 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %50 = load i32, i32* @STV090x_P1_DMDISTATE, align 4
  %51 = call i64 @stv090x_write_reg(%struct.stv090x_state* %49, i32 %50, i32 92)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %293

54:                                               ; preds = %48
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %56 = load i32, i32* @STV090x_P2_DMDISTATE, align 4
  %57 = call i64 @stv090x_write_reg(%struct.stv090x_state* %55, i32 %56, i32 92)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %293

60:                                               ; preds = %54
  %61 = call i32 @msleep(i32 5)
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %63 = load i32, i32* @STV090x_P1_TNRCFG, align 4
  %64 = call i64 @stv090x_write_reg(%struct.stv090x_state* %62, i32 %63, i32 108)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %293

67:                                               ; preds = %60
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %69 = load i32, i32* @STV090x_P2_TNRCFG, align 4
  %70 = call i64 @stv090x_write_reg(%struct.stv090x_state* %68, i32 %69, i32 108)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %293

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ENARPT_LEVEL_FIELD, align 4
  %76 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %77 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @STV090x_SETFIELD_Px(i32 %74, i32 %75, i32 %78)
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %81 = load i32, i32* @STV090x_P1_I2CRPT, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @stv090x_write_reg(%struct.stv090x_state* %80, i32 %81, i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %293

86:                                               ; preds = %73
  %87 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %88 = load i32, i32* @STV090x_P2_I2CRPT, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @stv090x_write_reg(%struct.stv090x_state* %87, i32 %88, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %293

93:                                               ; preds = %86
  %94 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %95 = load i32, i32* @STV090x_NCOARSE, align 4
  %96 = call i64 @stv090x_write_reg(%struct.stv090x_state* %94, i32 %95, i32 19)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %293

99:                                               ; preds = %93
  %100 = call i32 @msleep(i32 5)
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %102 = load i32, i32* @STV090x_I2CCFG, align 4
  %103 = call i64 @stv090x_write_reg(%struct.stv090x_state* %101, i32 %102, i32 8)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %293

106:                                              ; preds = %99
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %108 = load i32, i32* @STV090x_SYNTCTRL, align 4
  %109 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %110 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 32, %111
  %113 = call i64 @stv090x_write_reg(%struct.stv090x_state* %107, i32 %108, i32 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %293

116:                                              ; preds = %106
  %117 = call i32 @msleep(i32 5)
  %118 = load i32, i32* @FE_DEBUG, align 4
  %119 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %118, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %143, %116
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %8, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %146

125:                                              ; preds = %120
  %126 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %127 = load %struct.stv090x_reg*, %struct.stv090x_reg** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %127, i64 %129
  %131 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.stv090x_reg*, %struct.stv090x_reg** %6, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %133, i64 %135
  %137 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @stv090x_write_reg(%struct.stv090x_state* %126, i32 %132, i32 %138)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %293

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %120

146:                                              ; preds = %120
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %148 = load i32, i32* @STV090x_MID, align 4
  %149 = call i8* @stv090x_read_reg(%struct.stv090x_state* %147, i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %152 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 4
  %155 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %156 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sge i32 %159, 32
  br i1 %160, label %161, label %197

161:                                              ; preds = %146
  %162 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %163 = load i32, i32* @STV090x_TSGENERAL, align 4
  %164 = call i64 @stv090x_write_reg(%struct.stv090x_state* %162, i32 %163, i32 12)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %293

167:                                              ; preds = %161
  %168 = load i32, i32* @FE_DEBUG, align 4
  %169 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %168, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %193, %167
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %9, align 8
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %177 = load %struct.stv090x_reg*, %struct.stv090x_reg** %7, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %177, i64 %179
  %181 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.stv090x_reg*, %struct.stv090x_reg** %7, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %183, i64 %185
  %187 = getelementptr inbounds %struct.stv090x_reg, %struct.stv090x_reg* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @stv090x_write_reg(%struct.stv090x_state* %176, i32 %182, i32 %188)
  %190 = icmp slt i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %175
  br label %293

192:                                              ; preds = %175
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %11, align 4
  br label %170

196:                                              ; preds = %170
  br label %229

197:                                              ; preds = %146
  %198 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %199 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %198, i32 0, i32 1
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, 32
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load i32, i32* @FE_ERROR, align 4
  %206 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %207 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %206, i32 0, i32 1
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %205, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %210)
  br label %293

212:                                              ; preds = %197
  %213 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %214 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %213, i32 0, i32 1
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 48
  br i1 %218, label %219, label %227

219:                                              ; preds = %212
  %220 = load i32, i32* @FE_ERROR, align 4
  %221 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %222 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %221, i32 0, i32 1
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %220, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %219, %212
  br label %228

228:                                              ; preds = %227
  br label %229

229:                                              ; preds = %228, %196
  %230 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %231 = load i32, i32* @STV090x_TSTTNR1, align 4
  %232 = call i8* @stv090x_read_reg(%struct.stv090x_state* %230, i32 %231)
  %233 = ptrtoint i8* %232 to i32
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* @ADC1_INMODE_FIELD, align 4
  %236 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %237 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @STV090x_ADC_1Vpp, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 0, i32 1
  %243 = call i32 @STV090x_SETFIELD(i32 %234, i32 %235, i32 %242)
  %244 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %245 = load i32, i32* @STV090x_TSTTNR1, align 4
  %246 = load i32, i32* %10, align 4
  %247 = call i64 @stv090x_write_reg(%struct.stv090x_state* %244, i32 %245, i32 %246)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %229
  br label %293

250:                                              ; preds = %229
  %251 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %252 = load i32, i32* @STV090x_TSTTNR3, align 4
  %253 = call i8* @stv090x_read_reg(%struct.stv090x_state* %251, i32 %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @ADC2_INMODE_FIELD, align 4
  %257 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %258 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @STV090x_ADC_1Vpp, align 8
  %261 = icmp eq i64 %259, %260
  %262 = zext i1 %261 to i64
  %263 = select i1 %261, i32 0, i32 1
  %264 = call i32 @STV090x_SETFIELD(i32 %255, i32 %256, i32 %263)
  %265 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %266 = load i32, i32* @STV090x_TSTTNR3, align 4
  %267 = load i32, i32* %10, align 4
  %268 = call i64 @stv090x_write_reg(%struct.stv090x_state* %265, i32 %266, i32 %267)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %250
  br label %293

271:                                              ; preds = %250
  %272 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %273 = load i32, i32* @STV090x_TSTRES0, align 4
  %274 = call i64 @stv090x_write_reg(%struct.stv090x_state* %272, i32 %273, i32 128)
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %293

277:                                              ; preds = %271
  %278 = load %struct.stv090x_state*, %struct.stv090x_state** %4, align 8
  %279 = load i32, i32* @STV090x_TSTRES0, align 4
  %280 = call i64 @stv090x_write_reg(%struct.stv090x_state* %278, i32 %279, i32 0)
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %293

283:                                              ; preds = %277
  %284 = load %struct.stv090x_config*, %struct.stv090x_config** %5, align 8
  %285 = getelementptr inbounds %struct.stv090x_config, %struct.stv090x_config* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %283
  %289 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %290 = load i32, i32* @SEC_MINI_A, align 4
  %291 = call i32 @stv090x_send_diseqc_burst(%struct.dvb_frontend* %289, i32 %290)
  br label %292

292:                                              ; preds = %288, %283
  store i32 0, i32* %2, align 4
  br label %296

293:                                              ; preds = %282, %276, %270, %249, %204, %191, %166, %141, %115, %105, %98, %92, %85, %72, %66, %59, %53
  %294 = load i32, i32* @FE_ERROR, align 4
  %295 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %294, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %296

296:                                              ; preds = %293, %292
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i64 @ARRAY_SIZE(%struct.stv090x_reg*) #1

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i8* @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD(i32, i32, i32) #1

declare dso_local i32 @stv090x_send_diseqc_burst(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
