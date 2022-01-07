; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_delivery_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_delivery_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMDCFGMD = common dso_local global i32 0, align 4
@DVBS1_ENABLE_FIELD = common dso_local global i32 0, align 4
@DVBS2_ENABLE_FIELD = common dso_local global i32 0, align 4
@CAR2CFG = common dso_local global i32 0, align 4
@ACLC = common dso_local global i32 0, align 4
@BCLC = common dso_local global i32 0, align 4
@STV090x_SINGLE = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_delivery_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_delivery_search(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %5 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %6 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %143 [
    i32 129, label %8
    i32 130, label %8
    i32 128, label %51
    i32 131, label %142
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %10 = load i32, i32* @DMDCFGMD, align 4
  %11 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %14 = call i32 @STV090x_SETFIELD_Px(i32 %12, i32 %13, i32 1)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %17 = call i32 @STV090x_SETFIELD_Px(i32 %15, i32 %16, i32 0)
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %19 = load i32, i32* @DMDCFGMD, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %18, i32 %19, i32 %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  br label %233

24:                                               ; preds = %8
  %25 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %26 = call i32 @stv090x_vitclk_ctl(%struct.stv090x_state* %25, i32 0)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %233

29:                                               ; preds = %24
  %30 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %31 = call i32 @stv090x_dvbs_track_crl(%struct.stv090x_state* %30)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %233

34:                                               ; preds = %29
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %36 = load i32, i32* @CAR2CFG, align 4
  %37 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %35, i32 %36, i32 34)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %233

40:                                               ; preds = %34
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %42 = call i32 @stv090x_set_vit_thacq(%struct.stv090x_state* %41)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %233

45:                                               ; preds = %40
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %47 = call i32 @stv090x_set_viterbi(%struct.stv090x_state* %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %233

50:                                               ; preds = %45
  br label %232

51:                                               ; preds = %1
  %52 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %53 = load i32, i32* @DMDCFGMD, align 4
  %54 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %57 = call i32 @STV090x_SETFIELD_Px(i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %60 = call i32 @STV090x_SETFIELD_Px(i32 %58, i32 %59, i32 0)
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %62 = load i32, i32* @DMDCFGMD, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %61, i32 %62, i32 %63)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %233

67:                                               ; preds = %51
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %70 = call i32 @STV090x_SETFIELD_Px(i32 %68, i32 %69, i32 1)
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %73 = call i32 @STV090x_SETFIELD_Px(i32 %71, i32 %72, i32 1)
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %75 = load i32, i32* @DMDCFGMD, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %74, i32 %75, i32 %76)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %233

80:                                               ; preds = %67
  %81 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %82 = call i32 @stv090x_vitclk_ctl(%struct.stv090x_state* %81, i32 1)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %233

85:                                               ; preds = %80
  %86 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %87 = load i32, i32* @ACLC, align 4
  %88 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %86, i32 %87, i32 26)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %233

91:                                               ; preds = %85
  %92 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %93 = load i32, i32* @BCLC, align 4
  %94 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %92, i32 %93, i32 9)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %233

97:                                               ; preds = %91
  %98 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %99 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sle i32 %102, 32
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %106 = load i32, i32* @CAR2CFG, align 4
  %107 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %105, i32 %106, i32 38)
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %233

110:                                              ; preds = %104
  br label %118

111:                                              ; preds = %97
  %112 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %113 = load i32, i32* @CAR2CFG, align 4
  %114 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %112, i32 %113, i32 102)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %233

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %110
  %119 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %120 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @STV090x_SINGLE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %126 = call i32 @stv090x_activate_modcod(%struct.stv090x_state* %125)
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %233

129:                                              ; preds = %124
  br label %136

130:                                              ; preds = %118
  %131 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %132 = call i32 @stv090x_activate_modcod_single(%struct.stv090x_state* %131)
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %233

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %129
  %137 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %138 = call i32 @stv090x_set_vit_thtracq(%struct.stv090x_state* %137)
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %233

141:                                              ; preds = %136
  br label %232

142:                                              ; preds = %1
  br label %143

143:                                              ; preds = %1, %142
  %144 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %145 = load i32, i32* @DMDCFGMD, align 4
  %146 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %144, i32 %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %149 = call i32 @STV090x_SETFIELD_Px(i32 %147, i32 %148, i32 0)
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %152 = call i32 @STV090x_SETFIELD_Px(i32 %150, i32 %151, i32 0)
  %153 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %154 = load i32, i32* @DMDCFGMD, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %153, i32 %154, i32 %155)
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %143
  br label %233

159:                                              ; preds = %143
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @DVBS1_ENABLE_FIELD, align 4
  %162 = call i32 @STV090x_SETFIELD_Px(i32 %160, i32 %161, i32 1)
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @DVBS2_ENABLE_FIELD, align 4
  %165 = call i32 @STV090x_SETFIELD_Px(i32 %163, i32 %164, i32 1)
  %166 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %167 = load i32, i32* @DMDCFGMD, align 4
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %166, i32 %167, i32 %168)
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  br label %233

172:                                              ; preds = %159
  %173 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %174 = call i32 @stv090x_vitclk_ctl(%struct.stv090x_state* %173, i32 0)
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %233

177:                                              ; preds = %172
  %178 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %179 = call i32 @stv090x_dvbs_track_crl(%struct.stv090x_state* %178)
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %233

182:                                              ; preds = %177
  %183 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %184 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %183, i32 0, i32 2
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp sle i32 %187, 32
  br i1 %188, label %189, label %196

189:                                              ; preds = %182
  %190 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %191 = load i32, i32* @CAR2CFG, align 4
  %192 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %190, i32 %191, i32 38)
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %233

195:                                              ; preds = %189
  br label %203

196:                                              ; preds = %182
  %197 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %198 = load i32, i32* @CAR2CFG, align 4
  %199 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %197, i32 %198, i32 102)
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %233

202:                                              ; preds = %196
  br label %203

203:                                              ; preds = %202, %195
  %204 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %205 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @STV090x_SINGLE, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %211 = call i32 @stv090x_activate_modcod(%struct.stv090x_state* %210)
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %233

214:                                              ; preds = %209
  br label %221

215:                                              ; preds = %203
  %216 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %217 = call i32 @stv090x_activate_modcod_single(%struct.stv090x_state* %216)
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %233

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220, %214
  %222 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %223 = call i32 @stv090x_set_vit_thacq(%struct.stv090x_state* %222)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  br label %233

226:                                              ; preds = %221
  %227 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %228 = call i32 @stv090x_set_viterbi(%struct.stv090x_state* %227)
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  br label %233

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231, %141, %50
  store i32 0, i32* %2, align 4
  br label %236

233:                                              ; preds = %230, %225, %219, %213, %201, %194, %181, %176, %171, %158, %140, %134, %128, %116, %109, %96, %90, %84, %79, %66, %49, %44, %39, %33, %28, %23
  %234 = load i32, i32* @FE_ERROR, align 4
  %235 = call i32 @dprintk(i32 %234, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %236

236:                                              ; preds = %233, %232
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_vitclk_ctl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_dvbs_track_crl(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_set_vit_thacq(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_set_viterbi(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_activate_modcod(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_activate_modcod_single(%struct.stv090x_state*) #1

declare dso_local i32 @stv090x_set_vit_thtracq(%struct.stv090x_state*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
