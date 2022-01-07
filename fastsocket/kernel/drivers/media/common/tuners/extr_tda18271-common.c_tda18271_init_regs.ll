; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_init_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"initializing registers for device @ %d-%04x\0A\00", align 1
@R_ID = common dso_local global i64 0, align 8
@R_TM = common dso_local global i64 0, align 8
@R_PL = common dso_local global i64 0, align 8
@R_EP1 = common dso_local global i64 0, align 8
@R_EP2 = common dso_local global i64 0, align 8
@R_EP3 = common dso_local global i64 0, align 8
@R_EP4 = common dso_local global i64 0, align 8
@R_EP5 = common dso_local global i64 0, align 8
@R_CPD = common dso_local global i64 0, align 8
@R_CD1 = common dso_local global i64 0, align 8
@R_CD2 = common dso_local global i64 0, align 8
@R_CD3 = common dso_local global i64 0, align 8
@R_MPD = common dso_local global i64 0, align 8
@R_MD1 = common dso_local global i64 0, align 8
@R_MD2 = common dso_local global i64 0, align 8
@R_MD3 = common dso_local global i64 0, align 8
@R_EB1 = common dso_local global i64 0, align 8
@R_EB2 = common dso_local global i64 0, align 8
@R_EB3 = common dso_local global i64 0, align 8
@R_EB4 = common dso_local global i64 0, align 8
@R_EB5 = common dso_local global i64 0, align 8
@R_EB6 = common dso_local global i64 0, align 8
@R_EB7 = common dso_local global i64 0, align 8
@R_EB8 = common dso_local global i64 0, align 8
@R_EB9 = common dso_local global i64 0, align 8
@R_EB10 = common dso_local global i64 0, align 8
@R_EB11 = common dso_local global i64 0, align 8
@R_EB12 = common dso_local global i64 0, align 8
@R_EB13 = common dso_local global i64 0, align 8
@R_EB14 = common dso_local global i64 0, align 8
@R_EB15 = common dso_local global i64 0, align 8
@R_EB16 = common dso_local global i64 0, align 8
@R_EB17 = common dso_local global i64 0, align 8
@R_EB18 = common dso_local global i64 0, align 8
@R_EB19 = common dso_local global i64 0, align 8
@R_EB20 = common dso_local global i64 0, align 8
@R_EB21 = common dso_local global i64 0, align 8
@R_EB22 = common dso_local global i64 0, align 8
@R_EB23 = common dso_local global i64 0, align 8
@TDA18271_NUM_REGS = common dso_local global i32 0, align 4
@TDA18271_MAIN_PLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_init_regs(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  store %struct.tda18271_priv* %7, %struct.tda18271_priv** %3, align 8
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i2c_adapter_id(i32 %14)
  %16 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %17 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tda_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = load i64, i64* @R_ID, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 -125, i8* %27, align 1
  br label %32

28:                                               ; preds = %1
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* @R_ID, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 -124, i8* %31, align 1
  br label %32

32:                                               ; preds = %1, %28, %24
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* @R_TM, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8 8, i8* %35, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* @R_PL, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 -128, i8* %38, align 1
  %39 = load i8*, i8** %4, align 8
  %40 = load i64, i64* @R_EP1, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 -58, i8* %41, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* @R_EP2, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 -33, i8* %44, align 1
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* @R_EP3, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 22, i8* %47, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* @R_EP4, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 96, i8* %50, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* @R_EP5, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 -128, i8* %53, align 1
  %54 = load i8*, i8** %4, align 8
  %55 = load i64, i64* @R_CPD, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 -128, i8* %56, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* @R_CD1, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %4, align 8
  %61 = load i64, i64* @R_CD2, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = load i64, i64* @R_CD3, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %4, align 8
  %67 = load i64, i64* @R_MPD, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %4, align 8
  %70 = load i64, i64* @R_MD1, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %4, align 8
  %73 = load i64, i64* @R_MD2, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %4, align 8
  %76 = load i64, i64* @R_MD3, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %79 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %89 [
    i32 129, label %81
    i32 128, label %85
  ]

81:                                               ; preds = %32
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* @R_EB1, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 -1, i8* %84, align 1
  br label %89

85:                                               ; preds = %32
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* @R_EB1, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 -4, i8* %88, align 1
  br label %89

89:                                               ; preds = %32, %85, %81
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* @R_EB2, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 1, i8* %92, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = load i64, i64* @R_EB3, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8 -124, i8* %95, align 1
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* @R_EB4, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 65, i8* %98, align 1
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* @R_EB5, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 1, i8* %101, align 1
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* @R_EB6, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 -124, i8* %104, align 1
  %105 = load i8*, i8** %4, align 8
  %106 = load i64, i64* @R_EB7, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 64, i8* %107, align 1
  %108 = load i8*, i8** %4, align 8
  %109 = load i64, i64* @R_EB8, align 8
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8 7, i8* %110, align 1
  %111 = load i8*, i8** %4, align 8
  %112 = load i64, i64* @R_EB9, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8 0, i8* %113, align 1
  %114 = load i8*, i8** %4, align 8
  %115 = load i64, i64* @R_EB10, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 0, i8* %116, align 1
  %117 = load i8*, i8** %4, align 8
  %118 = load i64, i64* @R_EB11, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 -106, i8* %119, align 1
  %120 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %121 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %131 [
    i32 129, label %123
    i32 128, label %127
  ]

123:                                              ; preds = %89
  %124 = load i8*, i8** %4, align 8
  %125 = load i64, i64* @R_EB12, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 15, i8* %126, align 1
  br label %131

127:                                              ; preds = %89
  %128 = load i8*, i8** %4, align 8
  %129 = load i64, i64* @R_EB12, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8 51, i8* %130, align 1
  br label %131

131:                                              ; preds = %89, %127, %123
  %132 = load i8*, i8** %4, align 8
  %133 = load i64, i64* @R_EB13, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 -63, i8* %134, align 1
  %135 = load i8*, i8** %4, align 8
  %136 = load i64, i64* @R_EB14, align 8
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** %4, align 8
  %139 = load i64, i64* @R_EB15, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8 -113, i8* %140, align 1
  %141 = load i8*, i8** %4, align 8
  %142 = load i64, i64* @R_EB16, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8 0, i8* %143, align 1
  %144 = load i8*, i8** %4, align 8
  %145 = load i64, i64* @R_EB17, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8 0, i8* %146, align 1
  %147 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %148 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %158 [
    i32 129, label %150
    i32 128, label %154
  ]

150:                                              ; preds = %131
  %151 = load i8*, i8** %4, align 8
  %152 = load i64, i64* @R_EB18, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8 0, i8* %153, align 1
  br label %158

154:                                              ; preds = %131
  %155 = load i8*, i8** %4, align 8
  %156 = load i64, i64* @R_EB18, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8 -116, i8* %157, align 1
  br label %158

158:                                              ; preds = %131, %154, %150
  %159 = load i8*, i8** %4, align 8
  %160 = load i64, i64* @R_EB19, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %4, align 8
  %163 = load i64, i64* @R_EB20, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8 32, i8* %164, align 1
  %165 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %166 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %176 [
    i32 129, label %168
    i32 128, label %172
  ]

168:                                              ; preds = %158
  %169 = load i8*, i8** %4, align 8
  %170 = load i64, i64* @R_EB21, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8 51, i8* %171, align 1
  br label %176

172:                                              ; preds = %158
  %173 = load i8*, i8** %4, align 8
  %174 = load i64, i64* @R_EB21, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8 -77, i8* %175, align 1
  br label %176

176:                                              ; preds = %158, %172, %168
  %177 = load i8*, i8** %4, align 8
  %178 = load i64, i64* @R_EB22, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 72, i8* %179, align 1
  %180 = load i8*, i8** %4, align 8
  %181 = load i64, i64* @R_EB23, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8 -80, i8* %182, align 1
  %183 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %184 = load i32, i32* @TDA18271_NUM_REGS, align 4
  %185 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %183, i64 0, i32 %184)
  %186 = load i8*, i8** %4, align 8
  %187 = load i64, i64* @R_EB17, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8 0, i8* %188, align 1
  %189 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %190 = load i64, i64* @R_EB17, align 8
  %191 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %189, i64 %190, i32 1)
  %192 = load i8*, i8** %4, align 8
  %193 = load i64, i64* @R_EB17, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8 3, i8* %194, align 1
  %195 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %196 = load i64, i64* @R_EB17, align 8
  %197 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %195, i64 %196, i32 1)
  %198 = load i8*, i8** %4, align 8
  %199 = load i64, i64* @R_EB17, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8 67, i8* %200, align 1
  %201 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %202 = load i64, i64* @R_EB17, align 8
  %203 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %201, i64 %202, i32 1)
  %204 = load i8*, i8** %4, align 8
  %205 = load i64, i64* @R_EB17, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 76, i8* %206, align 1
  %207 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %208 = load i64, i64* @R_EB17, align 8
  %209 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %207, i64 %208, i32 1)
  %210 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %211 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = icmp eq i32 %212, 129
  br i1 %213, label %214, label %239

214:                                              ; preds = %176
  %215 = load i8*, i8** %4, align 8
  %216 = load i64, i64* @R_EB20, align 8
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8 -96, i8* %217, align 1
  %218 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %219 = load i64, i64* @R_EB20, align 8
  %220 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %218, i64 %219, i32 1)
  %221 = load i8*, i8** %4, align 8
  %222 = load i64, i64* @R_EB20, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8 -89, i8* %223, align 1
  %224 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %225 = load i64, i64* @R_EB20, align 8
  %226 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %224, i64 %225, i32 1)
  %227 = load i8*, i8** %4, align 8
  %228 = load i64, i64* @R_EB20, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8 -25, i8* %229, align 1
  %230 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %231 = load i64, i64* @R_EB20, align 8
  %232 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %230, i64 %231, i32 1)
  %233 = load i8*, i8** %4, align 8
  %234 = load i64, i64* @R_EB20, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8 -20, i8* %235, align 1
  %236 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %237 = load i64, i64* @R_EB20, align 8
  %238 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %236, i64 %237, i32 1)
  br label %239

239:                                              ; preds = %214, %176
  %240 = load i8*, i8** %4, align 8
  %241 = load i64, i64* @R_EP3, align 8
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  store i8 31, i8* %242, align 1
  %243 = load i8*, i8** %4, align 8
  %244 = load i64, i64* @R_EP4, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  store i8 102, i8* %245, align 1
  %246 = load i8*, i8** %4, align 8
  %247 = load i64, i64* @R_EP5, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8 -127, i8* %248, align 1
  %249 = load i8*, i8** %4, align 8
  %250 = load i64, i64* @R_CPD, align 8
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 -52, i8* %251, align 1
  %252 = load i8*, i8** %4, align 8
  %253 = load i64, i64* @R_CD1, align 8
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8 108, i8* %254, align 1
  %255 = load i8*, i8** %4, align 8
  %256 = load i64, i64* @R_CD2, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8 0, i8* %257, align 1
  %258 = load i8*, i8** %4, align 8
  %259 = load i64, i64* @R_CD3, align 8
  %260 = getelementptr inbounds i8, i8* %258, i64 %259
  store i8 0, i8* %260, align 1
  %261 = load i8*, i8** %4, align 8
  %262 = load i64, i64* @R_MPD, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  store i8 -51, i8* %263, align 1
  %264 = load i8*, i8** %4, align 8
  %265 = load i64, i64* @R_MD1, align 8
  %266 = getelementptr inbounds i8, i8* %264, i64 %265
  store i8 119, i8* %266, align 1
  %267 = load i8*, i8** %4, align 8
  %268 = load i64, i64* @R_MD2, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8 8, i8* %269, align 1
  %270 = load i8*, i8** %4, align 8
  %271 = load i64, i64* @R_MD3, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8 0, i8* %272, align 1
  %273 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %274 = load i64, i64* @R_EP3, align 8
  %275 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %273, i64 %274, i32 11)
  %276 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %277 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = icmp eq i32 %278, 128
  br i1 %279, label %280, label %288

280:                                              ; preds = %239
  %281 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %282 = load i32, i32* @TDA18271_MAIN_PLL, align 4
  %283 = call i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %281, i32 %282, i32 1)
  %284 = call i32 @msleep(i32 1)
  %285 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %286 = load i32, i32* @TDA18271_MAIN_PLL, align 4
  %287 = call i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %285, i32 %286, i32 0)
  br label %288

288:                                              ; preds = %280, %239
  %289 = call i32 @msleep(i32 5)
  %290 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %291 = load i64, i64* @R_EP1, align 8
  %292 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %290, i64 %291, i32 1)
  %293 = call i32 @msleep(i32 5)
  %294 = load i8*, i8** %4, align 8
  %295 = load i64, i64* @R_EP5, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  store i8 -123, i8* %296, align 1
  %297 = load i8*, i8** %4, align 8
  %298 = load i64, i64* @R_CPD, align 8
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8 -53, i8* %299, align 1
  %300 = load i8*, i8** %4, align 8
  %301 = load i64, i64* @R_CD1, align 8
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8 102, i8* %302, align 1
  %303 = load i8*, i8** %4, align 8
  %304 = load i64, i64* @R_CD2, align 8
  %305 = getelementptr inbounds i8, i8* %303, i64 %304
  store i8 112, i8* %305, align 1
  %306 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %307 = load i64, i64* @R_EP3, align 8
  %308 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %306, i64 %307, i32 7)
  %309 = call i32 @msleep(i32 5)
  %310 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %311 = load i64, i64* @R_EP2, align 8
  %312 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %310, i64 %311, i32 1)
  %313 = call i32 @msleep(i32 30)
  %314 = load i8*, i8** %4, align 8
  %315 = load i64, i64* @R_EP5, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  store i8 -126, i8* %316, align 1
  %317 = load i8*, i8** %4, align 8
  %318 = load i64, i64* @R_CPD, align 8
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  store i8 -88, i8* %319, align 1
  %320 = load i8*, i8** %4, align 8
  %321 = load i64, i64* @R_CD2, align 8
  %322 = getelementptr inbounds i8, i8* %320, i64 %321
  store i8 0, i8* %322, align 1
  %323 = load i8*, i8** %4, align 8
  %324 = load i64, i64* @R_MPD, align 8
  %325 = getelementptr inbounds i8, i8* %323, i64 %324
  store i8 -87, i8* %325, align 1
  %326 = load i8*, i8** %4, align 8
  %327 = load i64, i64* @R_MD1, align 8
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  store i8 115, i8* %328, align 1
  %329 = load i8*, i8** %4, align 8
  %330 = load i64, i64* @R_MD2, align 8
  %331 = getelementptr inbounds i8, i8* %329, i64 %330
  store i8 26, i8* %331, align 1
  %332 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %333 = load i64, i64* @R_EP3, align 8
  %334 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %332, i64 %333, i32 11)
  %335 = call i32 @msleep(i32 5)
  %336 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %337 = load i64, i64* @R_EP1, align 8
  %338 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %336, i64 %337, i32 1)
  %339 = call i32 @msleep(i32 5)
  %340 = load i8*, i8** %4, align 8
  %341 = load i64, i64* @R_EP5, align 8
  %342 = getelementptr inbounds i8, i8* %340, i64 %341
  store i8 -122, i8* %342, align 1
  %343 = load i8*, i8** %4, align 8
  %344 = load i64, i64* @R_CPD, align 8
  %345 = getelementptr inbounds i8, i8* %343, i64 %344
  store i8 -88, i8* %345, align 1
  %346 = load i8*, i8** %4, align 8
  %347 = load i64, i64* @R_CD1, align 8
  %348 = getelementptr inbounds i8, i8* %346, i64 %347
  store i8 102, i8* %348, align 1
  %349 = load i8*, i8** %4, align 8
  %350 = load i64, i64* @R_CD2, align 8
  %351 = getelementptr inbounds i8, i8* %349, i64 %350
  store i8 -96, i8* %351, align 1
  %352 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %353 = load i64, i64* @R_EP3, align 8
  %354 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %352, i64 %353, i32 7)
  %355 = call i32 @msleep(i32 5)
  %356 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %357 = load i64, i64* @R_EP2, align 8
  %358 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %356, i64 %357, i32 1)
  %359 = call i32 @msleep(i32 30)
  %360 = load i8*, i8** %4, align 8
  %361 = load i64, i64* @R_EP5, align 8
  %362 = getelementptr inbounds i8, i8* %360, i64 %361
  store i8 -125, i8* %362, align 1
  %363 = load i8*, i8** %4, align 8
  %364 = load i64, i64* @R_CPD, align 8
  %365 = getelementptr inbounds i8, i8* %363, i64 %364
  store i8 -104, i8* %365, align 1
  %366 = load i8*, i8** %4, align 8
  %367 = load i64, i64* @R_CD1, align 8
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8 101, i8* %368, align 1
  %369 = load i8*, i8** %4, align 8
  %370 = load i64, i64* @R_CD2, align 8
  %371 = getelementptr inbounds i8, i8* %369, i64 %370
  store i8 0, i8* %371, align 1
  %372 = load i8*, i8** %4, align 8
  %373 = load i64, i64* @R_MPD, align 8
  %374 = getelementptr inbounds i8, i8* %372, i64 %373
  store i8 -103, i8* %374, align 1
  %375 = load i8*, i8** %4, align 8
  %376 = load i64, i64* @R_MD1, align 8
  %377 = getelementptr inbounds i8, i8* %375, i64 %376
  store i8 113, i8* %377, align 1
  %378 = load i8*, i8** %4, align 8
  %379 = load i64, i64* @R_MD2, align 8
  %380 = getelementptr inbounds i8, i8* %378, i64 %379
  store i8 -51, i8* %380, align 1
  %381 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %382 = load i64, i64* @R_EP3, align 8
  %383 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %381, i64 %382, i32 11)
  %384 = call i32 @msleep(i32 5)
  %385 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %386 = load i64, i64* @R_EP1, align 8
  %387 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %385, i64 %386, i32 1)
  %388 = call i32 @msleep(i32 5)
  %389 = load i8*, i8** %4, align 8
  %390 = load i64, i64* @R_EP5, align 8
  %391 = getelementptr inbounds i8, i8* %389, i64 %390
  store i8 -121, i8* %391, align 1
  %392 = load i8*, i8** %4, align 8
  %393 = load i64, i64* @R_CD1, align 8
  %394 = getelementptr inbounds i8, i8* %392, i64 %393
  store i8 101, i8* %394, align 1
  %395 = load i8*, i8** %4, align 8
  %396 = load i64, i64* @R_CD2, align 8
  %397 = getelementptr inbounds i8, i8* %395, i64 %396
  store i8 80, i8* %397, align 1
  %398 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %399 = load i64, i64* @R_EP3, align 8
  %400 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %398, i64 %399, i32 7)
  %401 = call i32 @msleep(i32 5)
  %402 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %403 = load i64, i64* @R_EP2, align 8
  %404 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %402, i64 %403, i32 1)
  %405 = call i32 @msleep(i32 30)
  %406 = load i8*, i8** %4, align 8
  %407 = load i64, i64* @R_EP4, align 8
  %408 = getelementptr inbounds i8, i8* %406, i64 %407
  store i8 100, i8* %408, align 1
  %409 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %410 = load i64, i64* @R_EP4, align 8
  %411 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %409, i64 %410, i32 1)
  %412 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %413 = load i64, i64* @R_EP1, align 8
  %414 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %412, i64 %413, i32 1)
  ret i32 0
}

declare dso_local i32 @tda_dbg(i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(i32) #1

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i64, i32) #1

declare dso_local i32 @tda18271_charge_pump_source(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
