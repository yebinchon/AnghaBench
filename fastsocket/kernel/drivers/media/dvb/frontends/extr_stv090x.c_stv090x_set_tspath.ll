; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_tspath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_set_tspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@STV090x_TSGENERAL = common dso_local global i32 0, align 4
@STV090x_P1_TSCFGM = common dso_local global i32 0, align 4
@TSFIFO_MANSPEED_FIELD = common dso_local global i32 0, align 4
@STV090x_P2_TSCFGM = common dso_local global i32 0, align 4
@STV090x_P1_TSSPEED = common dso_local global i32 0, align 4
@STV090x_P2_TSSPEED = common dso_local global i32 0, align 4
@STV090x_TSGENERAL1X = common dso_local global i32 0, align 4
@STV090x_P1_TSCFGH = common dso_local global i32 0, align 4
@TSFIFO_SERIAL_FIELD = common dso_local global i32 0, align 4
@TSFIFO_DVBCI_FIELD = common dso_local global i32 0, align 4
@STV090x_P2_TSCFGH = common dso_local global i32 0, align 4
@RST_HWARE_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_set_tspath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_set_tspath(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  %7 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %8 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %100

13:                                               ; preds = %1
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %77 [
    i32 130, label %19
    i32 131, label %19
    i32 128, label %76
    i32 129, label %76
  ]

19:                                               ; preds = %13, %13
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
    i32 129, label %25
    i32 130, label %30
    i32 131, label %30
  ]

25:                                               ; preds = %19, %19
  br label %26

26:                                               ; preds = %19, %25
  %27 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %28 = load i32, i32* @STV090x_TSGENERAL, align 4
  %29 = call i64 @stv090x_write_reg(%struct.stv090x_state* %27, i32 %28, i32 0)
  br label %75

30:                                               ; preds = %19, %19
  %31 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %32 = load i32, i32* @STV090x_TSGENERAL, align 4
  %33 = call i64 @stv090x_write_reg(%struct.stv090x_state* %31, i32 %32, i32 6)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %537

36:                                               ; preds = %30
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %38 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %39 = call i32 @stv090x_read_reg(%struct.stv090x_state* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %42 = call i32 @STV090x_SETFIELD_Px(i32 %40, i32 %41, i32 3)
  %43 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %44 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @stv090x_write_reg(%struct.stv090x_state* %43, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %537

49:                                               ; preds = %36
  %50 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %51 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %52 = call i32 @stv090x_read_reg(%struct.stv090x_state* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %55 = call i32 @STV090x_SETFIELD_Px(i32 %53, i32 %54, i32 3)
  %56 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %57 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @stv090x_write_reg(%struct.stv090x_state* %56, i32 %57, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %537

62:                                               ; preds = %49
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %65 = call i64 @stv090x_write_reg(%struct.stv090x_state* %63, i32 %64, i32 20)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %537

68:                                               ; preds = %62
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = load i32, i32* @STV090x_P2_TSSPEED, align 4
  %71 = call i64 @stv090x_write_reg(%struct.stv090x_state* %69, i32 %70, i32 40)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %537

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %26
  br label %99

76:                                               ; preds = %13, %13
  br label %77

77:                                               ; preds = %13, %76
  %78 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %79 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %84 [
    i32 128, label %83
    i32 129, label %83
    i32 130, label %91
    i32 131, label %91
  ]

83:                                               ; preds = %77, %77
  br label %84

84:                                               ; preds = %77, %83
  %85 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %86 = load i32, i32* @STV090x_TSGENERAL, align 4
  %87 = call i64 @stv090x_write_reg(%struct.stv090x_state* %85, i32 %86, i32 12)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %537

90:                                               ; preds = %84
  br label %98

91:                                               ; preds = %77, %77
  %92 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %93 = load i32, i32* @STV090x_TSGENERAL, align 4
  %94 = call i64 @stv090x_write_reg(%struct.stv090x_state* %92, i32 %93, i32 10)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %537

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %90
  br label %99

99:                                               ; preds = %98, %75
  br label %178

100:                                              ; preds = %1
  %101 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %102 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %161 [
    i32 130, label %106
    i32 131, label %106
    i32 128, label %160
    i32 129, label %160
  ]

106:                                              ; preds = %100, %100
  %107 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %108 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %113 [
    i32 128, label %112
    i32 129, label %112
    i32 130, label %117
    i32 131, label %117
  ]

112:                                              ; preds = %106, %106
  br label %113

113:                                              ; preds = %106, %112
  %114 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %115 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %116 = call i64 @stv090x_write_reg(%struct.stv090x_state* %114, i32 %115, i32 16)
  br label %159

117:                                              ; preds = %106, %106
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %119 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %120 = call i64 @stv090x_write_reg(%struct.stv090x_state* %118, i32 %119, i32 22)
  %121 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %122 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %123 = call i32 @stv090x_read_reg(%struct.stv090x_state* %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %126 = call i32 @STV090x_SETFIELD_Px(i32 %124, i32 %125, i32 3)
  %127 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %128 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @stv090x_write_reg(%struct.stv090x_state* %127, i32 %128, i32 %129)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %117
  br label %537

133:                                              ; preds = %117
  %134 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %135 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %136 = call i32 @stv090x_read_reg(%struct.stv090x_state* %134, i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %139 = call i32 @STV090x_SETFIELD_Px(i32 %137, i32 %138, i32 0)
  %140 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %141 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %142 = load i32, i32* %4, align 4
  %143 = call i64 @stv090x_write_reg(%struct.stv090x_state* %140, i32 %141, i32 %142)
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %537

146:                                              ; preds = %133
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %148 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %149 = call i64 @stv090x_write_reg(%struct.stv090x_state* %147, i32 %148, i32 20)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %537

152:                                              ; preds = %146
  %153 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %154 = load i32, i32* @STV090x_P2_TSSPEED, align 4
  %155 = call i64 @stv090x_write_reg(%struct.stv090x_state* %153, i32 %154, i32 40)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %537

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158, %113
  br label %177

160:                                              ; preds = %100, %100
  br label %161

161:                                              ; preds = %100, %160
  %162 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %163 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %168 [
    i32 128, label %167
    i32 129, label %167
    i32 130, label %172
    i32 131, label %172
  ]

167:                                              ; preds = %161, %161
  br label %168

168:                                              ; preds = %161, %167
  %169 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %170 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %171 = call i64 @stv090x_write_reg(%struct.stv090x_state* %169, i32 %170, i32 20)
  br label %176

172:                                              ; preds = %161, %161
  %173 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %174 = load i32, i32* @STV090x_TSGENERAL1X, align 4
  %175 = call i64 @stv090x_write_reg(%struct.stv090x_state* %173, i32 %174, i32 18)
  br label %176

176:                                              ; preds = %172, %168
  br label %177

177:                                              ; preds = %176, %159
  br label %178

178:                                              ; preds = %177, %99
  %179 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %180 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %179, i32 0, i32 0
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  switch i32 %183, label %252 [
    i32 130, label %184
    i32 131, label %201
    i32 128, label %218
    i32 129, label %235
  ]

184:                                              ; preds = %178
  %185 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %186 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %187 = call i32 @stv090x_read_reg(%struct.stv090x_state* %185, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %190 = call i32 @STV090x_SETFIELD_Px(i32 %188, i32 %189, i32 0)
  %191 = load i32, i32* %4, align 4
  %192 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %193 = call i32 @STV090x_SETFIELD_Px(i32 %191, i32 %192, i32 0)
  %194 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %195 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %196 = load i32, i32* %4, align 4
  %197 = call i64 @stv090x_write_reg(%struct.stv090x_state* %194, i32 %195, i32 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %184
  br label %537

200:                                              ; preds = %184
  br label %253

201:                                              ; preds = %178
  %202 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %203 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %204 = call i32 @stv090x_read_reg(%struct.stv090x_state* %202, i32 %203)
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %207 = call i32 @STV090x_SETFIELD_Px(i32 %205, i32 %206, i32 0)
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %210 = call i32 @STV090x_SETFIELD_Px(i32 %208, i32 %209, i32 1)
  %211 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %212 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %213 = load i32, i32* %4, align 4
  %214 = call i64 @stv090x_write_reg(%struct.stv090x_state* %211, i32 %212, i32 %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %201
  br label %537

217:                                              ; preds = %201
  br label %253

218:                                              ; preds = %178
  %219 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %220 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %221 = call i32 @stv090x_read_reg(%struct.stv090x_state* %219, i32 %220)
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %224 = call i32 @STV090x_SETFIELD_Px(i32 %222, i32 %223, i32 1)
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %227 = call i32 @STV090x_SETFIELD_Px(i32 %225, i32 %226, i32 0)
  %228 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %229 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %230 = load i32, i32* %4, align 4
  %231 = call i64 @stv090x_write_reg(%struct.stv090x_state* %228, i32 %229, i32 %230)
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %218
  br label %537

234:                                              ; preds = %218
  br label %253

235:                                              ; preds = %178
  %236 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %237 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %238 = call i32 @stv090x_read_reg(%struct.stv090x_state* %236, i32 %237)
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %241 = call i32 @STV090x_SETFIELD_Px(i32 %239, i32 %240, i32 1)
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %244 = call i32 @STV090x_SETFIELD_Px(i32 %242, i32 %243, i32 1)
  %245 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %246 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %247 = load i32, i32* %4, align 4
  %248 = call i64 @stv090x_write_reg(%struct.stv090x_state* %245, i32 %246, i32 %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %235
  br label %537

251:                                              ; preds = %235
  br label %253

252:                                              ; preds = %178
  br label %253

253:                                              ; preds = %252, %251, %234, %217, %200
  %254 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %255 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  switch i32 %258, label %327 [
    i32 130, label %259
    i32 131, label %276
    i32 128, label %293
    i32 129, label %310
  ]

259:                                              ; preds = %253
  %260 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %261 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %262 = call i32 @stv090x_read_reg(%struct.stv090x_state* %260, i32 %261)
  store i32 %262, i32* %4, align 4
  %263 = load i32, i32* %4, align 4
  %264 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %265 = call i32 @STV090x_SETFIELD_Px(i32 %263, i32 %264, i32 0)
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %268 = call i32 @STV090x_SETFIELD_Px(i32 %266, i32 %267, i32 0)
  %269 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %270 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %271 = load i32, i32* %4, align 4
  %272 = call i64 @stv090x_write_reg(%struct.stv090x_state* %269, i32 %270, i32 %271)
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %259
  br label %537

275:                                              ; preds = %259
  br label %328

276:                                              ; preds = %253
  %277 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %278 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %279 = call i32 @stv090x_read_reg(%struct.stv090x_state* %277, i32 %278)
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %282 = call i32 @STV090x_SETFIELD_Px(i32 %280, i32 %281, i32 0)
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %285 = call i32 @STV090x_SETFIELD_Px(i32 %283, i32 %284, i32 1)
  %286 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %287 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %288 = load i32, i32* %4, align 4
  %289 = call i64 @stv090x_write_reg(%struct.stv090x_state* %286, i32 %287, i32 %288)
  %290 = icmp slt i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %276
  br label %537

292:                                              ; preds = %276
  br label %328

293:                                              ; preds = %253
  %294 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %295 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %296 = call i32 @stv090x_read_reg(%struct.stv090x_state* %294, i32 %295)
  store i32 %296, i32* %4, align 4
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %299 = call i32 @STV090x_SETFIELD_Px(i32 %297, i32 %298, i32 1)
  %300 = load i32, i32* %4, align 4
  %301 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %302 = call i32 @STV090x_SETFIELD_Px(i32 %300, i32 %301, i32 0)
  %303 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %304 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %305 = load i32, i32* %4, align 4
  %306 = call i64 @stv090x_write_reg(%struct.stv090x_state* %303, i32 %304, i32 %305)
  %307 = icmp slt i64 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %293
  br label %537

309:                                              ; preds = %293
  br label %328

310:                                              ; preds = %253
  %311 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %312 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %313 = call i32 @stv090x_read_reg(%struct.stv090x_state* %311, i32 %312)
  store i32 %313, i32* %4, align 4
  %314 = load i32, i32* %4, align 4
  %315 = load i32, i32* @TSFIFO_SERIAL_FIELD, align 4
  %316 = call i32 @STV090x_SETFIELD_Px(i32 %314, i32 %315, i32 1)
  %317 = load i32, i32* %4, align 4
  %318 = load i32, i32* @TSFIFO_DVBCI_FIELD, align 4
  %319 = call i32 @STV090x_SETFIELD_Px(i32 %317, i32 %318, i32 1)
  %320 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %321 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %322 = load i32, i32* %4, align 4
  %323 = call i64 @stv090x_write_reg(%struct.stv090x_state* %320, i32 %321, i32 %322)
  %324 = icmp slt i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %310
  br label %537

326:                                              ; preds = %310
  br label %328

327:                                              ; preds = %253
  br label %328

328:                                              ; preds = %327, %326, %309, %292, %275
  %329 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %330 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %329, i32 0, i32 0
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = icmp sgt i64 %333, 0
  br i1 %334, label %335, label %409

335:                                              ; preds = %328
  %336 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %337 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %336, i32 0, i32 0
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  switch i32 %340, label %342 [
    i32 130, label %341
    i32 131, label %341
    i32 128, label %365
    i32 129, label %365
  ]

341:                                              ; preds = %335, %335
  br label %342

342:                                              ; preds = %335, %341
  %343 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %344 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %343, i32 0, i32 1
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %350 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %349, i32 0, i32 0
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = sdiv i64 %353, 4
  %355 = sdiv i64 %348, %354
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %5, align 4
  %357 = load i32, i32* %5, align 4
  %358 = icmp slt i32 %357, 8
  br i1 %358, label %359, label %360

359:                                              ; preds = %342
  store i32 8, i32* %5, align 4
  br label %360

360:                                              ; preds = %359, %342
  %361 = load i32, i32* %5, align 4
  %362 = icmp sgt i32 %361, 255
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 255, i32* %5, align 4
  br label %364

364:                                              ; preds = %363, %360
  br label %388

365:                                              ; preds = %335, %335
  %366 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %367 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %366, i32 0, i32 1
  %368 = load %struct.TYPE_3__*, %struct.TYPE_3__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %373 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %372, i32 0, i32 0
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = sdiv i64 %376, 32
  %378 = sdiv i64 %371, %377
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %5, align 4
  %380 = load i32, i32* %5, align 4
  %381 = icmp slt i32 %380, 32
  br i1 %381, label %382, label %383

382:                                              ; preds = %365
  store i32 32, i32* %5, align 4
  br label %383

383:                                              ; preds = %382, %365
  %384 = load i32, i32* %5, align 4
  %385 = icmp sgt i32 %384, 255
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  store i32 255, i32* %5, align 4
  br label %387

387:                                              ; preds = %386, %383
  br label %388

388:                                              ; preds = %387, %364
  %389 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %390 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %391 = call i32 @stv090x_read_reg(%struct.stv090x_state* %389, i32 %390)
  store i32 %391, i32* %4, align 4
  %392 = load i32, i32* %4, align 4
  %393 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %394 = call i32 @STV090x_SETFIELD_Px(i32 %392, i32 %393, i32 3)
  %395 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %396 = load i32, i32* @STV090x_P1_TSCFGM, align 4
  %397 = load i32, i32* %4, align 4
  %398 = call i64 @stv090x_write_reg(%struct.stv090x_state* %395, i32 %396, i32 %397)
  %399 = icmp slt i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %388
  br label %537

401:                                              ; preds = %388
  %402 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %403 = load i32, i32* @STV090x_P1_TSSPEED, align 4
  %404 = load i32, i32* %5, align 4
  %405 = call i64 @stv090x_write_reg(%struct.stv090x_state* %402, i32 %403, i32 %404)
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %401
  br label %537

408:                                              ; preds = %401
  br label %409

409:                                              ; preds = %408, %328
  %410 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %411 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %410, i32 0, i32 0
  %412 = load %struct.TYPE_4__*, %struct.TYPE_4__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 3
  %414 = load i64, i64* %413, align 8
  %415 = icmp sgt i64 %414, 0
  br i1 %415, label %416, label %490

416:                                              ; preds = %409
  %417 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %418 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %417, i32 0, i32 0
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  switch i32 %421, label %423 [
    i32 130, label %422
    i32 131, label %422
    i32 128, label %446
    i32 129, label %446
  ]

422:                                              ; preds = %416, %416
  br label %423

423:                                              ; preds = %416, %422
  %424 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %425 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %424, i32 0, i32 1
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = sext i32 %428 to i64
  %430 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %431 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %430, i32 0, i32 0
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 3
  %434 = load i64, i64* %433, align 8
  %435 = sdiv i64 %434, 4
  %436 = sdiv i64 %429, %435
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %6, align 4
  %438 = load i32, i32* %6, align 4
  %439 = icmp slt i32 %438, 8
  br i1 %439, label %440, label %441

440:                                              ; preds = %423
  store i32 8, i32* %6, align 4
  br label %441

441:                                              ; preds = %440, %423
  %442 = load i32, i32* %6, align 4
  %443 = icmp sgt i32 %442, 255
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  store i32 255, i32* %6, align 4
  br label %445

445:                                              ; preds = %444, %441
  br label %469

446:                                              ; preds = %416, %416
  %447 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %448 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %447, i32 0, i32 1
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  %453 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %454 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %453, i32 0, i32 0
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 3
  %457 = load i64, i64* %456, align 8
  %458 = sdiv i64 %457, 32
  %459 = sdiv i64 %452, %458
  %460 = trunc i64 %459 to i32
  store i32 %460, i32* %6, align 4
  %461 = load i32, i32* %6, align 4
  %462 = icmp slt i32 %461, 32
  br i1 %462, label %463, label %464

463:                                              ; preds = %446
  store i32 32, i32* %6, align 4
  br label %464

464:                                              ; preds = %463, %446
  %465 = load i32, i32* %6, align 4
  %466 = icmp sgt i32 %465, 255
  br i1 %466, label %467, label %468

467:                                              ; preds = %464
  store i32 255, i32* %6, align 4
  br label %468

468:                                              ; preds = %467, %464
  br label %469

469:                                              ; preds = %468, %445
  %470 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %471 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %472 = call i32 @stv090x_read_reg(%struct.stv090x_state* %470, i32 %471)
  store i32 %472, i32* %4, align 4
  %473 = load i32, i32* %4, align 4
  %474 = load i32, i32* @TSFIFO_MANSPEED_FIELD, align 4
  %475 = call i32 @STV090x_SETFIELD_Px(i32 %473, i32 %474, i32 3)
  %476 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %477 = load i32, i32* @STV090x_P2_TSCFGM, align 4
  %478 = load i32, i32* %4, align 4
  %479 = call i64 @stv090x_write_reg(%struct.stv090x_state* %476, i32 %477, i32 %478)
  %480 = icmp slt i64 %479, 0
  br i1 %480, label %481, label %482

481:                                              ; preds = %469
  br label %537

482:                                              ; preds = %469
  %483 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %484 = load i32, i32* @STV090x_P2_TSSPEED, align 4
  %485 = load i32, i32* %6, align 4
  %486 = call i64 @stv090x_write_reg(%struct.stv090x_state* %483, i32 %484, i32 %485)
  %487 = icmp slt i64 %486, 0
  br i1 %487, label %488, label %489

488:                                              ; preds = %482
  br label %537

489:                                              ; preds = %482
  br label %490

490:                                              ; preds = %489, %409
  %491 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %492 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %493 = call i32 @stv090x_read_reg(%struct.stv090x_state* %491, i32 %492)
  store i32 %493, i32* %4, align 4
  %494 = load i32, i32* %4, align 4
  %495 = load i32, i32* @RST_HWARE_FIELD, align 4
  %496 = call i32 @STV090x_SETFIELD_Px(i32 %494, i32 %495, i32 1)
  %497 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %498 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %499 = load i32, i32* %4, align 4
  %500 = call i64 @stv090x_write_reg(%struct.stv090x_state* %497, i32 %498, i32 %499)
  %501 = icmp slt i64 %500, 0
  br i1 %501, label %502, label %503

502:                                              ; preds = %490
  br label %537

503:                                              ; preds = %490
  %504 = load i32, i32* %4, align 4
  %505 = load i32, i32* @RST_HWARE_FIELD, align 4
  %506 = call i32 @STV090x_SETFIELD_Px(i32 %504, i32 %505, i32 0)
  %507 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %508 = load i32, i32* @STV090x_P2_TSCFGH, align 4
  %509 = load i32, i32* %4, align 4
  %510 = call i64 @stv090x_write_reg(%struct.stv090x_state* %507, i32 %508, i32 %509)
  %511 = icmp slt i64 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %503
  br label %537

513:                                              ; preds = %503
  %514 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %515 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %516 = call i32 @stv090x_read_reg(%struct.stv090x_state* %514, i32 %515)
  store i32 %516, i32* %4, align 4
  %517 = load i32, i32* %4, align 4
  %518 = load i32, i32* @RST_HWARE_FIELD, align 4
  %519 = call i32 @STV090x_SETFIELD_Px(i32 %517, i32 %518, i32 1)
  %520 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %521 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %522 = load i32, i32* %4, align 4
  %523 = call i64 @stv090x_write_reg(%struct.stv090x_state* %520, i32 %521, i32 %522)
  %524 = icmp slt i64 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %513
  br label %537

526:                                              ; preds = %513
  %527 = load i32, i32* %4, align 4
  %528 = load i32, i32* @RST_HWARE_FIELD, align 4
  %529 = call i32 @STV090x_SETFIELD_Px(i32 %527, i32 %528, i32 0)
  %530 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %531 = load i32, i32* @STV090x_P1_TSCFGH, align 4
  %532 = load i32, i32* %4, align 4
  %533 = call i64 @stv090x_write_reg(%struct.stv090x_state* %530, i32 %531, i32 %532)
  %534 = icmp slt i64 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %526
  br label %537

536:                                              ; preds = %526
  store i32 0, i32* %2, align 4
  br label %540

537:                                              ; preds = %535, %525, %512, %502, %488, %481, %407, %400, %325, %308, %291, %274, %250, %233, %216, %199, %157, %151, %145, %132, %96, %89, %73, %67, %61, %48, %35
  %538 = load i32, i32* @FE_ERROR, align 4
  %539 = call i32 @dprintk(i32 %538, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %540

540:                                              ; preds = %537, %536
  %541 = load i32, i32* %2, align 4
  ret i32 %541
}

declare dso_local i64 @stv090x_write_reg(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @stv090x_read_reg(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
