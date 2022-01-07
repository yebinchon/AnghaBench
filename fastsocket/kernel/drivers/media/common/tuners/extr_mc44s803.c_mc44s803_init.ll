; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mc44s803.c_mc44s803_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mc44s803.c_mc44s803_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.mc44s803_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mc44s803_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MC44S803_REG_RESET = common dso_local global i32 0, align 4
@MC44S803_ADDR = common dso_local global i32 0, align 4
@MC44S803_RS = common dso_local global i32 0, align 4
@MC44S803_REG_REFOSC = common dso_local global i32 0, align 4
@MC44S803_REFOSC = common dso_local global i32 0, align 4
@MC44S803_OSCSEL = common dso_local global i32 0, align 4
@MC44S803_REG_POWER = common dso_local global i32 0, align 4
@MC44S803_POWER = common dso_local global i32 0, align 4
@MC44S803_REG_MIXER = common dso_local global i32 0, align 4
@MC44S803_TRI_STATE = common dso_local global i32 0, align 4
@MC44S803_MIXER_RES = common dso_local global i32 0, align 4
@MC44S803_REG_CIRCADJ = common dso_local global i32 0, align 4
@MC44S803_G1 = common dso_local global i32 0, align 4
@MC44S803_G3 = common dso_local global i32 0, align 4
@MC44S803_CIRCADJ_RES = common dso_local global i32 0, align 4
@MC44S803_G6 = common dso_local global i32 0, align 4
@MC44S803_S1 = common dso_local global i32 0, align 4
@MC44S803_LP = common dso_local global i32 0, align 4
@MC44S803_CLRF = common dso_local global i32 0, align 4
@MC44S803_CLIF = common dso_local global i32 0, align 4
@MC44S803_REG_DIGTUNE = common dso_local global i32 0, align 4
@MC44S803_XOD = common dso_local global i32 0, align 4
@MC44S803_REG_LNAAGC = common dso_local global i32 0, align 4
@MC44S803_AT1 = common dso_local global i32 0, align 4
@MC44S803_AT2 = common dso_local global i32 0, align 4
@MC44S803_AGC_AN_DIG = common dso_local global i32 0, align 4
@MC44S803_AGC_READ_EN = common dso_local global i32 0, align 4
@MC44S803_LNA0 = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"I/O Error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mc44s803_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc44s803_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mc44s803_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 1
  %9 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %8, align 8
  store %struct.mc44s803_priv* %9, %struct.mc44s803_priv** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %12, align 8
  %14 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %18, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = bitcast %struct.dvb_frontend* %20 to %struct.dvb_frontend.0*
  %22 = call i32 %19(%struct.dvb_frontend.0* %21, i32 1)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* @MC44S803_REG_RESET, align 4
  %25 = load i32, i32* @MC44S803_ADDR, align 4
  %26 = call i32 @MC44S803_REG_SM(i32 %24, i32 %25)
  %27 = load i32, i32* @MC44S803_RS, align 4
  %28 = call i32 @MC44S803_REG_SM(i32 1, i32 %27)
  %29 = or i32 %26, %28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %234

36:                                               ; preds = %23
  %37 = load i32, i32* @MC44S803_REG_RESET, align 4
  %38 = load i32, i32* @MC44S803_ADDR, align 4
  %39 = call i32 @MC44S803_REG_SM(i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %234

46:                                               ; preds = %36
  %47 = load i32, i32* @MC44S803_REG_REFOSC, align 4
  %48 = load i32, i32* @MC44S803_ADDR, align 4
  %49 = call i32 @MC44S803_REG_SM(i32 %47, i32 %48)
  %50 = load i32, i32* @MC44S803_REFOSC, align 4
  %51 = call i32 @MC44S803_REG_SM(i32 192, i32 %50)
  %52 = or i32 %49, %51
  %53 = load i32, i32* @MC44S803_OSCSEL, align 4
  %54 = call i32 @MC44S803_REG_SM(i32 1, i32 %53)
  %55 = or i32 %52, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %234

62:                                               ; preds = %46
  %63 = load i32, i32* @MC44S803_REG_POWER, align 4
  %64 = load i32, i32* @MC44S803_ADDR, align 4
  %65 = call i32 @MC44S803_REG_SM(i32 %63, i32 %64)
  %66 = load i32, i32* @MC44S803_POWER, align 4
  %67 = call i32 @MC44S803_REG_SM(i32 512, i32 %66)
  %68 = or i32 %65, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %234

75:                                               ; preds = %62
  %76 = call i32 @msleep(i32 10)
  %77 = load i32, i32* @MC44S803_REG_REFOSC, align 4
  %78 = load i32, i32* @MC44S803_ADDR, align 4
  %79 = call i32 @MC44S803_REG_SM(i32 %77, i32 %78)
  %80 = load i32, i32* @MC44S803_REFOSC, align 4
  %81 = call i32 @MC44S803_REG_SM(i32 64, i32 %80)
  %82 = or i32 %79, %81
  %83 = load i32, i32* @MC44S803_OSCSEL, align 4
  %84 = call i32 @MC44S803_REG_SM(i32 1, i32 %83)
  %85 = or i32 %82, %84
  store i32 %85, i32* %5, align 4
  %86 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  br label %234

92:                                               ; preds = %75
  %93 = call i32 @msleep(i32 20)
  %94 = load i32, i32* @MC44S803_REG_MIXER, align 4
  %95 = load i32, i32* @MC44S803_ADDR, align 4
  %96 = call i32 @MC44S803_REG_SM(i32 %94, i32 %95)
  %97 = load i32, i32* @MC44S803_TRI_STATE, align 4
  %98 = call i32 @MC44S803_REG_SM(i32 1, i32 %97)
  %99 = or i32 %96, %98
  %100 = load i32, i32* @MC44S803_MIXER_RES, align 4
  %101 = call i32 @MC44S803_REG_SM(i32 127, i32 %100)
  %102 = or i32 %99, %101
  store i32 %102, i32* %5, align 4
  %103 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %103, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %234

109:                                              ; preds = %92
  %110 = load i32, i32* @MC44S803_REG_CIRCADJ, align 4
  %111 = load i32, i32* @MC44S803_ADDR, align 4
  %112 = call i32 @MC44S803_REG_SM(i32 %110, i32 %111)
  %113 = load i32, i32* @MC44S803_G1, align 4
  %114 = call i32 @MC44S803_REG_SM(i32 1, i32 %113)
  %115 = or i32 %112, %114
  %116 = load i32, i32* @MC44S803_G3, align 4
  %117 = call i32 @MC44S803_REG_SM(i32 1, i32 %116)
  %118 = or i32 %115, %117
  %119 = load i32, i32* @MC44S803_CIRCADJ_RES, align 4
  %120 = call i32 @MC44S803_REG_SM(i32 3, i32 %119)
  %121 = or i32 %118, %120
  %122 = load i32, i32* @MC44S803_G6, align 4
  %123 = call i32 @MC44S803_REG_SM(i32 1, i32 %122)
  %124 = or i32 %121, %123
  %125 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %126 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MC44S803_S1, align 4
  %131 = call i32 @MC44S803_REG_SM(i32 %129, i32 %130)
  %132 = or i32 %124, %131
  %133 = load i32, i32* @MC44S803_LP, align 4
  %134 = call i32 @MC44S803_REG_SM(i32 3, i32 %133)
  %135 = or i32 %132, %134
  %136 = load i32, i32* @MC44S803_CLRF, align 4
  %137 = call i32 @MC44S803_REG_SM(i32 1, i32 %136)
  %138 = or i32 %135, %137
  %139 = load i32, i32* @MC44S803_CLIF, align 4
  %140 = call i32 @MC44S803_REG_SM(i32 1, i32 %139)
  %141 = or i32 %138, %140
  store i32 %141, i32* %5, align 4
  %142 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %109
  br label %234

148:                                              ; preds = %109
  %149 = load i32, i32* @MC44S803_REG_CIRCADJ, align 4
  %150 = load i32, i32* @MC44S803_ADDR, align 4
  %151 = call i32 @MC44S803_REG_SM(i32 %149, i32 %150)
  %152 = load i32, i32* @MC44S803_G1, align 4
  %153 = call i32 @MC44S803_REG_SM(i32 1, i32 %152)
  %154 = or i32 %151, %153
  %155 = load i32, i32* @MC44S803_G3, align 4
  %156 = call i32 @MC44S803_REG_SM(i32 1, i32 %155)
  %157 = or i32 %154, %156
  %158 = load i32, i32* @MC44S803_CIRCADJ_RES, align 4
  %159 = call i32 @MC44S803_REG_SM(i32 3, i32 %158)
  %160 = or i32 %157, %159
  %161 = load i32, i32* @MC44S803_G6, align 4
  %162 = call i32 @MC44S803_REG_SM(i32 1, i32 %161)
  %163 = or i32 %160, %162
  %164 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %165 = getelementptr inbounds %struct.mc44s803_priv, %struct.mc44s803_priv* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @MC44S803_S1, align 4
  %170 = call i32 @MC44S803_REG_SM(i32 %168, i32 %169)
  %171 = or i32 %163, %170
  %172 = load i32, i32* @MC44S803_LP, align 4
  %173 = call i32 @MC44S803_REG_SM(i32 3, i32 %172)
  %174 = or i32 %171, %173
  store i32 %174, i32* %5, align 4
  %175 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %175, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %148
  br label %234

181:                                              ; preds = %148
  %182 = load i32, i32* @MC44S803_REG_DIGTUNE, align 4
  %183 = load i32, i32* @MC44S803_ADDR, align 4
  %184 = call i32 @MC44S803_REG_SM(i32 %182, i32 %183)
  %185 = load i32, i32* @MC44S803_XOD, align 4
  %186 = call i32 @MC44S803_REG_SM(i32 3, i32 %185)
  %187 = or i32 %184, %186
  store i32 %187, i32* %5, align 4
  %188 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %188, i32 %189)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  br label %234

194:                                              ; preds = %181
  %195 = load i32, i32* @MC44S803_REG_LNAAGC, align 4
  %196 = load i32, i32* @MC44S803_ADDR, align 4
  %197 = call i32 @MC44S803_REG_SM(i32 %195, i32 %196)
  %198 = load i32, i32* @MC44S803_AT1, align 4
  %199 = call i32 @MC44S803_REG_SM(i32 1, i32 %198)
  %200 = or i32 %197, %199
  %201 = load i32, i32* @MC44S803_AT2, align 4
  %202 = call i32 @MC44S803_REG_SM(i32 1, i32 %201)
  %203 = or i32 %200, %202
  %204 = load i32, i32* @MC44S803_AGC_AN_DIG, align 4
  %205 = call i32 @MC44S803_REG_SM(i32 1, i32 %204)
  %206 = or i32 %203, %205
  %207 = load i32, i32* @MC44S803_AGC_READ_EN, align 4
  %208 = call i32 @MC44S803_REG_SM(i32 1, i32 %207)
  %209 = or i32 %206, %208
  %210 = load i32, i32* @MC44S803_LNA0, align 4
  %211 = call i32 @MC44S803_REG_SM(i32 1, i32 %210)
  %212 = or i32 %209, %211
  store i32 %212, i32* %5, align 4
  %213 = load %struct.mc44s803_priv*, %struct.mc44s803_priv** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @mc44s803_writereg(%struct.mc44s803_priv* %213, i32 %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %194
  br label %234

219:                                              ; preds = %194
  %220 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %221 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %222, align 8
  %224 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %223, null
  br i1 %224, label %225, label %233

225:                                              ; preds = %219
  %226 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %227 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %228, align 8
  %230 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %231 = bitcast %struct.dvb_frontend* %230 to %struct.dvb_frontend.0*
  %232 = call i32 %229(%struct.dvb_frontend.0* %231, i32 0)
  br label %233

233:                                              ; preds = %225, %219
  store i32 0, i32* %2, align 4
  br label %252

234:                                              ; preds = %218, %193, %180, %147, %108, %91, %74, %61, %45, %35
  %235 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %236 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %237, align 8
  %239 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %234
  %241 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %242 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %243, align 8
  %245 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %246 = bitcast %struct.dvb_frontend* %245 to %struct.dvb_frontend.0*
  %247 = call i32 %244(%struct.dvb_frontend.0* %246, i32 0)
  br label %248

248:                                              ; preds = %240, %234
  %249 = load i32, i32* @KERN_WARNING, align 4
  %250 = call i32 @mc_printk(i32 %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %251 = load i32, i32* %6, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %248, %233
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @MC44S803_REG_SM(i32, i32) #1

declare dso_local i32 @mc44s803_writereg(%struct.mc44s803_priv*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mc_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
