; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_ip2main.c_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ktermios = type { i32, i32, i32, i8* }

@CBAUD = common dso_local global i32 0, align 4
@PTYPE_BYPASS = common dso_local global i32 0, align 4
@CMD_RTSDN = common dso_local global i32 0, align 4
@CMD_DTRDN = common dso_local global i32 0, align 4
@I2_DTR = common dso_local global i32 0, align 4
@I2_RTS = common dso_local global i32 0, align 4
@PTYPE_INLINE = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@CBR_57600 = common dso_local global i8* null, align 8
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@CBR_115200 = common dso_local global i8* null, align 8
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@CBR_C1 = common dso_local global i64 0, align 8
@CBR_38400 = common dso_local global i64 0, align 8
@CBR_50 = common dso_local global i64 0, align 8
@CBR_75 = common dso_local global i64 0, align 8
@CBR_110 = common dso_local global i64 0, align 8
@CBR_134 = common dso_local global i64 0, align 8
@CBR_150 = common dso_local global i64 0, align 8
@CBR_200 = common dso_local global i64 0, align 8
@CBR_300 = common dso_local global i64 0, align 8
@CBR_600 = common dso_local global i64 0, align 8
@CBR_1200 = common dso_local global i64 0, align 8
@CBR_1800 = common dso_local global i64 0, align 8
@CBR_2400 = common dso_local global i64 0, align 8
@CBR_4800 = common dso_local global i64 0, align 8
@CBR_9600 = common dso_local global i8* null, align 8
@CBR_19200 = common dso_local global i64 0, align 8
@CBR_153600 = common dso_local global i64 0, align 8
@CBR_230400 = common dso_local global i64 0, align 8
@CBR_307200 = common dso_local global i64 0, align 8
@CBR_460800 = common dso_local global i64 0, align 8
@CBR_921600 = common dso_local global i8* null, align 8
@CMD_DTRUP = common dso_local global i32 0, align 4
@CMD_RTSUP = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@CST_2 = common dso_local global i32 0, align 4
@CST_1 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSP_OD = common dso_local global i32 0, align 4
@CSP_EV = common dso_local global i32 0, align 4
@CSP_NP = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSZ_5 = common dso_local global i32 0, align 4
@CSZ_6 = common dso_local global i32 0, align 4
@CSZ_7 = common dso_local global i32 0, align 4
@CSZ_8 = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CMD_CTSFL_ENAB = common dso_local global i32 0, align 4
@CMD_RTSFL_ENAB = common dso_local global i32 0, align 4
@CMD_CTSFL_DSAB = common dso_local global i32 0, align 4
@CMD_RTSFL_DSAB = common dso_local global i32 0, align 4
@__DISABLED_CHAR = common dso_local global i8 0, align 1
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@IXOFF = common dso_local global i32 0, align 4
@COX_XON = common dso_local global i32 0, align 4
@COX_NONE = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@CIX_XANY = common dso_local global i32 0, align 4
@CIX_XON = common dso_local global i32 0, align 4
@CIX_NONE = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@CPK_ENAB = common dso_local global i32 0, align 4
@CPK_DSAB = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@CMD_BRK_NREP = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@CMD_DCD_NREP = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@CMD_DCD_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.ktermios*)* @set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_params(%struct.TYPE_9__* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.ktermios, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %37 = icmp eq %struct.ktermios* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, -1
  %41 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %42, -1
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %45, -1
  %47 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 2
  store i32 %46, i32* %47, align 8
  store %struct.ktermios* %10, %struct.ktermios** %4, align 8
  br label %48

48:                                               ; preds = %38, %2
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CBAUD, align 4
  %51 = and i32 %49, %50
  switch i32 %51, label %216 [
    i32 154, label %52
    i32 140, label %83
    i32 137, label %128
    i32 134, label %132
    i32 153, label %136
    i32 150, label %140
    i32 149, label %144
    i32 145, label %148
    i32 142, label %152
    i32 135, label %156
    i32 151, label %160
    i32 147, label %164
    i32 143, label %168
    i32 138, label %172
    i32 132, label %176
    i32 146, label %181
    i32 136, label %185
    i32 152, label %190
    i32 148, label %195
    i32 144, label %199
    i32 141, label %203
    i32 139, label %207
    i32 133, label %211
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @PTYPE_BYPASS, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i32, i32* @CMD_RTSDN, align 4
  %56 = load i32, i32* @CMD_DTRDN, align 4
  %57 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %53, %struct.TYPE_9__* %54, i32 100, i32 2, i32 %55, i32 %56)
  %58 = load i32, i32* @I2_DTR, align 4
  %59 = load i32, i32* @I2_RTS, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @PTYPE_INLINE, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = call i32 @CMD_PAUSE(i32 25)
  %69 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %66, %struct.TYPE_9__* %67, i32 100, i32 1, i32 %68)
  %70 = load i32, i32* @CBAUD, align 4
  %71 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %72 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %70, %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  br label %715

83:                                               ; preds = %48
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @ASYNC_SPD_HI, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i8*, i8** @CBR_57600, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  br label %127

96:                                               ; preds = %83
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i8*, i8** @CBR_115200, align 8
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %126

109:                                              ; preds = %96
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i64, i64* @CBR_C1, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  br label %125

121:                                              ; preds = %109
  %122 = load i64, i64* @CBR_38400, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %121, %117
  br label %126

126:                                              ; preds = %125, %104
  br label %127

127:                                              ; preds = %126, %91
  br label %221

128:                                              ; preds = %48
  %129 = load i64, i64* @CBR_50, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  br label %221

132:                                              ; preds = %48
  %133 = load i64, i64* @CBR_75, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %221

136:                                              ; preds = %48
  %137 = load i64, i64* @CBR_110, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  store i64 %137, i64* %139, align 8
  br label %221

140:                                              ; preds = %48
  %141 = load i64, i64* @CBR_134, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %221

144:                                              ; preds = %48
  %145 = load i64, i64* @CBR_150, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  br label %221

148:                                              ; preds = %48
  %149 = load i64, i64* @CBR_200, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  br label %221

152:                                              ; preds = %48
  %153 = load i64, i64* @CBR_300, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  br label %221

156:                                              ; preds = %48
  %157 = load i64, i64* @CBR_600, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  br label %221

160:                                              ; preds = %48
  %161 = load i64, i64* @CBR_1200, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  br label %221

164:                                              ; preds = %48
  %165 = load i64, i64* @CBR_1800, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  store i64 %165, i64* %167, align 8
  br label %221

168:                                              ; preds = %48
  %169 = load i64, i64* @CBR_2400, align 8
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  br label %221

172:                                              ; preds = %48
  %173 = load i64, i64* @CBR_4800, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  br label %221

176:                                              ; preds = %48
  %177 = load i8*, i8** @CBR_9600, align 8
  %178 = ptrtoint i8* %177 to i64
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  br label %221

181:                                              ; preds = %48
  %182 = load i64, i64* @CBR_19200, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  store i64 %182, i64* %184, align 8
  br label %221

185:                                              ; preds = %48
  %186 = load i8*, i8** @CBR_57600, align 8
  %187 = ptrtoint i8* %186 to i64
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  br label %221

190:                                              ; preds = %48
  %191 = load i8*, i8** @CBR_115200, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  br label %221

195:                                              ; preds = %48
  %196 = load i64, i64* @CBR_153600, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 2
  store i64 %196, i64* %198, align 8
  br label %221

199:                                              ; preds = %48
  %200 = load i64, i64* @CBR_230400, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  store i64 %200, i64* %202, align 8
  br label %221

203:                                              ; preds = %48
  %204 = load i64, i64* @CBR_307200, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  store i64 %204, i64* %206, align 8
  br label %221

207:                                              ; preds = %48
  %208 = load i64, i64* @CBR_460800, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  br label %221

211:                                              ; preds = %48
  %212 = load i8*, i8** @CBR_921600, align 8
  %213 = ptrtoint i8* %212 to i64
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  br label %221

216:                                              ; preds = %48
  %217 = load i8*, i8** @CBR_9600, align 8
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  store i64 %218, i64* %220, align 8
  br label %221

221:                                              ; preds = %216, %211, %207, %203, %199, %195, %190, %185, %181, %176, %172, %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %127
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @CBR_C1, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %251

227:                                              ; preds = %221
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %230, %233
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* %11, align 4
  %236 = icmp eq i32 %235, 921600
  br i1 %236, label %237, label %242

237:                                              ; preds = %227
  %238 = load i8*, i8** @CBR_921600, align 8
  %239 = ptrtoint i8* %238 to i64
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  store i64 %239, i64* %241, align 8
  br label %250

242:                                              ; preds = %227
  %243 = load i32, i32* %11, align 4
  %244 = sdiv i32 %243, 10
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* @PTYPE_INLINE, align 4
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @CMD_BAUD_DEF1(i32 %247)
  %249 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %245, %struct.TYPE_9__* %246, i32 100, i32 1, i32 %248)
  br label %250

250:                                              ; preds = %242, %237
  br label %251

251:                                              ; preds = %250, %221
  %252 = load i32, i32* @PTYPE_INLINE, align 4
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @CMD_SETBAUD(i64 %256)
  %258 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %252, %struct.TYPE_9__* %253, i32 100, i32 1, i32 %257)
  %259 = load i32, i32* @PTYPE_INLINE, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %261 = load i32, i32* @CMD_DTRUP, align 4
  %262 = load i32, i32* @CMD_RTSUP, align 4
  %263 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %259, %struct.TYPE_9__* %260, i32 100, i32 2, i32 %261, i32 %262)
  %264 = load i32, i32* @I2_DTR, align 4
  %265 = load i32, i32* @I2_RTS, align 4
  %266 = or i32 %264, %265
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load i32, i32* @CSTOPB, align 4
  %272 = load i32, i32* %5, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* @CSTOPB, align 4
  %275 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %276 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %274, %277
  %279 = xor i32 %273, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %296

281:                                              ; preds = %251
  %282 = load i32, i32* @PTYPE_INLINE, align 4
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* @CSTOPB, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = load i32, i32* @CST_2, align 4
  br label %292

290:                                              ; preds = %281
  %291 = load i32, i32* @CST_1, align 4
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %294 = call i32 @CMD_SETSTOP(i32 %293)
  %295 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %282, %struct.TYPE_9__* %283, i32 100, i32 1, i32 %294)
  br label %296

296:                                              ; preds = %292, %251
  %297 = load i32, i32* @PARENB, align 4
  %298 = load i32, i32* @PARODD, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* %5, align 4
  %301 = and i32 %299, %300
  %302 = load i32, i32* @PARENB, align 4
  %303 = load i32, i32* @PARODD, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %306 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = and i32 %304, %307
  %309 = xor i32 %301, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %335

311:                                              ; preds = %296
  %312 = load i32, i32* @PTYPE_INLINE, align 4
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* @PARENB, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %311
  %319 = load i32, i32* %5, align 4
  %320 = load i32, i32* @PARODD, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = load i32, i32* @CSP_OD, align 4
  br label %327

325:                                              ; preds = %318
  %326 = load i32, i32* @CSP_EV, align 4
  br label %327

327:                                              ; preds = %325, %323
  %328 = phi i32 [ %324, %323 ], [ %326, %325 ]
  br label %331

329:                                              ; preds = %311
  %330 = load i32, i32* @CSP_NP, align 4
  br label %331

331:                                              ; preds = %329, %327
  %332 = phi i32 [ %328, %327 ], [ %330, %329 ]
  %333 = call i32 @CMD_SETPAR(i32 %332)
  %334 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %312, %struct.TYPE_9__* %313, i32 100, i32 1, i32 %333)
  br label %335

335:                                              ; preds = %331, %296
  %336 = load i32, i32* @CSIZE, align 4
  %337 = load i32, i32* %5, align 4
  %338 = and i32 %336, %337
  %339 = load i32, i32* @CSIZE, align 4
  %340 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %341 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %339, %342
  %344 = xor i32 %338, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %366

346:                                              ; preds = %335
  %347 = load i32, i32* %5, align 4
  %348 = load i32, i32* @CSIZE, align 4
  %349 = and i32 %347, %348
  switch i32 %349, label %358 [
    i32 131, label %350
    i32 130, label %352
    i32 129, label %354
    i32 128, label %356
  ]

350:                                              ; preds = %346
  %351 = load i32, i32* @CSZ_5, align 4
  store i32 %351, i32* %12, align 4
  br label %360

352:                                              ; preds = %346
  %353 = load i32, i32* @CSZ_6, align 4
  store i32 %353, i32* %12, align 4
  br label %360

354:                                              ; preds = %346
  %355 = load i32, i32* @CSZ_7, align 4
  store i32 %355, i32* %12, align 4
  br label %360

356:                                              ; preds = %346
  %357 = load i32, i32* @CSZ_8, align 4
  store i32 %357, i32* %12, align 4
  br label %360

358:                                              ; preds = %346
  %359 = load i32, i32* @CSZ_5, align 4
  store i32 %359, i32* %12, align 4
  br label %360

360:                                              ; preds = %358, %356, %354, %352, %350
  %361 = load i32, i32* @PTYPE_INLINE, align 4
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %363 = load i32, i32* %12, align 4
  %364 = call i32 @CMD_SETBITS(i32 %363)
  %365 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %361, %struct.TYPE_9__* %362, i32 100, i32 1, i32 %364)
  br label %366

366:                                              ; preds = %360, %335
  %367 = load i32, i32* %5, align 4
  %368 = load i32, i32* @CRTSCTS, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load i32, i32* @PTYPE_INLINE, align 4
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %374 = load i32, i32* @CMD_CTSFL_ENAB, align 4
  %375 = load i32, i32* @CMD_RTSFL_ENAB, align 4
  %376 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %372, %struct.TYPE_9__* %373, i32 100, i32 2, i32 %374, i32 %375)
  br label %383

377:                                              ; preds = %366
  %378 = load i32, i32* @PTYPE_INLINE, align 4
  %379 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %380 = load i32, i32* @CMD_CTSFL_DSAB, align 4
  %381 = load i32, i32* @CMD_RTSFL_DSAB, align 4
  %382 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %378, %struct.TYPE_9__* %379, i32 100, i32 2, i32 %380, i32 %381)
  br label %383

383:                                              ; preds = %377, %371
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 5
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %385, align 8
  %387 = call signext i8 @STOP_CHAR(%struct.TYPE_10__* %386)
  store i8 %387, i8* %8, align 1
  %388 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 5
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %389, align 8
  %391 = call signext i8 @START_CHAR(%struct.TYPE_10__* %390)
  store i8 %391, i8* %9, align 1
  %392 = load i8, i8* %8, align 1
  %393 = sext i8 %392 to i32
  %394 = load i8, i8* @__DISABLED_CHAR, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp eq i32 %393, %395
  br i1 %396, label %397, label %402

397:                                              ; preds = %383
  %398 = load i8, i8* @__DISABLED_CHAR, align 1
  %399 = sext i8 %398 to i32
  %400 = xor i32 %399, -1
  %401 = trunc i32 %400 to i8
  store i8 %401, i8* %8, align 1
  br label %402

402:                                              ; preds = %397, %383
  %403 = load i8, i8* %9, align 1
  %404 = sext i8 %403 to i32
  %405 = load i8, i8* @__DISABLED_CHAR, align 1
  %406 = sext i8 %405 to i32
  %407 = icmp eq i32 %404, %406
  br i1 %407, label %408, label %413

408:                                              ; preds = %402
  %409 = load i8, i8* @__DISABLED_CHAR, align 1
  %410 = sext i8 %409 to i32
  %411 = xor i32 %410, -1
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %9, align 1
  br label %413

413:                                              ; preds = %408, %402
  %414 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %415 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %414, i32 0, i32 3
  %416 = load i8*, i8** %415, align 8
  %417 = load i64, i64* @VSTART, align 8
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  %419 = load i8, i8* %418, align 1
  %420 = sext i8 %419 to i32
  %421 = load i8, i8* %9, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp ne i32 %420, %422
  br i1 %423, label %424, label %435

424:                                              ; preds = %413
  %425 = load i32, i32* @PTYPE_BYPASS, align 4
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %427 = load i8, i8* %9, align 1
  %428 = call i32 @CMD_DEF_IXON(i8 signext %427)
  %429 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %425, %struct.TYPE_9__* %426, i32 100, i32 1, i32 %428)
  %430 = load i32, i32* @PTYPE_INLINE, align 4
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %432 = load i8, i8* %9, align 1
  %433 = call i32 @CMD_DEF_OXON(i8 signext %432)
  %434 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %430, %struct.TYPE_9__* %431, i32 100, i32 1, i32 %433)
  br label %435

435:                                              ; preds = %424, %413
  %436 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %437 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %436, i32 0, i32 3
  %438 = load i8*, i8** %437, align 8
  %439 = load i64, i64* @VSTOP, align 8
  %440 = getelementptr inbounds i8, i8* %438, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = sext i8 %441 to i32
  %443 = load i8, i8* %8, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp ne i32 %442, %444
  br i1 %445, label %446, label %457

446:                                              ; preds = %435
  %447 = load i32, i32* @PTYPE_BYPASS, align 4
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %449 = load i8, i8* %8, align 1
  %450 = call i32 @CMD_DEF_IXOFF(i8 signext %449)
  %451 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %447, %struct.TYPE_9__* %448, i32 100, i32 1, i32 %450)
  %452 = load i32, i32* @PTYPE_INLINE, align 4
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %454 = load i8, i8* %8, align 1
  %455 = call i32 @CMD_DEF_OXOFF(i8 signext %454)
  %456 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %452, %struct.TYPE_9__* %453, i32 100, i32 1, i32 %455)
  br label %457

457:                                              ; preds = %446, %435
  %458 = load i8, i8* %8, align 1
  %459 = sext i8 %458 to i32
  %460 = load i8, i8* @__DISABLED_CHAR, align 1
  %461 = sext i8 %460 to i32
  %462 = icmp eq i32 %459, %461
  br i1 %462, label %463, label %468

463:                                              ; preds = %457
  %464 = load i8, i8* @__DISABLED_CHAR, align 1
  %465 = sext i8 %464 to i32
  %466 = xor i32 %465, -1
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %8, align 1
  br label %491

468:                                              ; preds = %457
  %469 = load i32, i32* %6, align 4
  %470 = load i32, i32* @IXOFF, align 4
  %471 = and i32 %469, %470
  %472 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %473 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = load i32, i32* @IXOFF, align 4
  %476 = and i32 %474, %475
  %477 = xor i32 %471, %476
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %498

479:                                              ; preds = %468
  %480 = load i32, i32* %6, align 4
  %481 = load i32, i32* @IXOFF, align 4
  %482 = and i32 %480, %481
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %490

484:                                              ; preds = %479
  %485 = load i32, i32* @PTYPE_INLINE, align 4
  %486 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %487 = load i32, i32* @COX_XON, align 4
  %488 = call i32 @CMD_OXON_OPT(i32 %487)
  %489 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %485, %struct.TYPE_9__* %486, i32 100, i32 1, i32 %488)
  br label %497

490:                                              ; preds = %479
  br label %491

491:                                              ; preds = %490, %463
  %492 = load i32, i32* @PTYPE_INLINE, align 4
  %493 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %494 = load i32, i32* @COX_NONE, align 4
  %495 = call i32 @CMD_OXON_OPT(i32 %494)
  %496 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %492, %struct.TYPE_9__* %493, i32 100, i32 1, i32 %495)
  br label %497

497:                                              ; preds = %491, %484
  br label %498

498:                                              ; preds = %497, %468
  %499 = load i8, i8* %9, align 1
  %500 = sext i8 %499 to i32
  %501 = load i8, i8* @__DISABLED_CHAR, align 1
  %502 = sext i8 %501 to i32
  %503 = icmp eq i32 %500, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %498
  br label %544

505:                                              ; preds = %498
  %506 = load i32, i32* %6, align 4
  %507 = load i32, i32* @IXON, align 4
  %508 = load i32, i32* @IXANY, align 4
  %509 = or i32 %507, %508
  %510 = and i32 %506, %509
  %511 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %512 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %511, i32 0, i32 2
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* @IXON, align 4
  %515 = load i32, i32* @IXANY, align 4
  %516 = or i32 %514, %515
  %517 = and i32 %513, %516
  %518 = xor i32 %510, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %551

520:                                              ; preds = %505
  %521 = load i32, i32* %6, align 4
  %522 = load i32, i32* @IXON, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %543

525:                                              ; preds = %520
  %526 = load i32, i32* %6, align 4
  %527 = load i32, i32* @IXANY, align 4
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %536

530:                                              ; preds = %525
  %531 = load i32, i32* @PTYPE_INLINE, align 4
  %532 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %533 = load i32, i32* @CIX_XANY, align 4
  %534 = call i32 @CMD_IXON_OPT(i32 %533)
  %535 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %531, %struct.TYPE_9__* %532, i32 100, i32 1, i32 %534)
  br label %542

536:                                              ; preds = %525
  %537 = load i32, i32* @PTYPE_INLINE, align 4
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %539 = load i32, i32* @CIX_XON, align 4
  %540 = call i32 @CMD_IXON_OPT(i32 %539)
  %541 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %537, %struct.TYPE_9__* %538, i32 100, i32 1, i32 %540)
  br label %542

542:                                              ; preds = %536, %530
  br label %550

543:                                              ; preds = %520
  br label %544

544:                                              ; preds = %543, %504
  %545 = load i32, i32* @PTYPE_INLINE, align 4
  %546 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %547 = load i32, i32* @CIX_NONE, align 4
  %548 = call i32 @CMD_IXON_OPT(i32 %547)
  %549 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %545, %struct.TYPE_9__* %546, i32 100, i32 1, i32 %548)
  br label %550

550:                                              ; preds = %544, %542
  br label %551

551:                                              ; preds = %550, %505
  %552 = load i32, i32* %6, align 4
  %553 = load i32, i32* @ISTRIP, align 4
  %554 = and i32 %552, %553
  %555 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %556 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 8
  %558 = load i32, i32* @ISTRIP, align 4
  %559 = and i32 %557, %558
  %560 = xor i32 %554, %559
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %574

562:                                              ; preds = %551
  %563 = load i32, i32* @PTYPE_INLINE, align 4
  %564 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %565 = load i32, i32* %6, align 4
  %566 = load i32, i32* @ISTRIP, align 4
  %567 = and i32 %565, %566
  %568 = icmp ne i32 %567, 0
  %569 = zext i1 %568 to i64
  %570 = select i1 %568, i32 1, i32 0
  %571 = trunc i32 %570 to i8
  %572 = call i32 @CMD_ISTRIP_OPT(i8 signext %571)
  %573 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %563, %struct.TYPE_9__* %564, i32 100, i32 1, i32 %572)
  br label %574

574:                                              ; preds = %562, %551
  %575 = load i32, i32* %6, align 4
  %576 = load i32, i32* @INPCK, align 4
  %577 = and i32 %575, %576
  %578 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %579 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = load i32, i32* @INPCK, align 4
  %582 = and i32 %580, %581
  %583 = xor i32 %577, %582
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %600

585:                                              ; preds = %574
  %586 = load i32, i32* @PTYPE_INLINE, align 4
  %587 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %588 = load i32, i32* %6, align 4
  %589 = load i32, i32* @INPCK, align 4
  %590 = and i32 %588, %589
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %585
  %593 = load i32, i32* @CPK_ENAB, align 4
  br label %596

594:                                              ; preds = %585
  %595 = load i32, i32* @CPK_DSAB, align 4
  br label %596

596:                                              ; preds = %594, %592
  %597 = phi i32 [ %593, %592 ], [ %595, %594 ]
  %598 = call i32 @CMD_PARCHK(i32 %597)
  %599 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %586, %struct.TYPE_9__* %587, i32 100, i32 1, i32 %598)
  br label %600

600:                                              ; preds = %596, %574
  %601 = load i32, i32* %6, align 4
  %602 = load i32, i32* @IGNBRK, align 4
  %603 = load i32, i32* @PARMRK, align 4
  %604 = or i32 %602, %603
  %605 = load i32, i32* @BRKINT, align 4
  %606 = or i32 %604, %605
  %607 = load i32, i32* @IGNPAR, align 4
  %608 = or i32 %606, %607
  %609 = and i32 %601, %608
  %610 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %611 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 8
  %613 = load i32, i32* @IGNBRK, align 4
  %614 = load i32, i32* @PARMRK, align 4
  %615 = or i32 %613, %614
  %616 = load i32, i32* @BRKINT, align 4
  %617 = or i32 %615, %616
  %618 = load i32, i32* @IGNPAR, align 4
  %619 = or i32 %617, %618
  %620 = and i32 %612, %619
  %621 = xor i32 %609, %620
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %688

623:                                              ; preds = %600
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %624 = load i32, i32* %6, align 4
  %625 = load i32, i32* @IGNBRK, align 4
  %626 = and i32 %624, %625
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %633

628:                                              ; preds = %623
  %629 = load i32, i32* @PTYPE_INLINE, align 4
  %630 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %631 = load i32, i32* @CMD_BRK_NREP, align 4
  %632 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %629, %struct.TYPE_9__* %630, i32 100, i32 1, i32 %631)
  br label %664

633:                                              ; preds = %623
  %634 = load i32, i32* %6, align 4
  %635 = load i32, i32* @BRKINT, align 4
  %636 = and i32 %634, %635
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %650

638:                                              ; preds = %633
  %639 = load i32, i32* %6, align 4
  %640 = load i32, i32* @PARMRK, align 4
  %641 = and i32 %639, %640
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %644

643:                                              ; preds = %638
  store i8 10, i8* %13, align 1
  br label %645

644:                                              ; preds = %638
  store i8 26, i8* %13, align 1
  br label %645

645:                                              ; preds = %644, %643
  %646 = load i8, i8* %13, align 1
  %647 = sext i8 %646 to i32
  %648 = or i32 %647, 4
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %13, align 1
  br label %658

650:                                              ; preds = %633
  %651 = load i32, i32* %6, align 4
  %652 = load i32, i32* @PARMRK, align 4
  %653 = and i32 %651, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %656

655:                                              ; preds = %650
  store i8 11, i8* %13, align 1
  br label %657

656:                                              ; preds = %650
  store i8 1, i8* %13, align 1
  br label %657

657:                                              ; preds = %656, %655
  br label %658

658:                                              ; preds = %657, %645
  %659 = load i32, i32* @PTYPE_INLINE, align 4
  %660 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %661 = load i8, i8* %13, align 1
  %662 = call i32 @CMD_BRK_REP(i8 signext %661)
  %663 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %659, %struct.TYPE_9__* %660, i32 100, i32 1, i32 %662)
  br label %664

664:                                              ; preds = %658, %628
  %665 = load i32, i32* %6, align 4
  %666 = load i32, i32* @IGNPAR, align 4
  %667 = and i32 %665, %666
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %669, label %670

669:                                              ; preds = %664
  store i8 32, i8* %14, align 1
  br label %682

670:                                              ; preds = %664
  %671 = load i32, i32* %6, align 4
  %672 = load i32, i32* @PARMRK, align 4
  %673 = and i32 %671, %672
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %680

675:                                              ; preds = %670
  store i8 4, i8* %14, align 1
  %676 = load i32, i32* @PTYPE_INLINE, align 4
  %677 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %678 = call i32 @CMD_ISTRIP_OPT(i8 signext 0)
  %679 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %676, %struct.TYPE_9__* %677, i32 100, i32 1, i32 %678)
  br label %681

680:                                              ; preds = %670
  store i8 3, i8* %14, align 1
  br label %681

681:                                              ; preds = %680, %675
  br label %682

682:                                              ; preds = %681, %669
  %683 = load i32, i32* @PTYPE_INLINE, align 4
  %684 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %685 = load i8, i8* %14, align 1
  %686 = call i32 @CMD_SET_ERROR(i8 signext %685)
  %687 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %683, %struct.TYPE_9__* %684, i32 100, i32 1, i32 %686)
  br label %688

688:                                              ; preds = %682, %600
  %689 = load i32, i32* %5, align 4
  %690 = load i32, i32* @CLOCAL, align 4
  %691 = and i32 %689, %690
  %692 = icmp ne i32 %691, 0
  br i1 %692, label %693, label %704

693:                                              ; preds = %688
  %694 = load i32, i32* @PTYPE_INLINE, align 4
  %695 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %696 = load i32, i32* @CMD_DCD_NREP, align 4
  %697 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %694, %struct.TYPE_9__* %695, i32 100, i32 1, i32 %696)
  %698 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %699 = xor i32 %698, -1
  %700 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %701 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %700, i32 0, i32 1
  %702 = load i32, i32* %701, align 4
  %703 = and i32 %702, %699
  store i32 %703, i32* %701, align 4
  br label %714

704:                                              ; preds = %688
  %705 = load i32, i32* @PTYPE_INLINE, align 4
  %706 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %707 = load i32, i32* @CMD_DCD_REP, align 4
  %708 = call i32 (i32, %struct.TYPE_9__*, i32, i32, i32, ...) @i2QueueCommands(i32 %705, %struct.TYPE_9__* %706, i32 100, i32 1, i32 %707)
  %709 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %710 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %711 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = or i32 %712, %709
  store i32 %713, i32* %711, align 4
  br label %714

714:                                              ; preds = %704, %693
  br label %715

715:                                              ; preds = %714, %52
  %716 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %717 = call i32 @i2DrainOutput(%struct.TYPE_9__* %716, i32 100)
  ret void
}

declare dso_local i32 @i2QueueCommands(i32, %struct.TYPE_9__*, i32, i32, i32, ...) #1

declare dso_local i32 @CMD_PAUSE(i32) #1

declare dso_local i32 @CMD_BAUD_DEF1(i32) #1

declare dso_local i32 @CMD_SETBAUD(i64) #1

declare dso_local i32 @CMD_SETSTOP(i32) #1

declare dso_local i32 @CMD_SETPAR(i32) #1

declare dso_local i32 @CMD_SETBITS(i32) #1

declare dso_local signext i8 @STOP_CHAR(%struct.TYPE_10__*) #1

declare dso_local signext i8 @START_CHAR(%struct.TYPE_10__*) #1

declare dso_local i32 @CMD_DEF_IXON(i8 signext) #1

declare dso_local i32 @CMD_DEF_OXON(i8 signext) #1

declare dso_local i32 @CMD_DEF_IXOFF(i8 signext) #1

declare dso_local i32 @CMD_DEF_OXOFF(i8 signext) #1

declare dso_local i32 @CMD_OXON_OPT(i32) #1

declare dso_local i32 @CMD_IXON_OPT(i32) #1

declare dso_local i32 @CMD_ISTRIP_OPT(i8 signext) #1

declare dso_local i32 @CMD_PARCHK(i32) #1

declare dso_local i32 @CMD_BRK_REP(i8 signext) #1

declare dso_local i32 @CMD_SET_ERROR(i8 signext) #1

declare dso_local i32 @i2DrainOutput(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
