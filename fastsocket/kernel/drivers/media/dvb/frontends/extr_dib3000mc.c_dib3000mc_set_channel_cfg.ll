; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_channel_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_channel_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib3000mc_state*, %struct.dvb_frontend_parameters*, i32)* @dib3000mc_set_channel_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib3000mc_set_channel_cfg(%struct.dib3000mc_state* %0, %struct.dvb_frontend_parameters* %1, i32 %2) #0 {
  %4 = alloca %struct.dib3000mc_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %9 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BANDWIDTH_TO_KHZ(i32 %13)
  %15 = call i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state* %8, i32 %14)
  %16 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BANDWIDTH_TO_KHZ(i32 %26)
  %28 = call i32 @dib3000mc_set_timing(%struct.dib3000mc_state* %16, i32 %21, i32 %27, i32 0)
  %29 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %30 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %29, i32 100, i32 1033)
  %31 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %32 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %31, i32 1027, i32 2048)
  %33 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %34 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %33, i32 1027, i32 0)
  %35 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %36 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %35, i32 26, i32 26240)
  %37 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %38 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %37, i32 29, i32 4723)
  %39 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %40 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %39, i32 33, i32 5)
  %41 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %42 = call i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state* %41, i32 132)
  %43 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %44 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %43, i32 133, i32 15564)
  %45 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %46 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %45, i32 12, i32 0)
  %47 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %48 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %47, i32 13, i32 1000)
  %49 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %50 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %49, i32 14, i32 0)
  %51 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %52 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %51, i32 15, i32 1010)
  %53 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %54 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %53, i32 93, i32 0)
  %55 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %56 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %55, i32 94, i32 0)
  %57 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %58 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %57, i32 95, i32 0)
  %59 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %60 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %59, i32 96, i32 0)
  %61 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %62 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %61, i32 97, i32 0)
  %63 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %64 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %63, i32 98, i32 0)
  %65 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %66 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state* %65, i32 0, i32 %70)
  store i32 0, i32* %7, align 4
  %72 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %79 [
    i32 129, label %77
    i32 128, label %80
  ]

77:                                               ; preds = %3
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %7, align 4
  br label %83

79:                                               ; preds = %3
  br label %80

80:                                               ; preds = %3, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, 128
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %97 [
    i32 138, label %89
    i32 139, label %91
    i32 137, label %94
    i32 136, label %98
  ]

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %7, align 4
  br label %101

91:                                               ; preds = %83
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, 32
  store i32 %93, i32* %7, align 4
  br label %101

94:                                               ; preds = %83
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, 96
  store i32 %96, i32* %7, align 4
  br label %101

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %83, %97
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, 64
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %94, %91, %89
  %102 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %112 [
    i32 130, label %107
    i32 132, label %109
    i32 131, label %113
  ]

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %7, align 4
  br label %116

109:                                              ; preds = %101
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, 8
  store i32 %111, i32* %7, align 4
  br label %116

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %101, %112
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, 16
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %109, %107
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %119, i32 0, i32 %120)
  %122 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, 15
  %125 = shl i32 %124, 4
  %126 = or i32 256, %125
  %127 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %122, i32 5, i32 %126)
  store i32 0, i32* %7, align 4
  %128 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %129 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %116
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, 16
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %134, %116
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, 1
  store i32 %139, i32* %7, align 4
  %140 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %141 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %137
  br i1 true, label %147, label %153

147:                                              ; preds = %146, %137
  %148 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %149 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  br label %159

153:                                              ; preds = %146
  %154 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %155 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  br label %159

159:                                              ; preds = %153, %147
  %160 = phi i32 [ %152, %147 ], [ %158, %153 ]
  switch i32 %160, label %173 [
    i32 143, label %161
    i32 142, label %164
    i32 141, label %167
    i32 140, label %170
    i32 144, label %174
  ]

161:                                              ; preds = %159
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, 4
  store i32 %163, i32* %7, align 4
  br label %177

164:                                              ; preds = %159
  %165 = load i32, i32* %7, align 4
  %166 = or i32 %165, 6
  store i32 %166, i32* %7, align 4
  br label %177

167:                                              ; preds = %159
  %168 = load i32, i32* %7, align 4
  %169 = or i32 %168, 10
  store i32 %169, i32* %7, align 4
  br label %177

170:                                              ; preds = %159
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, 14
  store i32 %172, i32* %7, align 4
  br label %177

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %159, %173
  %175 = load i32, i32* %7, align 4
  %176 = or i32 %175, 2
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %174, %170, %167, %164, %161
  %178 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %178, i32 181, i32 %179)
  %181 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %182 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  switch i32 %185, label %188 [
    i32 128, label %186
    i32 129, label %187
  ]

186:                                              ; preds = %177
  store i32 256, i32* %7, align 4
  br label %189

187:                                              ; preds = %177
  br label %188

188:                                              ; preds = %177, %187
  store i32 64, i32* %7, align 4
  br label %189

189:                                              ; preds = %188, %186
  %190 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %191 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  switch i32 %194, label %204 [
    i32 139, label %195
    i32 136, label %198
    i32 137, label %201
    i32 138, label %205
  ]

195:                                              ; preds = %189
  %196 = load i32, i32* %7, align 4
  %197 = mul nsw i32 %196, 2
  store i32 %197, i32* %7, align 4
  br label %208

198:                                              ; preds = %189
  %199 = load i32, i32* %7, align 4
  %200 = mul nsw i32 %199, 4
  store i32 %200, i32* %7, align 4
  br label %208

201:                                              ; preds = %189
  %202 = load i32, i32* %7, align 4
  %203 = mul nsw i32 %202, 8
  store i32 %203, i32* %7, align 4
  br label %208

204:                                              ; preds = %189
  br label %205

205:                                              ; preds = %189, %204
  %206 = load i32, i32* %7, align 4
  %207 = mul nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %205, %201, %198, %195
  %209 = load i32, i32* %7, align 4
  %210 = shl i32 %209, 4
  store i32 %210, i32* %7, align 4
  %211 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %212 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %211, i32 180)
  %213 = and i32 %212, 15
  %214 = load i32, i32* %7, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %7, align 4
  %216 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %216, i32 180, i32 %217)
  %219 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %220 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %219, i32 0)
  store i32 %220, i32* %7, align 4
  %221 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %222 = load i32, i32* %7, align 4
  %223 = or i32 %222, 512
  %224 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %221, i32 0, i32 %223)
  %225 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %225, i32 0, i32 %226)
  %228 = call i32 @msleep(i32 30)
  %229 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %230 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %231 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %230, i32 0, i32 0
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %236 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state* %229, i32 %234, i32 %239)
  ret void
}

declare dso_local i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib3000mc_set_timing(%struct.dib3000mc_state*, i32, i32, i32) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
