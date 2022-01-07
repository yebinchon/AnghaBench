; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198setport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_sc26198setport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32 }
%struct.stlport = type { i64, i32, i32, i32, i32, i8, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ktermios = type { i32, i32, i8* }

@stl_brds = common dso_local global %struct.stlbrd** null, align 8
@IGNPAR = common dso_local global i32 0, align 4
@SR_RXPARITY = common dso_local global i32 0, align 4
@SR_RXFRAMING = common dso_local global i32 0, align 4
@SR_RXOVERRUN = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@SR_RXBREAK = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@MR1_CS5 = common dso_local global i8 0, align 1
@MR1_CS6 = common dso_local global i8 0, align 1
@MR1_CS7 = common dso_local global i8 0, align 1
@MR1_CS8 = common dso_local global i8 0, align 1
@CSTOPB = common dso_local global i32 0, align 4
@MR2_STOP2 = common dso_local global i8 0, align 1
@MR2_STOP1 = common dso_local global i8 0, align 1
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@MR1_PARENB = common dso_local global i8 0, align 1
@MR1_PARODD = common dso_local global i8 0, align 1
@MR1_PAREVEN = common dso_local global i8 0, align 1
@MR1_PARNONE = common dso_local global i8 0, align 1
@MR1_ERRBLOCK = common dso_local global i8 0, align 1
@MR2_RXFIFOHALF = common dso_local global i8 0, align 1
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
@STL_SC26198MAXBAUD = common dso_local global i32 0, align 4
@SC26198_NRBAUDS = common dso_local global i8 0, align 1
@sc26198_baudtable = common dso_local global i32* null, align 8
@CLOCAL = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@IOPR_DCDCOS = common dso_local global i8 0, align 1
@IR_IOPORT = common dso_local global i8 0, align 1
@IXON = common dso_local global i32 0, align 4
@MR0_SWFTX = common dso_local global i8 0, align 1
@MR0_SWFT = common dso_local global i8 0, align 1
@IR_XONXOFF = common dso_local global i8 0, align 1
@IXOFF = common dso_local global i32 0, align 4
@MR0_SWFRX = common dso_local global i8 0, align 1
@CRTSCTS = common dso_local global i32 0, align 4
@MR2_AUTOCTS = common dso_local global i8 0, align 1
@MR1_AUTORTS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [40 x i8] c"SETPORT: portnr=%d panelnr=%d brdnr=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"    mr0=%x mr1=%x mr2=%x clk=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"    iopr=%x imron=%x imroff=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"    schr1=%x schr2=%x schr3=%x schr4=%x\0A\00", align 1
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@brd_lock = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@MR0 = common dso_local global i32 0, align 4
@MR1 = common dso_local global i32 0, align 4
@SCCR = common dso_local global i32 0, align 4
@CR_RXERRBLOCK = common dso_local global i8 0, align 1
@MR2 = common dso_local global i32 0, align 4
@IOPIOR = common dso_local global i32 0, align 4
@IPR_CHANGEMASK = common dso_local global i8 0, align 1
@TXCSR = common dso_local global i32 0, align 4
@RXCSR = common dso_local global i32 0, align 4
@XONCR = common dso_local global i32 0, align 4
@XOFFCR = common dso_local global i32 0, align 4
@IPR = common dso_local global i32 0, align 4
@IPR_DCD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*, %struct.ktermios*)* @stl_sc26198setport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_sc26198setport(%struct.stlport* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.stlport*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.stlbrd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.stlport* %0, %struct.stlport** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %16 = load %struct.stlbrd**, %struct.stlbrd*** @stl_brds, align 8
  %17 = load %struct.stlport*, %struct.stlport** %3, align 8
  %18 = getelementptr inbounds %struct.stlport, %struct.stlport* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.stlbrd*, %struct.stlbrd** %16, i64 %19
  %21 = load %struct.stlbrd*, %struct.stlbrd** %20, align 8
  store %struct.stlbrd* %21, %struct.stlbrd** %5, align 8
  %22 = load %struct.stlbrd*, %struct.stlbrd** %5, align 8
  %23 = icmp eq %struct.stlbrd* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %605

25:                                               ; preds = %2
  %26 = load %struct.stlport*, %struct.stlport** %3, align 8
  %27 = getelementptr inbounds %struct.stlport, %struct.stlport* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IGNPAR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load i32, i32* @SR_RXPARITY, align 4
  %36 = load i32, i32* @SR_RXFRAMING, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SR_RXOVERRUN, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.stlport*, %struct.stlport** %3, align 8
  %41 = getelementptr inbounds %struct.stlport, %struct.stlport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %34, %25
  %45 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %46 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IGNBRK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @SR_RXBREAK, align 4
  %53 = load %struct.stlport*, %struct.stlport** %3, align 8
  %54 = getelementptr inbounds %struct.stlport, %struct.stlport* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load i32, i32* @SR_RXOVERRUN, align 4
  %59 = load %struct.stlport*, %struct.stlport** %3, align 8
  %60 = getelementptr inbounds %struct.stlport, %struct.stlport* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %62 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @INPCK, align 4
  %65 = load i32, i32* @PARMRK, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load i32, i32* @SR_RXPARITY, align 4
  %71 = load i32, i32* @SR_RXFRAMING, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.stlport*, %struct.stlport** %3, align 8
  %74 = getelementptr inbounds %struct.stlport, %struct.stlport* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %69, %57
  %78 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %79 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BRKINT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* @SR_RXBREAK, align 4
  %86 = load %struct.stlport*, %struct.stlport** %3, align 8
  %87 = getelementptr inbounds %struct.stlport, %struct.stlport* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %77
  %91 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %92 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @CSIZE, align 4
  %95 = and i32 %93, %94
  switch i32 %95, label %117 [
    i32 130, label %96
    i32 129, label %103
    i32 128, label %110
  ]

96:                                               ; preds = %90
  %97 = load i8, i8* @MR1_CS5, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %9, align 1
  %100 = zext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %9, align 1
  br label %124

103:                                              ; preds = %90
  %104 = load i8, i8* @MR1_CS6, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %9, align 1
  br label %124

110:                                              ; preds = %90
  %111 = load i8, i8* @MR1_CS7, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* %9, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %114, %112
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %9, align 1
  br label %124

117:                                              ; preds = %90
  %118 = load i8, i8* @MR1_CS8, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* %9, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %119
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %9, align 1
  br label %124

124:                                              ; preds = %117, %110, %103, %96
  %125 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %126 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @CSTOPB, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %124
  %132 = load i8, i8* @MR2_STOP2, align 1
  %133 = zext i8 %132 to i32
  %134 = load i8, i8* %10, align 1
  %135 = zext i8 %134 to i32
  %136 = or i32 %135, %133
  %137 = trunc i32 %136 to i8
  store i8 %137, i8* %10, align 1
  br label %145

138:                                              ; preds = %124
  %139 = load i8, i8* @MR2_STOP1, align 1
  %140 = zext i8 %139 to i32
  %141 = load i8, i8* %10, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %142, %140
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %10, align 1
  br label %145

145:                                              ; preds = %138, %131
  %146 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %147 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PARENB, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %180

152:                                              ; preds = %145
  %153 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %154 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @PARODD, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %152
  %160 = load i8, i8* @MR1_PARENB, align 1
  %161 = zext i8 %160 to i32
  %162 = load i8, i8* @MR1_PARODD, align 1
  %163 = zext i8 %162 to i32
  %164 = or i32 %161, %163
  %165 = load i8, i8* %9, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %166, %164
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %9, align 1
  br label %179

169:                                              ; preds = %152
  %170 = load i8, i8* @MR1_PARENB, align 1
  %171 = zext i8 %170 to i32
  %172 = load i8, i8* @MR1_PAREVEN, align 1
  %173 = zext i8 %172 to i32
  %174 = or i32 %171, %173
  %175 = load i8, i8* %9, align 1
  %176 = zext i8 %175 to i32
  %177 = or i32 %176, %174
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %9, align 1
  br label %179

179:                                              ; preds = %169, %159
  br label %187

180:                                              ; preds = %145
  %181 = load i8, i8* @MR1_PARNONE, align 1
  %182 = zext i8 %181 to i32
  %183 = load i8, i8* %9, align 1
  %184 = zext i8 %183 to i32
  %185 = or i32 %184, %182
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %9, align 1
  br label %187

187:                                              ; preds = %180, %179
  %188 = load i8, i8* @MR1_ERRBLOCK, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* %9, align 1
  %191 = zext i8 %190 to i32
  %192 = or i32 %191, %189
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %9, align 1
  %194 = load i8, i8* @MR2_RXFIFOHALF, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* %10, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %197, %195
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %10, align 1
  %200 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %201 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CBAUD, align 4
  %204 = and i32 %202, %203
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @CBAUDEX, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %230

209:                                              ; preds = %187
  %210 = load i32, i32* @CBAUDEX, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %7, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ult i32 %214, 1
  br i1 %215, label %219, label %216

216:                                              ; preds = %209
  %217 = load i32, i32* %7, align 4
  %218 = icmp ugt i32 %217, 4
  br i1 %218, label %219, label %226

219:                                              ; preds = %216, %209
  %220 = load i32, i32* @CBAUDEX, align 4
  %221 = xor i32 %220, -1
  %222 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %223 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %229

226:                                              ; preds = %216
  %227 = load i32, i32* %7, align 4
  %228 = add i32 %227, 15
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %226, %219
  br label %230

230:                                              ; preds = %229, %187
  %231 = load i32*, i32** @stl_baudrates, align 8
  %232 = load i32, i32* %7, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %7, align 4
  %236 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %237 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @CBAUD, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* @B38400, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %305

243:                                              ; preds = %230
  %244 = load %struct.stlport*, %struct.stlport** %3, align 8
  %245 = getelementptr inbounds %struct.stlport, %struct.stlport* %244, i32 0, i32 10
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %249 = and i32 %247, %248
  %250 = load i32, i32* @ASYNC_SPD_HI, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  store i32 57600, i32* %7, align 4
  br label %304

253:                                              ; preds = %243
  %254 = load %struct.stlport*, %struct.stlport** %3, align 8
  %255 = getelementptr inbounds %struct.stlport, %struct.stlport* %254, i32 0, i32 10
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %259 = and i32 %257, %258
  %260 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %253
  store i32 115200, i32* %7, align 4
  br label %303

263:                                              ; preds = %253
  %264 = load %struct.stlport*, %struct.stlport** %3, align 8
  %265 = getelementptr inbounds %struct.stlport, %struct.stlport* %264, i32 0, i32 10
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %269 = and i32 %267, %268
  %270 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %273

272:                                              ; preds = %263
  store i32 230400, i32* %7, align 4
  br label %302

273:                                              ; preds = %263
  %274 = load %struct.stlport*, %struct.stlport** %3, align 8
  %275 = getelementptr inbounds %struct.stlport, %struct.stlport* %274, i32 0, i32 10
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %279 = and i32 %277, %278
  %280 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %273
  store i32 460800, i32* %7, align 4
  br label %301

283:                                              ; preds = %273
  %284 = load %struct.stlport*, %struct.stlport** %3, align 8
  %285 = getelementptr inbounds %struct.stlport, %struct.stlport* %284, i32 0, i32 10
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %289 = and i32 %287, %288
  %290 = load i32, i32* @ASYNC_SPD_CUST, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %300

292:                                              ; preds = %283
  %293 = load %struct.stlport*, %struct.stlport** %3, align 8
  %294 = getelementptr inbounds %struct.stlport, %struct.stlport* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.stlport*, %struct.stlport** %3, align 8
  %297 = getelementptr inbounds %struct.stlport, %struct.stlport* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = udiv i32 %295, %298
  store i32 %299, i32* %7, align 4
  br label %300

300:                                              ; preds = %292, %283
  br label %301

301:                                              ; preds = %300, %282
  br label %302

302:                                              ; preds = %301, %272
  br label %303

303:                                              ; preds = %302, %262
  br label %304

304:                                              ; preds = %303, %252
  br label %305

305:                                              ; preds = %304, %230
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* @STL_SC26198MAXBAUD, align 4
  %308 = icmp ugt i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = load i32, i32* @STL_SC26198MAXBAUD, align 4
  store i32 %310, i32* %7, align 4
  br label %311

311:                                              ; preds = %309, %305
  %312 = load i32, i32* %7, align 4
  %313 = icmp ugt i32 %312, 0
  br i1 %313, label %314, label %335

314:                                              ; preds = %311
  store i8 0, i8* %11, align 1
  br label %315

315:                                              ; preds = %331, %314
  %316 = load i8, i8* %11, align 1
  %317 = zext i8 %316 to i32
  %318 = load i8, i8* @SC26198_NRBAUDS, align 1
  %319 = zext i8 %318 to i32
  %320 = icmp slt i32 %317, %319
  br i1 %320, label %321, label %334

321:                                              ; preds = %315
  %322 = load i32, i32* %7, align 4
  %323 = load i32*, i32** @sc26198_baudtable, align 8
  %324 = load i8, i8* %11, align 1
  %325 = zext i8 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = icmp ule i32 %322, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %321
  br label %334

330:                                              ; preds = %321
  br label %331

331:                                              ; preds = %330
  %332 = load i8, i8* %11, align 1
  %333 = add i8 %332, 1
  store i8 %333, i8* %11, align 1
  br label %315

334:                                              ; preds = %329, %315
  br label %335

335:                                              ; preds = %334, %311
  %336 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %337 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @CLOCAL, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %350

342:                                              ; preds = %335
  %343 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %344 = xor i32 %343, -1
  %345 = load %struct.stlport*, %struct.stlport** %3, align 8
  %346 = getelementptr inbounds %struct.stlport, %struct.stlport* %345, i32 0, i32 10
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, %344
  store i32 %349, i32* %347, align 4
  br label %369

350:                                              ; preds = %335
  %351 = load i8, i8* @IOPR_DCDCOS, align 1
  %352 = zext i8 %351 to i32
  %353 = load i8, i8* %14, align 1
  %354 = zext i8 %353 to i32
  %355 = or i32 %354, %352
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %14, align 1
  %357 = load i8, i8* @IR_IOPORT, align 1
  %358 = zext i8 %357 to i32
  %359 = load i8, i8* %12, align 1
  %360 = zext i8 %359 to i32
  %361 = or i32 %360, %358
  %362 = trunc i32 %361 to i8
  store i8 %362, i8* %12, align 1
  %363 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %364 = load %struct.stlport*, %struct.stlport** %3, align 8
  %365 = getelementptr inbounds %struct.stlport, %struct.stlport* %364, i32 0, i32 10
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %367, %363
  store i32 %368, i32* %366, align 4
  br label %369

369:                                              ; preds = %350, %342
  %370 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %371 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @IXON, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %392

376:                                              ; preds = %369
  %377 = load i8, i8* @MR0_SWFTX, align 1
  %378 = zext i8 %377 to i32
  %379 = load i8, i8* @MR0_SWFT, align 1
  %380 = zext i8 %379 to i32
  %381 = or i32 %378, %380
  %382 = load i8, i8* %8, align 1
  %383 = zext i8 %382 to i32
  %384 = or i32 %383, %381
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %8, align 1
  %386 = load i8, i8* @IR_XONXOFF, align 1
  %387 = zext i8 %386 to i32
  %388 = load i8, i8* %12, align 1
  %389 = zext i8 %388 to i32
  %390 = or i32 %389, %387
  %391 = trunc i32 %390 to i8
  store i8 %391, i8* %12, align 1
  br label %399

392:                                              ; preds = %369
  %393 = load i8, i8* @IR_XONXOFF, align 1
  %394 = zext i8 %393 to i32
  %395 = load i8, i8* %13, align 1
  %396 = zext i8 %395 to i32
  %397 = or i32 %396, %394
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %13, align 1
  br label %399

399:                                              ; preds = %392, %376
  %400 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %401 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @IXOFF, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %399
  %407 = load i8, i8* @MR0_SWFRX, align 1
  %408 = zext i8 %407 to i32
  %409 = load i8, i8* %8, align 1
  %410 = zext i8 %409 to i32
  %411 = or i32 %410, %408
  %412 = trunc i32 %411 to i8
  store i8 %412, i8* %8, align 1
  br label %413

413:                                              ; preds = %406, %399
  %414 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %415 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @CRTSCTS, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %433

420:                                              ; preds = %413
  %421 = load i8, i8* @MR2_AUTOCTS, align 1
  %422 = zext i8 %421 to i32
  %423 = load i8, i8* %10, align 1
  %424 = zext i8 %423 to i32
  %425 = or i32 %424, %422
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %10, align 1
  %427 = load i8, i8* @MR1_AUTORTS, align 1
  %428 = zext i8 %427 to i32
  %429 = load i8, i8* %9, align 1
  %430 = zext i8 %429 to i32
  %431 = or i32 %430, %428
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %9, align 1
  br label %433

433:                                              ; preds = %420, %413
  %434 = load %struct.stlport*, %struct.stlport** %3, align 8
  %435 = getelementptr inbounds %struct.stlport, %struct.stlport* %434, i32 0, i32 9
  %436 = load i32, i32* %435, align 8
  %437 = trunc i32 %436 to i8
  %438 = load %struct.stlport*, %struct.stlport** %3, align 8
  %439 = getelementptr inbounds %struct.stlport, %struct.stlport* %438, i32 0, i32 8
  %440 = load i32, i32* %439, align 4
  %441 = trunc i32 %440 to i8
  %442 = load %struct.stlport*, %struct.stlport** %3, align 8
  %443 = getelementptr inbounds %struct.stlport, %struct.stlport* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = trunc i64 %444 to i8
  %446 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8 zeroext %437, i8 zeroext %441, i8 zeroext %445)
  %447 = load i8, i8* %8, align 1
  %448 = load i8, i8* %9, align 1
  %449 = load i8, i8* %10, align 1
  %450 = load i8, i8* %11, align 1
  %451 = zext i8 %450 to i32
  %452 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %447, i8 zeroext %448, i8 zeroext %449, i32 %451)
  %453 = load i8, i8* %14, align 1
  %454 = load i8, i8* %12, align 1
  %455 = load i8, i8* %13, align 1
  %456 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %453, i8 zeroext %454, i8 zeroext %455)
  %457 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %458 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %457, i32 0, i32 2
  %459 = load i8*, i8** %458, align 8
  %460 = load i64, i64* @VSTART, align 8
  %461 = getelementptr inbounds i8, i8* %459, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %464 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %463, i32 0, i32 2
  %465 = load i8*, i8** %464, align 8
  %466 = load i64, i64* @VSTOP, align 8
  %467 = getelementptr inbounds i8, i8* %465, i64 %466
  %468 = load i8, i8* %467, align 1
  %469 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %470 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %469, i32 0, i32 2
  %471 = load i8*, i8** %470, align 8
  %472 = load i64, i64* @VSTART, align 8
  %473 = getelementptr inbounds i8, i8* %471, i64 %472
  %474 = load i8, i8* %473, align 1
  %475 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %476 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %475, i32 0, i32 2
  %477 = load i8*, i8** %476, align 8
  %478 = load i64, i64* @VSTOP, align 8
  %479 = getelementptr inbounds i8, i8* %477, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  %482 = call i32 (i8*, i8, i8, i8, ...) @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %462, i8 zeroext %468, i8 zeroext %474, i32 %481)
  %483 = load i64, i64* %6, align 8
  %484 = call i32 @spin_lock_irqsave(i32* @brd_lock, i64 %483)
  %485 = load %struct.stlport*, %struct.stlport** %3, align 8
  %486 = getelementptr inbounds %struct.stlport, %struct.stlport* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = load %struct.stlport*, %struct.stlport** %3, align 8
  %489 = getelementptr inbounds %struct.stlport, %struct.stlport* %488, i32 0, i32 7
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @BRDENABLE(i64 %487, i32 %490)
  %492 = load %struct.stlport*, %struct.stlport** %3, align 8
  %493 = load i32, i32* @IMR, align 4
  %494 = call i32 @stl_sc26198setreg(%struct.stlport* %492, i32 %493, i8 zeroext 0)
  %495 = load %struct.stlport*, %struct.stlport** %3, align 8
  %496 = load i32, i32* @MR0, align 4
  %497 = load i8, i8* %8, align 1
  %498 = call i32 @stl_sc26198updatereg(%struct.stlport* %495, i32 %496, i8 zeroext %497)
  %499 = load %struct.stlport*, %struct.stlport** %3, align 8
  %500 = load i32, i32* @MR1, align 4
  %501 = load i8, i8* %9, align 1
  %502 = call i32 @stl_sc26198updatereg(%struct.stlport* %499, i32 %500, i8 zeroext %501)
  %503 = load %struct.stlport*, %struct.stlport** %3, align 8
  %504 = load i32, i32* @SCCR, align 4
  %505 = load i8, i8* @CR_RXERRBLOCK, align 1
  %506 = call i32 @stl_sc26198setreg(%struct.stlport* %503, i32 %504, i8 zeroext %505)
  %507 = load %struct.stlport*, %struct.stlport** %3, align 8
  %508 = load i32, i32* @MR2, align 4
  %509 = load i8, i8* %10, align 1
  %510 = call i32 @stl_sc26198updatereg(%struct.stlport* %507, i32 %508, i8 zeroext %509)
  %511 = load %struct.stlport*, %struct.stlport** %3, align 8
  %512 = load i32, i32* @IOPIOR, align 4
  %513 = load %struct.stlport*, %struct.stlport** %3, align 8
  %514 = load i32, i32* @IOPIOR, align 4
  %515 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %513, i32 %514)
  %516 = zext i8 %515 to i32
  %517 = load i8, i8* @IPR_CHANGEMASK, align 1
  %518 = zext i8 %517 to i32
  %519 = xor i32 %518, -1
  %520 = and i32 %516, %519
  %521 = load i8, i8* %14, align 1
  %522 = zext i8 %521 to i32
  %523 = or i32 %520, %522
  %524 = trunc i32 %523 to i8
  %525 = call i32 @stl_sc26198updatereg(%struct.stlport* %511, i32 %512, i8 zeroext %524)
  %526 = load i32, i32* %7, align 4
  %527 = icmp ugt i32 %526, 0
  br i1 %527, label %528, label %537

528:                                              ; preds = %433
  %529 = load %struct.stlport*, %struct.stlport** %3, align 8
  %530 = load i32, i32* @TXCSR, align 4
  %531 = load i8, i8* %11, align 1
  %532 = call i32 @stl_sc26198setreg(%struct.stlport* %529, i32 %530, i8 zeroext %531)
  %533 = load %struct.stlport*, %struct.stlport** %3, align 8
  %534 = load i32, i32* @RXCSR, align 4
  %535 = load i8, i8* %11, align 1
  %536 = call i32 @stl_sc26198setreg(%struct.stlport* %533, i32 %534, i8 zeroext %535)
  br label %537

537:                                              ; preds = %528, %433
  %538 = load %struct.stlport*, %struct.stlport** %3, align 8
  %539 = load i32, i32* @XONCR, align 4
  %540 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %541 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %540, i32 0, i32 2
  %542 = load i8*, i8** %541, align 8
  %543 = load i64, i64* @VSTART, align 8
  %544 = getelementptr inbounds i8, i8* %542, i64 %543
  %545 = load i8, i8* %544, align 1
  %546 = call i32 @stl_sc26198setreg(%struct.stlport* %538, i32 %539, i8 zeroext %545)
  %547 = load %struct.stlport*, %struct.stlport** %3, align 8
  %548 = load i32, i32* @XOFFCR, align 4
  %549 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %550 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %549, i32 0, i32 2
  %551 = load i8*, i8** %550, align 8
  %552 = load i64, i64* @VSTOP, align 8
  %553 = getelementptr inbounds i8, i8* %551, i64 %552
  %554 = load i8, i8* %553, align 1
  %555 = call i32 @stl_sc26198setreg(%struct.stlport* %547, i32 %548, i8 zeroext %554)
  %556 = load %struct.stlport*, %struct.stlport** %3, align 8
  %557 = load i32, i32* @IPR, align 4
  %558 = call zeroext i8 @stl_sc26198getreg(%struct.stlport* %556, i32 %557)
  store i8 %558, i8* %15, align 1
  %559 = load i8, i8* %15, align 1
  %560 = zext i8 %559 to i32
  %561 = load i8, i8* @IPR_DCD, align 1
  %562 = zext i8 %561 to i32
  %563 = and i32 %560, %562
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %565, label %572

565:                                              ; preds = %537
  %566 = load i32, i32* @TIOCM_CD, align 4
  %567 = xor i32 %566, -1
  %568 = load %struct.stlport*, %struct.stlport** %3, align 8
  %569 = getelementptr inbounds %struct.stlport, %struct.stlport* %568, i32 0, i32 6
  %570 = load i32, i32* %569, align 4
  %571 = and i32 %570, %567
  store i32 %571, i32* %569, align 4
  br label %578

572:                                              ; preds = %537
  %573 = load i32, i32* @TIOCM_CD, align 4
  %574 = load %struct.stlport*, %struct.stlport** %3, align 8
  %575 = getelementptr inbounds %struct.stlport, %struct.stlport* %574, i32 0, i32 6
  %576 = load i32, i32* %575, align 4
  %577 = or i32 %576, %573
  store i32 %577, i32* %575, align 4
  br label %578

578:                                              ; preds = %572, %565
  %579 = load %struct.stlport*, %struct.stlport** %3, align 8
  %580 = getelementptr inbounds %struct.stlport, %struct.stlport* %579, i32 0, i32 5
  %581 = load i8, i8* %580, align 8
  %582 = zext i8 %581 to i32
  %583 = load i8, i8* %13, align 1
  %584 = zext i8 %583 to i32
  %585 = xor i32 %584, -1
  %586 = and i32 %582, %585
  %587 = load i8, i8* %12, align 1
  %588 = zext i8 %587 to i32
  %589 = or i32 %586, %588
  %590 = trunc i32 %589 to i8
  %591 = load %struct.stlport*, %struct.stlport** %3, align 8
  %592 = getelementptr inbounds %struct.stlport, %struct.stlport* %591, i32 0, i32 5
  store i8 %590, i8* %592, align 8
  %593 = load %struct.stlport*, %struct.stlport** %3, align 8
  %594 = load i32, i32* @IMR, align 4
  %595 = load %struct.stlport*, %struct.stlport** %3, align 8
  %596 = getelementptr inbounds %struct.stlport, %struct.stlport* %595, i32 0, i32 5
  %597 = load i8, i8* %596, align 8
  %598 = call i32 @stl_sc26198setreg(%struct.stlport* %593, i32 %594, i8 zeroext %597)
  %599 = load %struct.stlport*, %struct.stlport** %3, align 8
  %600 = getelementptr inbounds %struct.stlport, %struct.stlport* %599, i32 0, i32 0
  %601 = load i64, i64* %600, align 8
  %602 = call i32 @BRDDISABLE(i64 %601)
  %603 = load i64, i64* %6, align 8
  %604 = call i32 @spin_unlock_irqrestore(i32* @brd_lock, i64 %603)
  br label %605

605:                                              ; preds = %578, %24
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8 zeroext, i8 zeroext, i8 zeroext, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BRDENABLE(i64, i32) #1

declare dso_local i32 @stl_sc26198setreg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local i32 @stl_sc26198updatereg(%struct.stlport*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @stl_sc26198getreg(%struct.stlport*, i32) #1

declare dso_local i32 @BRDDISABLE(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
