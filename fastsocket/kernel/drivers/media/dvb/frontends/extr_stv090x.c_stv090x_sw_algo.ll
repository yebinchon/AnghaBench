; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_sw_algo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_sw_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CARFREQ = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@CORRELABS = common dso_local global i32 0, align 4
@DMDSTATE = common dso_local global i32 0, align 4
@HEADER_MODE_FIELD = common dso_local global i32 0, align 4
@STV090x_DVBS2 = common dso_local global i32 0, align 4
@DMDFLYW = common dso_local global i32 0, align 4
@FLYWHEEL_CPT_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_sw_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_sw_algo(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %14 = call i32 @stv090x_get_loop_params(%struct.stv090x_state* %13, i32* %9, i32* %10, i32* %12)
  %15 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %16 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %61 [
    i32 129, label %18
    i32 130, label %18
    i32 128, label %39
    i32 131, label %60
  ]

18:                                               ; preds = %1, %1
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 32
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %27 = load i32, i32* @CARFREQ, align 4
  %28 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %26, i32 %27, i32 59)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %205

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %34 = load i32, i32* @DMDCFGMD, align 4
  %35 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %33, i32 %34, i32 73)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %205

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %88

39:                                               ; preds = %1
  %40 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %41 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %44, 32
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %48 = load i32, i32* @CORRELABS, align 4
  %49 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %47, i32 %48, i32 121)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %205

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %55 = load i32, i32* @DMDCFGMD, align 4
  %56 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %54, i32 %55, i32 137)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %205

59:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %88

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %1, %60
  %62 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %63 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 32
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = load i32, i32* @CARFREQ, align 4
  %71 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %69, i32 %70, i32 59)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %205

74:                                               ; preds = %68
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %76 = load i32, i32* @CORRELABS, align 4
  %77 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %75, i32 %76, i32 121)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %205

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %83 = load i32, i32* @DMDCFGMD, align 4
  %84 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %82, i32 %83, i32 201)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %205

87:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %59, %38
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %201, %88
  %90 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @stv090x_search_car_loop(%struct.stv090x_state* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %97 = call i32 @stv090x_chk_signal(%struct.stv090x_state* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %190

108:                                              ; preds = %105, %102, %89
  %109 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %110 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 32
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %117 = load i32, i32* @CARFREQ, align 4
  %118 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %116, i32 %117, i32 73)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %205

121:                                              ; preds = %115
  %122 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %123 = load i32, i32* @CORRELABS, align 4
  %124 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %122, i32 %123, i32 158)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %205

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %130 = load i32, i32* @DMDSTATE, align 4
  %131 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %189

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @HEADER_MODE_FIELD, align 4
  %137 = call i32 @STV090x_GETFIELD_Px(i32 %135, i32 %136)
  %138 = load i32, i32* @STV090x_DVBS2, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %189

140:                                              ; preds = %134
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @msleep(i32 %141)
  %143 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %144 = load i32, i32* @DMDFLYW, align 4
  %145 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %143, i32 %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @FLYWHEEL_CPT_FIELD, align 4
  %148 = call i32 @STV090x_GETFIELD_Px(i32 %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp slt i32 %149, 13
  br i1 %150, label %151, label %160

151:                                              ; preds = %140
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @msleep(i32 %152)
  %154 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %155 = load i32, i32* @DMDFLYW, align 4
  %156 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %154, i32 %155)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @FLYWHEEL_CPT_FIELD, align 4
  %159 = call i32 @STV090x_GETFIELD_Px(i32 %157, i32 %158)
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %151, %140
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 13
  br i1 %162, label %163, label %188

163:                                              ; preds = %160
  store i32 0, i32* %6, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %166, label %187

166:                                              ; preds = %163
  %167 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %168 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 32
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %175 = load i32, i32* @CORRELABS, align 4
  %176 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %174, i32 %175, i32 121)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %205

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179, %166
  %181 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %182 = load i32, i32* @DMDCFGMD, align 4
  %183 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %181, i32 %182, i32 137)
  %184 = icmp slt i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  br label %205

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %163
  br label %188

188:                                              ; preds = %187, %160
  br label %189

189:                                              ; preds = %188, %134, %128
  br label %190

190:                                              ; preds = %189, %105
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %11, align 4
  %196 = icmp slt i32 %195, 2
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  br label %201

201:                                              ; preds = %197, %194, %191
  %202 = phi i1 [ false, %194 ], [ false, %191 ], [ %200, %197 ]
  br i1 %202, label %89, label %203

203:                                              ; preds = %201
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %2, align 4
  br label %208

205:                                              ; preds = %185, %178, %126, %120, %86, %79, %73, %58, %51, %37, %30
  %206 = load i32, i32* @FE_ERROR, align 4
  %207 = call i32 @dprintk(i32 %206, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %208

208:                                              ; preds = %205, %203
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @stv090x_get_loop_params(%struct.stv090x_state*, i32*, i32*, i32*) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_search_car_loop(%struct.stv090x_state*, i32, i32, i32, i32) #1

declare dso_local i32 @stv090x_chk_signal(%struct.stv090x_state*) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
