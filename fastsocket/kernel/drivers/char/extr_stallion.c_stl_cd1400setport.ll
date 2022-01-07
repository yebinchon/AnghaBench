; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400setport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32 }
%struct.stlport = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32, i32, i8* }

@stl_brds = common dso_local global %struct.stlbrd** null, align 8
@IGNPAR = common dso_local global i32 0, align 4
@ST_PARITY = common dso_local global i32 0, align 4
@ST_FRAMING = common dso_local global i32 0, align 4
@ST_OVERRUN = common dso_local global i32 0, align 4
@COR1_PARIGNORE = common dso_local global i8 0, align 1
@IGNBRK = common dso_local global i32 0, align 4
@ST_BREAK = common dso_local global i32 0, align 4
@COR4_IGNBRK = common dso_local global i8 0, align 1
@INPCK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@COR1_CHL5 = common dso_local global i8 0, align 1
@COR1_CHL6 = common dso_local global i8 0, align 1
@COR1_CHL7 = common dso_local global i8 0, align 1
@COR1_CHL8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@COR1_STOP2 = common dso_local global i8 0, align 1
@COR1_STOP1 = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@COR1_PARENB = common dso_local global i8 0, align 1
@COR1_PARODD = common dso_local global i8 0, align 1
@COR1_PAREVEN = common dso_local global i8 0, align 1
@COR1_PARNONE = common dso_local global i8 0, align 1
@FIFO_RXTHRESHOLD = common dso_local global i8 0, align 1
@CBAUD = common dso_local global i32 0, align 4
@CBAUDEX = common dso_local global i32 0, align 4
@stl_baudrates = common dso_local global i32* null, align 8
@B38400 = common dso_local global i32 0, align 4
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@ASYNC_SPD_SHI = common dso_local global i32 0, align 4
@ASYNC_SPD_WARP = common dso_local global i32 0, align 4
@ASYNC_SPD_CUST = common dso_local global i32 0, align 4
@STL_CD1400MAXBAUD = common dso_local global i32 0, align 4
@CD1400_NUMCLKS = common dso_local global i8 0, align 1
@stl_cd1400clkdivs = common dso_local global i32* null, align 8
@CLOCAL = common dso_local global i32 0, align 4
@MCOR1_DCD = common dso_local global i8 0, align 1
@MCOR2_DCD = common dso_local global i8 0, align 1
@SRER_MODEM = common dso_local global i8 0, align 1
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@COR2_TXIBE = common dso_local global i8 0, align 1
@COR3_SCD12 = common dso_local global i8 0, align 1
@IXANY = common dso_local global i32 0, align 4
@COR2_IXM = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@COR2_CTSAE = common dso_local global i8 0, align 1
@FIFO_RTSTHRESHOLD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [40 x i8] c"SETPORT: portnr=%d panelnr=%d brdnr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"    cor1=%x cor2=%x cor3=%x cor4=%x cor5=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"    mcor1=%x mcor2=%x rtpr=%x sreron=%x sreroff=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"    tcor=%x tbpr=%x rcor=%x rbpr=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"    schr1=%x schr2=%x schr3=%x schr4=%x\0A\00", align 1
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@brd_lock = common dso_local global i32 0, align 4
@CAR = common dso_local global i32 0, align 4
@SRER = common dso_local global i32 0, align 4
@COR1 = common dso_local global i32 0, align 4
@COR2 = common dso_local global i32 0, align 4
@COR3 = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@CCR_CORCHANGE = common dso_local global i8 0, align 1
@COR4 = common dso_local global i32 0, align 4
@COR5 = common dso_local global i32 0, align 4
@MCOR1 = common dso_local global i32 0, align 4
@MCOR2 = common dso_local global i32 0, align 4
@TCOR = common dso_local global i32 0, align 4
@TBPR = common dso_local global i32 0, align 4
@RCOR = common dso_local global i32 0, align 4
@RBPR = common dso_local global i32 0, align 4
@SCHR1 = common dso_local global i32 0, align 4
@SCHR2 = common dso_local global i32 0, align 4
@SCHR3 = common dso_local global i32 0, align 4
@SCHR4 = common dso_local global i32 0, align 4
@RTPR = common dso_local global i32 0, align 4
@MSVR1 = common dso_local global i32 0, align 4
@MSVR1_DCD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, %struct.ktermios*)* @stl_cd1400setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400setport(%struct.stlport* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.stlbrd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %23 = load %struct.stlbrd**, %struct.stlbrd*** @stl_brds, align 8
  %24 = load %struct.stlport*, %struct.stlport** %3, align 8
  %25 = getelementptr inbounds %struct.stlport, %struct.stlport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.stlbrd*, %struct.stlbrd** %23, i64 %26
  %28 = load %struct.stlbrd*, %struct.stlbrd** %27, align 8
  store %struct.stlbrd* %28, %struct.stlbrd** %5, align 8
  %29 = load %struct.stlbrd*, %struct.stlbrd** %5, align 8
  %30 = icmp eq %struct.stlbrd* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %684

32:                                               ; preds = %2
  %33 = load %struct.stlport*, %struct.stlport** %3, align 8
  %34 = getelementptr inbounds %struct.stlport, %struct.stlport* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IGNPAR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = load i32, i32* @ST_PARITY, align 4
  %43 = load i32, i32* @ST_FRAMING, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ST_OVERRUN, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.stlport*, %struct.stlport** %3, align 8
  %48 = getelementptr inbounds %struct.stlport, %struct.stlport* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i8, i8* @COR1_PARIGNORE, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %52
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  br label %57

57:                                               ; preds = %41, %32
  %58 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IGNBRK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load i32, i32* @ST_BREAK, align 4
  %66 = load %struct.stlport*, %struct.stlport** %3, align 8
  %67 = getelementptr inbounds %struct.stlport, %struct.stlport* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i8, i8* @COR4_IGNBRK, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %71
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %12, align 1
  br label %76

76:                                               ; preds = %64, %57
  %77 = load i32, i32* @ST_OVERRUN, align 4
  %78 = load %struct.stlport*, %struct.stlport** %3, align 8
  %79 = getelementptr inbounds %struct.stlport, %struct.stlport* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %81 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @INPCK, align 4
  %84 = load i32, i32* @PARMRK, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load i32, i32* @ST_PARITY, align 4
  %90 = load i32, i32* @ST_FRAMING, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.stlport*, %struct.stlport** %3, align 8
  %93 = getelementptr inbounds %struct.stlport, %struct.stlport* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %88, %76
  %97 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %98 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BRKINT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load i32, i32* @ST_BREAK, align 4
  %105 = load %struct.stlport*, %struct.stlport** %3, align 8
  %106 = getelementptr inbounds %struct.stlport, %struct.stlport* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %96
  %110 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %111 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @CSIZE, align 4
  %114 = and i32 %112, %113
  switch i32 %114, label %136 [
    i32 130, label %115
    i32 129, label %122
    i32 128, label %129
  ]

115:                                              ; preds = %109
  %116 = load i8, i8* @COR1_CHL5, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* %9, align 1
  %119 = zext i8 %118 to i32
  %120 = or i32 %119, %117
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %9, align 1
  br label %143

122:                                              ; preds = %109
  %123 = load i8, i8* @COR1_CHL6, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* %9, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %126, %124
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %9, align 1
  br label %143

129:                                              ; preds = %109
  %130 = load i8, i8* @COR1_CHL7, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* %9, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %133, %131
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %9, align 1
  br label %143

136:                                              ; preds = %109
  %137 = load i8, i8* @COR1_CHL8, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* %9, align 1
  %140 = zext i8 %139 to i32
  %141 = or i32 %140, %138
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %9, align 1
  br label %143

143:                                              ; preds = %136, %129, %122, %115
  %144 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %145 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @CSTOPB, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load i8, i8* @COR1_STOP2, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8, i8* %9, align 1
  %154 = zext i8 %153 to i32
  %155 = or i32 %154, %152
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %9, align 1
  br label %164

157:                                              ; preds = %143
  %158 = load i8, i8* @COR1_STOP1, align 1
  %159 = zext i8 %158 to i32
  %160 = load i8, i8* %9, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %161, %159
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %9, align 1
  br label %164

164:                                              ; preds = %157, %150
  %165 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %166 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PARENB, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %199

171:                                              ; preds = %164
  %172 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %173 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PARODD, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %171
  %179 = load i8, i8* @COR1_PARENB, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8, i8* @COR1_PARODD, align 1
  %182 = zext i8 %181 to i32
  %183 = or i32 %180, %182
  %184 = load i8, i8* %9, align 1
  %185 = zext i8 %184 to i32
  %186 = or i32 %185, %183
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %9, align 1
  br label %198

188:                                              ; preds = %171
  %189 = load i8, i8* @COR1_PARENB, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8, i8* @COR1_PAREVEN, align 1
  %192 = zext i8 %191 to i32
  %193 = or i32 %190, %192
  %194 = load i8, i8* %9, align 1
  %195 = zext i8 %194 to i32
  %196 = or i32 %195, %193
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %9, align 1
  br label %198

198:                                              ; preds = %188, %178
  br label %206

199:                                              ; preds = %164
  %200 = load i8, i8* @COR1_PARNONE, align 1
  %201 = zext i8 %200 to i32
  %202 = load i8, i8* %9, align 1
  %203 = zext i8 %202 to i32
  %204 = or i32 %203, %201
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %9, align 1
  br label %206

206:                                              ; preds = %199, %198
  %207 = load i8, i8* @FIFO_RXTHRESHOLD, align 1
  %208 = zext i8 %207 to i32
  %209 = load i8, i8* %11, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %210, %208
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %11, align 1
  store i8 2, i8* %20, align 1
  %213 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %214 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @CBAUD, align 4
  %217 = and i32 %215, %216
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* @CBAUDEX, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %206
  %223 = load i32, i32* @CBAUDEX, align 4
  %224 = xor i32 %223, -1
  %225 = load i32, i32* %8, align 4
  %226 = and i32 %225, %224
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp ult i32 %227, 1
  br i1 %228, label %232, label %229

229:                                              ; preds = %222
  %230 = load i32, i32* %8, align 4
  %231 = icmp ugt i32 %230, 4
  br i1 %231, label %232, label %239

232:                                              ; preds = %229, %222
  %233 = load i32, i32* @CBAUDEX, align 4
  %234 = xor i32 %233, -1
  %235 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %236 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, %234
  store i32 %238, i32* %236, align 4
  br label %242

239:                                              ; preds = %229
  %240 = load i32, i32* %8, align 4
  %241 = add i32 %240, 15
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %239, %232
  br label %243

243:                                              ; preds = %242, %206
  %244 = load i32*, i32** @stl_baudrates, align 8
  %245 = load i32, i32* %8, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %8, align 4
  %249 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %250 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @CBAUD, align 4
  %253 = and i32 %251, %252
  %254 = load i32, i32* @B38400, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %318

256:                                              ; preds = %243
  %257 = load %struct.stlport*, %struct.stlport** %3, align 8
  %258 = getelementptr inbounds %struct.stlport, %struct.stlport* %257, i32 0, i32 10
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %262 = and i32 %260, %261
  %263 = load i32, i32* @ASYNC_SPD_HI, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %256
  store i32 57600, i32* %8, align 4
  br label %317

266:                                              ; preds = %256
  %267 = load %struct.stlport*, %struct.stlport** %3, align 8
  %268 = getelementptr inbounds %struct.stlport, %struct.stlport* %267, i32 0, i32 10
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %272 = and i32 %270, %271
  %273 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %266
  store i32 115200, i32* %8, align 4
  br label %316

276:                                              ; preds = %266
  %277 = load %struct.stlport*, %struct.stlport** %3, align 8
  %278 = getelementptr inbounds %struct.stlport, %struct.stlport* %277, i32 0, i32 10
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  store i32 230400, i32* %8, align 4
  br label %315

286:                                              ; preds = %276
  %287 = load %struct.stlport*, %struct.stlport** %3, align 8
  %288 = getelementptr inbounds %struct.stlport, %struct.stlport* %287, i32 0, i32 10
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %292 = and i32 %290, %291
  %293 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %286
  store i32 460800, i32* %8, align 4
  br label %314

296:                                              ; preds = %286
  %297 = load %struct.stlport*, %struct.stlport** %3, align 8
  %298 = getelementptr inbounds %struct.stlport, %struct.stlport* %297, i32 0, i32 10
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %302 = and i32 %300, %301
  %303 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %296
  %306 = load %struct.stlport*, %struct.stlport** %3, align 8
  %307 = getelementptr inbounds %struct.stlport, %struct.stlport* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.stlport*, %struct.stlport** %3, align 8
  %310 = getelementptr inbounds %struct.stlport, %struct.stlport* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = udiv i32 %308, %311
  store i32 %312, i32* %8, align 4
  br label %313

313:                                              ; preds = %305, %296
  br label %314

314:                                              ; preds = %313, %295
  br label %315

315:                                              ; preds = %314, %285
  br label %316

316:                                              ; preds = %315, %275
  br label %317

317:                                              ; preds = %316, %265
  br label %318

318:                                              ; preds = %317, %243
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @STL_CD1400MAXBAUD, align 4
  %321 = icmp ugt i32 %319, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = load i32, i32* @STL_CD1400MAXBAUD, align 4
  store i32 %323, i32* %8, align 4
  br label %324

324:                                              ; preds = %322, %318
  %325 = load i32, i32* %8, align 4
  %326 = icmp ugt i32 %325, 0
  br i1 %326, label %327, label %356

327:                                              ; preds = %324
  store i8 0, i8* %21, align 1
  br label %328

328:                                              ; preds = %350, %327
  %329 = load i8, i8* %21, align 1
  %330 = zext i8 %329 to i32
  %331 = load i8, i8* @CD1400_NUMCLKS, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp slt i32 %330, %332
  br i1 %333, label %334, label %353

334:                                              ; preds = %328
  %335 = load %struct.stlport*, %struct.stlport** %3, align 8
  %336 = getelementptr inbounds %struct.stlport, %struct.stlport* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = load i32*, i32** @stl_cd1400clkdivs, align 8
  %339 = load i8, i8* %21, align 1
  %340 = zext i8 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = udiv i32 %337, %342
  %344 = load i32, i32* %8, align 4
  %345 = udiv i32 %343, %344
  store i32 %345, i32* %7, align 4
  %346 = load i32, i32* %7, align 4
  %347 = icmp ult i32 %346, 256
  br i1 %347, label %348, label %349

348:                                              ; preds = %334
  br label %353

349:                                              ; preds = %334
  br label %350

350:                                              ; preds = %349
  %351 = load i8, i8* %21, align 1
  %352 = add i8 %351, 1
  store i8 %352, i8* %21, align 1
  br label %328

353:                                              ; preds = %348, %328
  %354 = load i32, i32* %7, align 4
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %22, align 1
  br label %356

356:                                              ; preds = %353, %324
  %357 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %358 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* @CLOCAL, align 4
  %361 = and i32 %359, %360
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %388

363:                                              ; preds = %356
  %364 = load i8, i8* @MCOR1_DCD, align 1
  %365 = zext i8 %364 to i32
  %366 = load i8, i8* %18, align 1
  %367 = zext i8 %366 to i32
  %368 = or i32 %367, %365
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %18, align 1
  %370 = load i8, i8* @MCOR2_DCD, align 1
  %371 = zext i8 %370 to i32
  %372 = load i8, i8* %19, align 1
  %373 = zext i8 %372 to i32
  %374 = or i32 %373, %371
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %19, align 1
  %376 = load i8, i8* @SRER_MODEM, align 1
  %377 = zext i8 %376 to i32
  %378 = load i8, i8* %16, align 1
  %379 = zext i8 %378 to i32
  %380 = or i32 %379, %377
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %16, align 1
  %382 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %383 = load %struct.stlport*, %struct.stlport** %3, align 8
  %384 = getelementptr inbounds %struct.stlport, %struct.stlport* %383, i32 0, i32 10
  %385 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = or i32 %386, %382
  store i32 %387, i32* %385, align 4
  br label %396

388:                                              ; preds = %356
  %389 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %390 = xor i32 %389, -1
  %391 = load %struct.stlport*, %struct.stlport** %3, align 8
  %392 = getelementptr inbounds %struct.stlport, %struct.stlport* %391, i32 0, i32 10
  %393 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, %390
  store i32 %395, i32* %393, align 4
  br label %396

396:                                              ; preds = %388, %363
  %397 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %398 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @IXON, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %430

403:                                              ; preds = %396
  %404 = load i8, i8* @COR2_TXIBE, align 1
  %405 = zext i8 %404 to i32
  %406 = load i8, i8* %10, align 1
  %407 = zext i8 %406 to i32
  %408 = or i32 %407, %405
  %409 = trunc i32 %408 to i8
  store i8 %409, i8* %10, align 1
  %410 = load i8, i8* @COR3_SCD12, align 1
  %411 = zext i8 %410 to i32
  %412 = load i8, i8* %11, align 1
  %413 = zext i8 %412 to i32
  %414 = or i32 %413, %411
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %11, align 1
  %416 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %417 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @IXANY, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %429

422:                                              ; preds = %403
  %423 = load i8, i8* @COR2_IXM, align 1
  %424 = zext i8 %423 to i32
  %425 = load i8, i8* %10, align 1
  %426 = zext i8 %425 to i32
  %427 = or i32 %426, %424
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %10, align 1
  br label %429

429:                                              ; preds = %422, %403
  br label %430

430:                                              ; preds = %429, %396
  %431 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %432 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @CRTSCTS, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %430
  %438 = load i8, i8* @COR2_CTSAE, align 1
  %439 = zext i8 %438 to i32
  %440 = load i8, i8* %10, align 1
  %441 = zext i8 %440 to i32
  %442 = or i32 %441, %439
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %10, align 1
  %444 = load i8, i8* @FIFO_RTSTHRESHOLD, align 1
  %445 = zext i8 %444 to i32
  %446 = load i8, i8* %18, align 1
  %447 = zext i8 %446 to i32
  %448 = or i32 %447, %445
  %449 = trunc i32 %448 to i8
  store i8 %449, i8* %18, align 1
  br label %450

450:                                              ; preds = %437, %430
  %451 = load %struct.stlport*, %struct.stlport** %3, align 8
  %452 = getelementptr inbounds %struct.stlport, %struct.stlport* %451, i32 0, i32 6
  %453 = load i32, i32* %452, align 4
  %454 = trunc i32 %453 to i8
  %455 = load %struct.stlport*, %struct.stlport** %3, align 8
  %456 = getelementptr inbounds %struct.stlport, %struct.stlport* %455, i32 0, i32 9
  %457 = load i32, i32* %456, align 8
  %458 = trunc i32 %457 to i8
  %459 = load %struct.stlport*, %struct.stlport** %3, align 8
  %460 = getelementptr inbounds %struct.stlport, %struct.stlport* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = trunc i64 %461 to i8
  %463 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8 zeroext %454, i8 zeroext %458, i8 zeroext %462)
  %464 = load i8, i8* %9, align 1
  %465 = load i8, i8* %10, align 1
  %466 = load i8, i8* %11, align 1
  %467 = load i8, i8* %12, align 1
  %468 = zext i8 %467 to i32
  %469 = load i8, i8* %13, align 1
  %470 = zext i8 %469 to i32
  %471 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %464, i8 zeroext %465, i8 zeroext %466, i32 %468, i32 %470)
  %472 = load i8, i8* %18, align 1
  %473 = load i8, i8* %19, align 1
  %474 = load i8, i8* %20, align 1
  %475 = load i8, i8* %16, align 1
  %476 = zext i8 %475 to i32
  %477 = load i8, i8* %17, align 1
  %478 = zext i8 %477 to i32
  %479 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %472, i8 zeroext %473, i8 zeroext %474, i32 %476, i32 %478)
  %480 = load i8, i8* %21, align 1
  %481 = load i8, i8* %22, align 1
  %482 = load i8, i8* %21, align 1
  %483 = load i8, i8* %22, align 1
  %484 = zext i8 %483 to i32
  %485 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %480, i8 zeroext %481, i8 zeroext %482, i32 %484)
  %486 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %487 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %486, i32 0, i32 2
  %488 = load i8*, i8** %487, align 8
  %489 = load i64, i64* @VSTART, align 8
  %490 = getelementptr inbounds i8, i8* %488, i64 %489
  %491 = load i8, i8* %490, align 1
  %492 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %493 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %492, i32 0, i32 2
  %494 = load i8*, i8** %493, align 8
  %495 = load i64, i64* @VSTOP, align 8
  %496 = getelementptr inbounds i8, i8* %494, i64 %495
  %497 = load i8, i8* %496, align 1
  %498 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %499 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %498, i32 0, i32 2
  %500 = load i8*, i8** %499, align 8
  %501 = load i64, i64* @VSTART, align 8
  %502 = getelementptr inbounds i8, i8* %500, i64 %501
  %503 = load i8, i8* %502, align 1
  %504 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %505 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %504, i32 0, i32 2
  %506 = load i8*, i8** %505, align 8
  %507 = load i64, i64* @VSTOP, align 8
  %508 = getelementptr inbounds i8, i8* %506, i64 %507
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i32
  %511 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %491, i8 zeroext %497, i8 zeroext %503, i32 %510)
  %512 = load i64, i64* %6, align 8
  %513 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %512)
  %514 = load %struct.stlport*, %struct.stlport** %3, align 8
  %515 = getelementptr inbounds %struct.stlport, %struct.stlport* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.stlport*, %struct.stlport** %3, align 8
  %518 = getelementptr inbounds %struct.stlport, %struct.stlport* %517, i32 0, i32 8
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @BRDENABLE(i64 %516, i32 %519)
  %521 = load %struct.stlport*, %struct.stlport** %3, align 8
  %522 = load i32, i32* @CAR, align 4
  %523 = load %struct.stlport*, %struct.stlport** %3, align 8
  %524 = getelementptr inbounds %struct.stlport, %struct.stlport* %523, i32 0, i32 6
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, 3
  %527 = trunc i32 %526 to i8
  %528 = call i32 @stl_cd1400setreg(%struct.stlport* %521, i32 %522, i8 zeroext %527)
  %529 = load %struct.stlport*, %struct.stlport** %3, align 8
  %530 = load i32, i32* @SRER, align 4
  %531 = call zeroext i8 @stl_cd1400getreg(%struct.stlport* %529, i32 %530)
  store i8 %531, i8* %15, align 1
  %532 = load %struct.stlport*, %struct.stlport** %3, align 8
  %533 = load i32, i32* @SRER, align 4
  %534 = call i32 @stl_cd1400setreg(%struct.stlport* %532, i32 %533, i8 zeroext 0)
  %535 = load %struct.stlport*, %struct.stlport** %3, align 8
  %536 = load i32, i32* @COR1, align 4
  %537 = load i8, i8* %9, align 1
  %538 = call i64 @stl_cd1400updatereg(%struct.stlport* %535, i32 %536, i8 zeroext %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %541

540:                                              ; preds = %450
  store i8 1, i8* %14, align 1
  br label %541

541:                                              ; preds = %540, %450
  %542 = load %struct.stlport*, %struct.stlport** %3, align 8
  %543 = load i32, i32* @COR2, align 4
  %544 = load i8, i8* %10, align 1
  %545 = call i64 @stl_cd1400updatereg(%struct.stlport* %542, i32 %543, i8 zeroext %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %548

547:                                              ; preds = %541
  store i8 1, i8* %14, align 1
  br label %548

548:                                              ; preds = %547, %541
  %549 = load %struct.stlport*, %struct.stlport** %3, align 8
  %550 = load i32, i32* @COR3, align 4
  %551 = load i8, i8* %11, align 1
  %552 = call i64 @stl_cd1400updatereg(%struct.stlport* %549, i32 %550, i8 zeroext %551)
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %548
  store i8 1, i8* %14, align 1
  br label %555

555:                                              ; preds = %554, %548
  %556 = load i8, i8* %14, align 1
  %557 = icmp ne i8 %556, 0
  br i1 %557, label %558, label %565

558:                                              ; preds = %555
  %559 = load %struct.stlport*, %struct.stlport** %3, align 8
  %560 = call i32 @stl_cd1400ccrwait(%struct.stlport* %559)
  %561 = load %struct.stlport*, %struct.stlport** %3, align 8
  %562 = load i32, i32* @CCR, align 4
  %563 = load i8, i8* @CCR_CORCHANGE, align 1
  %564 = call i32 @stl_cd1400setreg(%struct.stlport* %561, i32 %562, i8 zeroext %563)
  br label %565

565:                                              ; preds = %558, %555
  %566 = load %struct.stlport*, %struct.stlport** %3, align 8
  %567 = load i32, i32* @COR4, align 4
  %568 = load i8, i8* %12, align 1
  %569 = call i32 @stl_cd1400setreg(%struct.stlport* %566, i32 %567, i8 zeroext %568)
  %570 = load %struct.stlport*, %struct.stlport** %3, align 8
  %571 = load i32, i32* @COR5, align 4
  %572 = load i8, i8* %13, align 1
  %573 = call i32 @stl_cd1400setreg(%struct.stlport* %570, i32 %571, i8 zeroext %572)
  %574 = load %struct.stlport*, %struct.stlport** %3, align 8
  %575 = load i32, i32* @MCOR1, align 4
  %576 = load i8, i8* %18, align 1
  %577 = call i32 @stl_cd1400setreg(%struct.stlport* %574, i32 %575, i8 zeroext %576)
  %578 = load %struct.stlport*, %struct.stlport** %3, align 8
  %579 = load i32, i32* @MCOR2, align 4
  %580 = load i8, i8* %19, align 1
  %581 = call i32 @stl_cd1400setreg(%struct.stlport* %578, i32 %579, i8 zeroext %580)
  %582 = load i32, i32* %8, align 4
  %583 = icmp ugt i32 %582, 0
  br i1 %583, label %584, label %601

584:                                              ; preds = %565
  %585 = load %struct.stlport*, %struct.stlport** %3, align 8
  %586 = load i32, i32* @TCOR, align 4
  %587 = load i8, i8* %21, align 1
  %588 = call i32 @stl_cd1400setreg(%struct.stlport* %585, i32 %586, i8 zeroext %587)
  %589 = load %struct.stlport*, %struct.stlport** %3, align 8
  %590 = load i32, i32* @TBPR, align 4
  %591 = load i8, i8* %22, align 1
  %592 = call i32 @stl_cd1400setreg(%struct.stlport* %589, i32 %590, i8 zeroext %591)
  %593 = load %struct.stlport*, %struct.stlport** %3, align 8
  %594 = load i32, i32* @RCOR, align 4
  %595 = load i8, i8* %21, align 1
  %596 = call i32 @stl_cd1400setreg(%struct.stlport* %593, i32 %594, i8 zeroext %595)
  %597 = load %struct.stlport*, %struct.stlport** %3, align 8
  %598 = load i32, i32* @RBPR, align 4
  %599 = load i8, i8* %22, align 1
  %600 = call i32 @stl_cd1400setreg(%struct.stlport* %597, i32 %598, i8 zeroext %599)
  br label %601

601:                                              ; preds = %584, %565
  %602 = load %struct.stlport*, %struct.stlport** %3, align 8
  %603 = load i32, i32* @SCHR1, align 4
  %604 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %605 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %604, i32 0, i32 2
  %606 = load i8*, i8** %605, align 8
  %607 = load i64, i64* @VSTART, align 8
  %608 = getelementptr inbounds i8, i8* %606, i64 %607
  %609 = load i8, i8* %608, align 1
  %610 = call i32 @stl_cd1400setreg(%struct.stlport* %602, i32 %603, i8 zeroext %609)
  %611 = load %struct.stlport*, %struct.stlport** %3, align 8
  %612 = load i32, i32* @SCHR2, align 4
  %613 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %614 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %613, i32 0, i32 2
  %615 = load i8*, i8** %614, align 8
  %616 = load i64, i64* @VSTOP, align 8
  %617 = getelementptr inbounds i8, i8* %615, i64 %616
  %618 = load i8, i8* %617, align 1
  %619 = call i32 @stl_cd1400setreg(%struct.stlport* %611, i32 %612, i8 zeroext %618)
  %620 = load %struct.stlport*, %struct.stlport** %3, align 8
  %621 = load i32, i32* @SCHR3, align 4
  %622 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %623 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %622, i32 0, i32 2
  %624 = load i8*, i8** %623, align 8
  %625 = load i64, i64* @VSTART, align 8
  %626 = getelementptr inbounds i8, i8* %624, i64 %625
  %627 = load i8, i8* %626, align 1
  %628 = call i32 @stl_cd1400setreg(%struct.stlport* %620, i32 %621, i8 zeroext %627)
  %629 = load %struct.stlport*, %struct.stlport** %3, align 8
  %630 = load i32, i32* @SCHR4, align 4
  %631 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %632 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %631, i32 0, i32 2
  %633 = load i8*, i8** %632, align 8
  %634 = load i64, i64* @VSTOP, align 8
  %635 = getelementptr inbounds i8, i8* %633, i64 %634
  %636 = load i8, i8* %635, align 1
  %637 = call i32 @stl_cd1400setreg(%struct.stlport* %629, i32 %630, i8 zeroext %636)
  %638 = load %struct.stlport*, %struct.stlport** %3, align 8
  %639 = load i32, i32* @RTPR, align 4
  %640 = load i8, i8* %20, align 1
  %641 = call i32 @stl_cd1400setreg(%struct.stlport* %638, i32 %639, i8 zeroext %640)
  %642 = load %struct.stlport*, %struct.stlport** %3, align 8
  %643 = load i32, i32* @MSVR1, align 4
  %644 = call zeroext i8 @stl_cd1400getreg(%struct.stlport* %642, i32 %643)
  store i8 %644, i8* %18, align 1
  %645 = load i8, i8* %18, align 1
  %646 = zext i8 %645 to i32
  %647 = load i8, i8* @MSVR1_DCD, align 1
  %648 = zext i8 %647 to i32
  %649 = and i32 %646, %648
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %657

651:                                              ; preds = %601
  %652 = load i32, i32* @TIOCM_CD, align 4
  %653 = load %struct.stlport*, %struct.stlport** %3, align 8
  %654 = getelementptr inbounds %struct.stlport, %struct.stlport* %653, i32 0, i32 7
  %655 = load i32, i32* %654, align 8
  %656 = or i32 %655, %652
  store i32 %656, i32* %654, align 8
  br label %664

657:                                              ; preds = %601
  %658 = load i32, i32* @TIOCM_CD, align 4
  %659 = xor i32 %658, -1
  %660 = load %struct.stlport*, %struct.stlport** %3, align 8
  %661 = getelementptr inbounds %struct.stlport, %struct.stlport* %660, i32 0, i32 7
  %662 = load i32, i32* %661, align 8
  %663 = and i32 %662, %659
  store i32 %663, i32* %661, align 8
  br label %664

664:                                              ; preds = %657, %651
  %665 = load %struct.stlport*, %struct.stlport** %3, align 8
  %666 = load i32, i32* @SRER, align 4
  %667 = load i8, i8* %15, align 1
  %668 = zext i8 %667 to i32
  %669 = load i8, i8* %17, align 1
  %670 = zext i8 %669 to i32
  %671 = xor i32 %670, -1
  %672 = and i32 %668, %671
  %673 = load i8, i8* %16, align 1
  %674 = zext i8 %673 to i32
  %675 = or i32 %672, %674
  %676 = trunc i32 %675 to i8
  %677 = call i32 @stl_cd1400setreg(%struct.stlport* %665, i32 %666, i8 zeroext %676)
  %678 = load %struct.stlport*, %struct.stlport** %3, align 8
  %679 = getelementptr inbounds %struct.stlport, %struct.stlport* %678, i32 0, i32 0
  %680 = load i64, i64* %679, align 8
  %681 = call i32 @BRDDISABLE(i64 %680)
  %682 = load i64, i64* %6, align 8
  %683 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %682)
  br label %684

684:                                              ; preds = %664, %31
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8 zeroext, i8 zeroext, i8 zeroext, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i64, i32) #1

declare dso_local i32 @stl_cd1400setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @stl_cd1400getreg(%struct.stlport*, i32) #1

declare dso_local i64 @stl_cd1400updatereg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_cd1400ccrwait(%struct.stlport*) #1

declare dso_local i32 @BRDDISABLE(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
