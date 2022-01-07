; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_sig_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_get_sig_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.dvb_frontend }
%struct.TYPE_4__ = type { i64 (%struct.dvb_frontend*, i32*)* }
%struct.TYPE_3__ = type { i32 }
%struct.dvb_frontend = type { i32 }

@STV090x_BLIND_SEARCH = common dso_local global i64 0, align 8
@TMGREG2 = common dso_local global i32 0, align 4
@SFRSTEP = common dso_local global i32 0, align 4
@DMDMODCOD = common dso_local global i32 0, align 4
@DEMOD_MODCOD_FIELD = common dso_local global i32 0, align 4
@DEMOD_TYPE_FIELD = common dso_local global i32 0, align 4
@TMGOBS = common dso_local global i32 0, align 4
@ROLLOFF_STATUS_FIELD = common dso_local global i32 0, align 4
@FECM = common dso_local global i32 0, align 4
@IQINV_FIELD = common dso_local global i32 0, align 4
@STV090x_RANGEOK = common dso_local global i32 0, align 4
@STV090x_OUTOFRANGE = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_get_sig_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_sig_params(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %9 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %10 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %9, i32 0, i32 12
  store %struct.dvb_frontend* %10, %struct.dvb_frontend** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = call i32 @msleep(i32 5)
  %12 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %13 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %1
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %19 = load i32, i32* @TMGREG2, align 4
  %20 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %18, i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %23 = load i32, i32* @SFRSTEP, align 4
  %24 = call i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %22, i32 %23, i32 92)
  br label %25

25:                                               ; preds = %36, %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 50
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 255
  br label %34

34:                                               ; preds = %31, %28, %25
  %35 = phi i1 [ false, %28 ], [ false, %25 ], [ %33, %31 ]
  br i1 %35, label %36, label %44

36:                                               ; preds = %34
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %38 = load i32, i32* @TMGREG2, align 4
  %39 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = call i32 @msleep(i32 5)
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 5
  store i32 %43, i32* %7, align 4
  br label %25

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %47 = call i32 @stv090x_get_std(%struct.stv090x_state* %46)
  %48 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %49 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %48, i32 0, i32 11
  store i32 %47, i32* %49, align 8
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %51 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %50, i32 1)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %217

54:                                               ; preds = %45
  %55 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %56 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %55, i32 0, i32 9
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %58, align 8
  %60 = icmp ne i64 (%struct.dvb_frontend*, i32*)* %59, null
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %63 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %62, i32 0, i32 9
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %65, align 8
  %67 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %68 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %69 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %68, i32 0, i32 1
  %70 = call i64 %66(%struct.dvb_frontend* %67, i32* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %214

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %76 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %75, i32 0)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %217

79:                                               ; preds = %74
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %81 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %82 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %81, i32 0, i32 10
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @stv090x_get_car_freq(%struct.stv090x_state* %80, i32 %85)
  %87 = sdiv i32 %86, 1000
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %90 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %94 = call i64 @stv090x_get_viterbi(%struct.stv090x_state* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %217

97:                                               ; preds = %79
  %98 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %99 = load i32, i32* @DMDMODCOD, align 4
  %100 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %98, i32 %99)
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* @DEMOD_MODCOD_FIELD, align 4
  %103 = call i32 @STV090x_GETFIELD_Px(i8* %101, i32 %102)
  %104 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %105 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* @DEMOD_TYPE_FIELD, align 4
  %108 = call i32 @STV090x_GETFIELD_Px(i8* %106, i32 %107)
  %109 = and i32 %108, 1
  %110 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %111 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i32, i32* @DEMOD_TYPE_FIELD, align 4
  %114 = call i32 @STV090x_GETFIELD_Px(i8* %112, i32 %113)
  %115 = ashr i32 %114, 1
  %116 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %117 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 4
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %119 = load i32, i32* @TMGOBS, align 4
  %120 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %118, i32 %119)
  store i8* %120, i8** %6, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* @ROLLOFF_STATUS_FIELD, align 4
  %123 = call i32 @STV090x_GETFIELD_Px(i8* %121, i32 %122)
  %124 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %125 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %127 = load i32, i32* @FECM, align 4
  %128 = call i8* @STV090x_READ_DEMOD(%struct.stv090x_state* %126, i32 %127)
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* @IQINV_FIELD, align 4
  %131 = call i32 @STV090x_GETFIELD_Px(i8* %129, i32 %130)
  %132 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %133 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 4
  %134 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %135 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @STV090x_BLIND_SEARCH, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %97
  %140 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %141 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 10000000
  br i1 %143, label %144, label %201

144:                                              ; preds = %139, %97
  %145 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %146 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %145, i32 1)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %217

149:                                              ; preds = %144
  %150 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %151 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %150, i32 0, i32 9
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %153, align 8
  %155 = icmp ne i64 (%struct.dvb_frontend*, i32*)* %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %149
  %157 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %158 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %157, i32 0, i32 9
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i64 (%struct.dvb_frontend*, i32*)*, i64 (%struct.dvb_frontend*, i32*)** %160, align 8
  %162 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %163 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %164 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %163, i32 0, i32 1
  %165 = call i64 %161(%struct.dvb_frontend* %162, i32* %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %214

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168, %149
  %170 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %171 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %170, i32 0)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %217

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @abs(i32 %175) #3
  %177 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %178 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 2000
  %181 = add nsw i32 %180, 500
  %182 = icmp sle i32 %176, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %174
  %184 = load i32, i32* @STV090x_RANGEOK, align 4
  store i32 %184, i32* %2, align 4
  br label %220

185:                                              ; preds = %174
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @abs(i32 %186) #3
  %188 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %189 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %188, i32 0, i32 7
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %192 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @stv090x_car_width(i32 %190, i32 %193)
  %195 = sdiv i32 %194, 2000
  %196 = icmp sle i32 %187, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %185
  %198 = load i32, i32* @STV090x_RANGEOK, align 4
  store i32 %198, i32* %2, align 4
  br label %220

199:                                              ; preds = %185
  %200 = load i32, i32* @STV090x_OUTOFRANGE, align 4
  store i32 %200, i32* %2, align 4
  br label %220

201:                                              ; preds = %139
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @abs(i32 %202) #3
  %204 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %205 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %206, 2000
  %208 = add nsw i32 %207, 500
  %209 = icmp sle i32 %203, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %201
  %211 = load i32, i32* @STV090x_RANGEOK, align 4
  store i32 %211, i32* %2, align 4
  br label %220

212:                                              ; preds = %201
  %213 = load i32, i32* @STV090x_OUTOFRANGE, align 4
  store i32 %213, i32* %2, align 4
  br label %220

214:                                              ; preds = %167, %72
  %215 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %216 = call i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state* %215, i32 0)
  br label %217

217:                                              ; preds = %214, %173, %148, %96, %78, %53
  %218 = load i32, i32* @FE_ERROR, align 4
  %219 = call i32 @dprintk(i32 %218, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %220

220:                                              ; preds = %217, %212, %210, %199, %197, %183
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i8* @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_get_std(%struct.stv090x_state*) #1

declare dso_local i64 @stv090x_i2c_gate_ctrl(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_get_car_freq(%struct.stv090x_state*, i32) #1

declare dso_local i64 @stv090x_get_viterbi(%struct.stv090x_state*) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i8*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @stv090x_car_width(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
