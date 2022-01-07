; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_algo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_algo.c_stb0899_dvbs2_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, i32, %struct.TYPE_2__*, %struct.stb0899_internal }
%struct.TYPE_2__ = type { i32 (i32*, i64*)*, i32 (i32*, i64)* }
%struct.stb0899_internal = type { i32, i32, i64, i32, i32, i32, i32, i64 }

@STB0899_TSTRES = common dso_local global i32 0, align 4
@FRESRS = common dso_local global i32 0, align 4
@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@IF_AGC_CNTRL = common dso_local global i32 0, align 4
@IF_LOOP_GAIN = common dso_local global i32 0, align 4
@IF_AGC_REF = common dso_local global i32 0, align 4
@STB0899_BASE_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_IF_AGC_CNTRL = common dso_local global i32 0, align 4
@IF_AGC_CNTRL2 = common dso_local global i32 0, align 4
@IF_AGC_DUMP_PER = common dso_local global i32 0, align 4
@STB0899_BASE_IF_AGC_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_IF_AGC_CNTRL2 = common dso_local global i32 0, align 4
@DMD_CNTRL2 = common dso_local global i32 0, align 4
@SPECTRUM_INVERT = common dso_local global i32 0, align 4
@STB0899_BASE_DMD_CNTRL2 = common dso_local global i32 0, align 4
@STB0899_OFF0_DMD_CNTRL2 = common dso_local global i32 0, align 4
@DVBS2_DEMOD_LOCK = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"------------> DVB-S2 DEMOD LOCK !\00", align 1
@DVBS2_FEC_LOCK = common dso_local global i64 0, align 8
@CRL_FREQ = common dso_local global i32 0, align 4
@CRL_NOM_FREQ = common dso_local global i32 0, align 4
@STB0899_BASE_CRL_NOM_FREQ = common dso_local global i32 0, align 4
@STB0899_OFF0_CRL_NOM_FREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"----------------> DVB-S2 FEC Lock !\00", align 1
@UWP_STAT2 = common dso_local global i32 0, align 4
@UWP_DECODE_MOD = common dso_local global i32 0, align 4
@STB0899_QPSK_23 = common dso_local global i32 0, align 4
@STB0899_QPSK_910 = common dso_local global i32 0, align 4
@CSM_CNTRL1 = common dso_local global i32 0, align 4
@CSM_TWO_PASS = common dso_local global i32 0, align 4
@STB0899_BASE_CSM_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_OFF0_CSM_CNTRL1 = common dso_local global i32 0, align 4
@STB0899_QPSK_12 = common dso_local global i32 0, align 4
@STB0899_QPSK_35 = common dso_local global i32 0, align 4
@EQ_CNTRL = common dso_local global i32 0, align 4
@EQ_DISABLE_UPDATE = common dso_local global i32 0, align 4
@STB0899_BASE_EQ_CNTRL = common dso_local global i32 0, align 4
@STB0899_OFF0_EQ_CNTRL = common dso_local global i32 0, align 4
@EQ_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb0899_dvbs2_algo(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 3
  store %struct.stb0899_internal* %14, %struct.stb0899_internal** %3, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %16 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 2000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 5000, i32* %6, align 4
  store i32 350, i32* %7, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %22 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sle i32 %23, 5000000
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 2500, i32* %6, align 4
  store i32 170, i32* %7, align 4
  br label %55

26:                                               ; preds = %20
  %27 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %28 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sle i32 %29, 10000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1500, i32* %6, align 4
  store i32 80, i32* %7, align 4
  br label %54

32:                                               ; preds = %26
  %33 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %34 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %35, 15000000
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 500, i32* %6, align 4
  store i32 50, i32* %7, align 4
  br label %53

38:                                               ; preds = %32
  %39 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %40 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sle i32 %41, 20000000
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 300, i32* %6, align 4
  store i32 30, i32* %7, align 4
  br label %52

44:                                               ; preds = %38
  %45 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %46 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %47, 25000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 250, i32* %6, align 4
  store i32 25, i32* %7, align 4
  br label %51

50:                                               ; preds = %44
  store i32 150, i32* %6, align 4
  store i32 20, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %49
  br label %52

52:                                               ; preds = %51, %43
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %31
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %19
  %57 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %58 = load i32, i32* @STB0899_TSTRES, align 4
  %59 = call i8* @stb0899_read_reg(%struct.stb0899_state* %57, i32 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i32, i32* @FRESRS, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @STB0899_SETFIELD_VAL(i32 %60, i8* %61, i32 1)
  %63 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %64 = load i32, i32* @STB0899_TSTRES, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @stb0899_write_reg(%struct.stb0899_state* %63, i32 %64, i8* %65)
  %67 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %68 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %67, i32 0, i32 1
  %69 = call i32 @stb0899_i2c_gate_ctrl(i32* %68, i32 1)
  %70 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %71 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32 (i32*, i64)*, i32 (i32*, i64)** %73, align 8
  %75 = icmp ne i32 (i32*, i64)* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %56
  %77 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %78 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32 (i32*, i64)*, i32 (i32*, i64)** %80, align 8
  %82 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %83 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %82, i32 0, i32 1
  %84 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %85 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = call i32 %81(i32* %83, i64 %86)
  br label %88

88:                                               ; preds = %76, %56
  %89 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %90 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %92, align 8
  %94 = icmp ne i32 (i32*, i64*)* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %97 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %99, align 8
  %101 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %102 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %101, i32 0, i32 1
  %103 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %104 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %103, i32 0, i32 7
  %105 = call i32 %100(i32* %102, i64* %104)
  br label %106

106:                                              ; preds = %95, %88
  %107 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %108 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %107, i32 0, i32 1
  %109 = call i32 @stb0899_i2c_gate_ctrl(i32* %108, i32 0)
  %110 = load i32, i32* @STB0899_S2DEMOD, align 4
  %111 = load i32, i32* @IF_AGC_CNTRL, align 4
  %112 = call i8* @STB0899_READ_S2REG(i32 %110, i32 %111)
  store i8* %112, i8** %11, align 8
  %113 = load i32, i32* @IF_LOOP_GAIN, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @STB0899_SETFIELD_VAL(i32 %113, i8* %114, i32 4)
  %116 = load i32, i32* @IF_AGC_REF, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @STB0899_SETFIELD_VAL(i32 %116, i8* %117, i32 32)
  %119 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %120 = load i32, i32* @STB0899_S2DEMOD, align 4
  %121 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL, align 4
  %122 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL, align 4
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %119, i32 %120, i32 %121, i32 %122, i8* %123)
  %125 = load i32, i32* @STB0899_S2DEMOD, align 4
  %126 = load i32, i32* @IF_AGC_CNTRL2, align 4
  %127 = call i8* @STB0899_READ_S2REG(i32 %125, i32 %126)
  store i8* %127, i8** %11, align 8
  %128 = load i32, i32* @IF_AGC_DUMP_PER, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @STB0899_SETFIELD_VAL(i32 %128, i8* %129, i32 0)
  %131 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %132 = load i32, i32* @STB0899_S2DEMOD, align 4
  %133 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL2, align 4
  %134 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL2, align 4
  %135 = load i8*, i8** %11, align 8
  %136 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %131, i32 %132, i32 %133, i32 %134, i8* %135)
  %137 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %138 = call i32 @stb0899_dvbs2_init_calc(%struct.stb0899_state* %137)
  %139 = load i32, i32* @STB0899_S2DEMOD, align 4
  %140 = load i32, i32* @DMD_CNTRL2, align 4
  %141 = call i8* @STB0899_READ_S2REG(i32 %139, i32 %140)
  store i8* %141, i8** %11, align 8
  %142 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %143 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %157 [
    i32 129, label %145
    i32 128, label %149
    i32 130, label %153
  ]

145:                                              ; preds = %106
  %146 = load i32, i32* @SPECTRUM_INVERT, align 4
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @STB0899_SETFIELD_VAL(i32 %146, i8* %147, i32 0)
  br label %157

149:                                              ; preds = %106
  %150 = load i32, i32* @SPECTRUM_INVERT, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 @STB0899_SETFIELD_VAL(i32 %150, i8* %151, i32 1)
  br label %157

153:                                              ; preds = %106
  %154 = load i32, i32* @SPECTRUM_INVERT, align 4
  %155 = load i8*, i8** %11, align 8
  %156 = call i32 @STB0899_SETFIELD_VAL(i32 %154, i8* %155, i32 1)
  br label %157

157:                                              ; preds = %106, %153, %149, %145
  %158 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %159 = load i32, i32* @STB0899_S2DEMOD, align 4
  %160 = load i32, i32* @STB0899_BASE_DMD_CNTRL2, align 4
  %161 = load i32, i32* @STB0899_OFF0_DMD_CNTRL2, align 4
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %158, i32 %159, i32 %160, i32 %161, i8* %162)
  %164 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %165 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %164)
  %166 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i8* @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state* %166, i32 %167)
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %171 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %170, i32 0, i32 2
  store i64 %169, i64* %171, align 8
  %172 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %173 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @DVBS2_DEMOD_LOCK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %229

177:                                              ; preds = %157
  %178 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %179 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @FE_DEBUG, align 4
  %182 = call i32 @dprintk(i32 %180, i32 %181, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %183 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %183, i32 %184)
  %186 = ptrtoint i8* %185 to i64
  %187 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %188 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %200, %177
  %190 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %191 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* %10, align 4
  %197 = icmp slt i32 %196, 3
  br label %198

198:                                              ; preds = %195, %189
  %199 = phi i1 [ false, %189 ], [ %197, %195 ]
  br i1 %199, label %200, label %228

200:                                              ; preds = %198
  %201 = load i32, i32* @STB0899_S2DEMOD, align 4
  %202 = load i32, i32* @CRL_FREQ, align 4
  %203 = call i8* @STB0899_READ_S2REG(i32 %201, i32 %202)
  %204 = ptrtoint i8* %203 to i32
  store i32 %204, i32* %5, align 4
  %205 = load i32, i32* @STB0899_S2DEMOD, align 4
  %206 = load i32, i32* @CRL_NOM_FREQ, align 4
  %207 = call i8* @STB0899_READ_S2REG(i32 %205, i32 %206)
  store i8* %207, i8** %11, align 8
  %208 = load i32, i32* @CRL_NOM_FREQ, align 4
  %209 = load i8*, i8** %11, align 8
  %210 = load i32, i32* %5, align 4
  %211 = call i32 @STB0899_SETFIELD_VAL(i32 %208, i8* %209, i32 %210)
  %212 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %213 = load i32, i32* @STB0899_S2DEMOD, align 4
  %214 = load i32, i32* @STB0899_BASE_CRL_NOM_FREQ, align 4
  %215 = load i32, i32* @STB0899_OFF0_CRL_NOM_FREQ, align 4
  %216 = load i8*, i8** %11, align 8
  %217 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %212, i32 %213, i32 %214, i32 %215, i8* %216)
  %218 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %219 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %218)
  %220 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %220, i32 %221)
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %225 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %224, i32 0, i32 2
  store i64 %223, i64* %225, align 8
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %189

228:                                              ; preds = %198
  br label %229

229:                                              ; preds = %228, %157
  %230 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %231 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %322

235:                                              ; preds = %229
  %236 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %237 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 130
  br i1 %239, label %240, label %321

240:                                              ; preds = %235
  %241 = load i32, i32* @STB0899_S2DEMOD, align 4
  %242 = load i32, i32* @DMD_CNTRL2, align 4
  %243 = call i8* @STB0899_READ_S2REG(i32 %241, i32 %242)
  store i8* %243, i8** %11, align 8
  %244 = load i32, i32* @SPECTRUM_INVERT, align 4
  %245 = load i8*, i8** %11, align 8
  %246 = call i32 @STB0899_GETFIELD(i32 %244, i8* %245)
  store i32 %246, i32* %9, align 4
  %247 = load i32, i32* @SPECTRUM_INVERT, align 4
  %248 = load i8*, i8** %11, align 8
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = call i32 @STB0899_SETFIELD_VAL(i32 %247, i8* %248, i32 %252)
  %254 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %255 = load i32, i32* @STB0899_S2DEMOD, align 4
  %256 = load i32, i32* @STB0899_BASE_DMD_CNTRL2, align 4
  %257 = load i32, i32* @STB0899_OFF0_DMD_CNTRL2, align 4
  %258 = load i8*, i8** %11, align 8
  %259 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %254, i32 %255, i32 %256, i32 %257, i8* %258)
  %260 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %261 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %260)
  %262 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i8* @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state* %262, i32 %263)
  %265 = ptrtoint i8* %264 to i64
  %266 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %267 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %266, i32 0, i32 2
  store i64 %265, i64* %267, align 8
  %268 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %269 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @DVBS2_DEMOD_LOCK, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %320

273:                                              ; preds = %240
  store i32 0, i32* %10, align 4
  %274 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %275 = load i32, i32* %7, align 4
  %276 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %274, i32 %275)
  %277 = ptrtoint i8* %276 to i64
  %278 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %279 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %278, i32 0, i32 2
  store i64 %277, i64* %279, align 8
  br label %280

280:                                              ; preds = %291, %273
  %281 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %282 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load i32, i32* %10, align 4
  %288 = icmp slt i32 %287, 3
  br label %289

289:                                              ; preds = %286, %280
  %290 = phi i1 [ false, %280 ], [ %288, %286 ]
  br i1 %290, label %291, label %319

291:                                              ; preds = %289
  %292 = load i32, i32* @STB0899_S2DEMOD, align 4
  %293 = load i32, i32* @CRL_FREQ, align 4
  %294 = call i8* @STB0899_READ_S2REG(i32 %292, i32 %293)
  %295 = ptrtoint i8* %294 to i32
  store i32 %295, i32* %5, align 4
  %296 = load i32, i32* @STB0899_S2DEMOD, align 4
  %297 = load i32, i32* @CRL_NOM_FREQ, align 4
  %298 = call i8* @STB0899_READ_S2REG(i32 %296, i32 %297)
  store i8* %298, i8** %11, align 8
  %299 = load i32, i32* @CRL_NOM_FREQ, align 4
  %300 = load i8*, i8** %11, align 8
  %301 = load i32, i32* %5, align 4
  %302 = call i32 @STB0899_SETFIELD_VAL(i32 %299, i8* %300, i32 %301)
  %303 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %304 = load i32, i32* @STB0899_S2DEMOD, align 4
  %305 = load i32, i32* @STB0899_BASE_CRL_NOM_FREQ, align 4
  %306 = load i32, i32* @STB0899_OFF0_CRL_NOM_FREQ, align 4
  %307 = load i8*, i8** %11, align 8
  %308 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %303, i32 %304, i32 %305, i32 %306, i8* %307)
  %309 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %310 = call i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state* %309)
  %311 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %312 = load i32, i32* %6, align 4
  %313 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %311, i32 %312)
  %314 = ptrtoint i8* %313 to i64
  %315 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %316 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %315, i32 0, i32 2
  store i64 %314, i64* %316, align 8
  %317 = load i32, i32* %10, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %10, align 4
  br label %280

319:                                              ; preds = %289
  br label %320

320:                                              ; preds = %319, %240
  br label %321

321:                                              ; preds = %320, %235
  br label %322

322:                                              ; preds = %321, %229
  %323 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %324 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %559

328:                                              ; preds = %322
  %329 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %330 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @FE_DEBUG, align 4
  %333 = call i32 @dprintk(i32 %331, i32 %332, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %334 = load i32, i32* @STB0899_S2DEMOD, align 4
  %335 = load i32, i32* @UWP_STAT2, align 4
  %336 = call i8* @STB0899_READ_S2REG(i32 %334, i32 %335)
  store i8* %336, i8** %11, align 8
  %337 = load i32, i32* @UWP_DECODE_MOD, align 4
  %338 = load i8*, i8** %11, align 8
  %339 = call i32 @STB0899_GETFIELD(i32 %337, i8* %338)
  %340 = ashr i32 %339, 2
  store i32 %340, i32* %4, align 4
  %341 = load i32, i32* @UWP_DECODE_MOD, align 4
  %342 = load i8*, i8** %11, align 8
  %343 = call i32 @STB0899_GETFIELD(i32 %341, i8* %342)
  %344 = and i32 %343, 1
  store i32 %344, i32* %8, align 4
  %345 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %346 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = mul nsw i32 10, %347
  %349 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %350 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sdiv i32 %351, 10
  %353 = sdiv i32 %348, %352
  %354 = icmp sle i32 %353, 410
  br i1 %354, label %355, label %420

355:                                              ; preds = %328
  %356 = load i32, i32* @STB0899_QPSK_23, align 4
  %357 = load i32, i32* %4, align 4
  %358 = load i32, i32* @STB0899_QPSK_910, align 4
  %359 = call i64 @INRANGE(i32 %356, i32 %357, i32 %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %420

361:                                              ; preds = %355
  %362 = load i32, i32* %8, align 4
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %420

364:                                              ; preds = %361
  %365 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %366 = load i32, i32* %8, align 4
  %367 = load i32, i32* %4, align 4
  %368 = call i32 @stb0899_dvbs2_init_csm(%struct.stb0899_state* %365, i32 %366, i32 %367)
  %369 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %370 = load i32, i32* %7, align 4
  %371 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %369, i32 %370)
  %372 = ptrtoint i8* %371 to i64
  %373 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %374 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %373, i32 0, i32 2
  store i64 %372, i64* %374, align 8
  store i32 0, i32* %10, align 4
  br label %375

375:                                              ; preds = %386, %364
  %376 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %377 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @DVBS2_FEC_LOCK, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %384

381:                                              ; preds = %375
  %382 = load i32, i32* %10, align 4
  %383 = icmp slt i32 %382, 3
  br label %384

384:                                              ; preds = %381, %375
  %385 = phi i1 [ false, %375 ], [ %383, %381 ]
  br i1 %385, label %386, label %419

386:                                              ; preds = %384
  %387 = load i32, i32* @STB0899_S2DEMOD, align 4
  %388 = load i32, i32* @CSM_CNTRL1, align 4
  %389 = call i8* @STB0899_READ_S2REG(i32 %387, i32 %388)
  store i8* %389, i8** %12, align 8
  %390 = load i32, i32* @CSM_TWO_PASS, align 4
  %391 = load i8*, i8** %12, align 8
  %392 = call i32 @STB0899_SETFIELD_VAL(i32 %390, i8* %391, i32 1)
  %393 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %394 = load i32, i32* @STB0899_S2DEMOD, align 4
  %395 = load i32, i32* @STB0899_BASE_CSM_CNTRL1, align 4
  %396 = load i32, i32* @STB0899_OFF0_CSM_CNTRL1, align 4
  %397 = load i8*, i8** %12, align 8
  %398 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %393, i32 %394, i32 %395, i32 %396, i8* %397)
  %399 = load i32, i32* @STB0899_S2DEMOD, align 4
  %400 = load i32, i32* @CSM_CNTRL1, align 4
  %401 = call i8* @STB0899_READ_S2REG(i32 %399, i32 %400)
  store i8* %401, i8** %12, align 8
  %402 = load i32, i32* @CSM_TWO_PASS, align 4
  %403 = load i8*, i8** %12, align 8
  %404 = call i32 @STB0899_SETFIELD_VAL(i32 %402, i8* %403, i32 0)
  %405 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %406 = load i32, i32* @STB0899_S2DEMOD, align 4
  %407 = load i32, i32* @STB0899_BASE_CSM_CNTRL1, align 4
  %408 = load i32, i32* @STB0899_OFF0_CSM_CNTRL1, align 4
  %409 = load i8*, i8** %12, align 8
  %410 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %405, i32 %406, i32 %407, i32 %408, i8* %409)
  %411 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %412 = load i32, i32* %7, align 4
  %413 = call i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state* %411, i32 %412)
  %414 = ptrtoint i8* %413 to i64
  %415 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %416 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %415, i32 0, i32 2
  store i64 %414, i64* %416, align 8
  %417 = load i32, i32* %10, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %10, align 4
  br label %375

419:                                              ; preds = %384
  br label %420

420:                                              ; preds = %419, %361, %355, %328
  %421 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %422 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %421, i32 0, i32 3
  %423 = load i32, i32* %422, align 8
  %424 = mul nsw i32 10, %423
  %425 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %426 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = sdiv i32 %427, 10
  %429 = sdiv i32 %424, %428
  %430 = icmp sle i32 %429, 410
  br i1 %430, label %431, label %453

431:                                              ; preds = %420
  %432 = load i32, i32* @STB0899_QPSK_12, align 4
  %433 = load i32, i32* %4, align 4
  %434 = load i32, i32* @STB0899_QPSK_35, align 4
  %435 = call i64 @INRANGE(i32 %432, i32 %433, i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %453

437:                                              ; preds = %431
  %438 = load i32, i32* %8, align 4
  %439 = icmp eq i32 %438, 1
  br i1 %439, label %440, label %453

440:                                              ; preds = %437
  %441 = load i32, i32* @STB0899_S2DEMOD, align 4
  %442 = load i32, i32* @EQ_CNTRL, align 4
  %443 = call i8* @STB0899_READ_S2REG(i32 %441, i32 %442)
  store i8* %443, i8** %11, align 8
  %444 = load i32, i32* @EQ_DISABLE_UPDATE, align 4
  %445 = load i8*, i8** %11, align 8
  %446 = call i32 @STB0899_SETFIELD_VAL(i32 %444, i8* %445, i32 1)
  %447 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %448 = load i32, i32* @STB0899_S2DEMOD, align 4
  %449 = load i32, i32* @STB0899_BASE_EQ_CNTRL, align 4
  %450 = load i32, i32* @STB0899_OFF0_EQ_CNTRL, align 4
  %451 = load i8*, i8** %11, align 8
  %452 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %447, i32 %448, i32 %449, i32 %450, i8* %451)
  br label %453

453:                                              ; preds = %440, %437, %431, %420
  %454 = load i32, i32* @STB0899_S2DEMOD, align 4
  %455 = load i32, i32* @EQ_CNTRL, align 4
  %456 = call i8* @STB0899_READ_S2REG(i32 %454, i32 %455)
  store i8* %456, i8** %11, align 8
  %457 = load i32, i32* @EQ_SHIFT, align 4
  %458 = load i8*, i8** %11, align 8
  %459 = call i32 @STB0899_SETFIELD_VAL(i32 %457, i8* %458, i32 2)
  %460 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %461 = load i32, i32* @STB0899_S2DEMOD, align 4
  %462 = load i32, i32* @STB0899_BASE_EQ_CNTRL, align 4
  %463 = load i32, i32* @STB0899_OFF0_EQ_CNTRL, align 4
  %464 = load i8*, i8** %11, align 8
  %465 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %460, i32 %461, i32 %462, i32 %463, i8* %464)
  %466 = load i32, i32* @STB0899_S2DEMOD, align 4
  %467 = load i32, i32* @CRL_FREQ, align 4
  %468 = call i8* @STB0899_READ_S2REG(i32 %466, i32 %467)
  %469 = ptrtoint i8* %468 to i32
  store i32 %469, i32* %5, align 4
  %470 = load i32, i32* %5, align 4
  %471 = sdiv i32 %470, 1073741
  store i32 %471, i32* %5, align 4
  %472 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %473 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 8
  %475 = sdiv i32 %474, 1000000
  %476 = load i32, i32* %5, align 4
  %477 = mul nsw i32 %476, %475
  store i32 %477, i32* %5, align 4
  %478 = load i32, i32* @STB0899_S2DEMOD, align 4
  %479 = load i32, i32* @DMD_CNTRL2, align 4
  %480 = call i8* @STB0899_READ_S2REG(i32 %478, i32 %479)
  store i8* %480, i8** %11, align 8
  %481 = load i32, i32* @SPECTRUM_INVERT, align 4
  %482 = load i8*, i8** %11, align 8
  %483 = call i32 @STB0899_GETFIELD(i32 %481, i8* %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %453
  %486 = load i32, i32* %5, align 4
  %487 = mul nsw i32 %486, -1
  store i32 %487, i32* %5, align 4
  br label %488

488:                                              ; preds = %485, %453
  %489 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %490 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %489, i32 0, i32 7
  %491 = load i64, i64* %490, align 8
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = sub nsw i64 %491, %493
  %495 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %496 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %495, i32 0, i32 7
  store i64 %494, i64* %496, align 8
  %497 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %498 = call i32 @stb0899_dvbs2_get_srate(%struct.stb0899_state* %497)
  %499 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %500 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %499, i32 0, i32 0
  store i32 %498, i32* %500, align 8
  %501 = load i32, i32* @STB0899_S2DEMOD, align 4
  %502 = load i32, i32* @UWP_STAT2, align 4
  %503 = call i8* @STB0899_READ_S2REG(i32 %501, i32 %502)
  store i8* %503, i8** %11, align 8
  %504 = load i32, i32* @UWP_DECODE_MOD, align 4
  %505 = load i8*, i8** %11, align 8
  %506 = call i32 @STB0899_GETFIELD(i32 %504, i8* %505)
  %507 = ashr i32 %506, 2
  %508 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %509 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %508, i32 0, i32 4
  store i32 %507, i32* %509, align 4
  %510 = load i32, i32* @UWP_DECODE_MOD, align 4
  %511 = load i8*, i8** %11, align 8
  %512 = call i32 @STB0899_GETFIELD(i32 %510, i8* %511)
  %513 = and i32 %512, 1
  %514 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %515 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %514, i32 0, i32 5
  store i32 %513, i32* %515, align 8
  %516 = load i32, i32* @UWP_DECODE_MOD, align 4
  %517 = load i8*, i8** %11, align 8
  %518 = call i32 @STB0899_GETFIELD(i32 %516, i8* %517)
  %519 = ashr i32 %518, 1
  %520 = and i32 %519, 1
  %521 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %522 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %521, i32 0, i32 6
  store i32 %520, i32* %522, align 4
  %523 = load i32, i32* @STB0899_S2DEMOD, align 4
  %524 = load i32, i32* @IF_AGC_CNTRL, align 4
  %525 = call i8* @STB0899_READ_S2REG(i32 %523, i32 %524)
  store i8* %525, i8** %11, align 8
  %526 = load i32, i32* @IF_LOOP_GAIN, align 4
  %527 = load i8*, i8** %11, align 8
  %528 = call i32 @STB0899_SETFIELD_VAL(i32 %526, i8* %527, i32 3)
  %529 = load i32, i32* @STB0899_QPSK_12, align 4
  %530 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %531 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %530, i32 0, i32 4
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* @STB0899_QPSK_23, align 4
  %534 = call i64 @INRANGE(i32 %529, i32 %532, i32 %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %540

536:                                              ; preds = %488
  %537 = load i32, i32* @IF_AGC_REF, align 4
  %538 = load i8*, i8** %11, align 8
  %539 = call i32 @STB0899_SETFIELD_VAL(i32 %537, i8* %538, i32 16)
  br label %540

540:                                              ; preds = %536, %488
  %541 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %542 = load i32, i32* @STB0899_S2DEMOD, align 4
  %543 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL, align 4
  %544 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL, align 4
  %545 = load i8*, i8** %11, align 8
  %546 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %541, i32 %542, i32 %543, i32 %544, i8* %545)
  %547 = load i32, i32* @STB0899_S2DEMOD, align 4
  %548 = load i32, i32* @IF_AGC_CNTRL2, align 4
  %549 = call i8* @STB0899_READ_S2REG(i32 %547, i32 %548)
  store i8* %549, i8** %11, align 8
  %550 = load i32, i32* @IF_AGC_DUMP_PER, align 4
  %551 = load i8*, i8** %11, align 8
  %552 = call i32 @STB0899_SETFIELD_VAL(i32 %550, i8* %551, i32 7)
  %553 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %554 = load i32, i32* @STB0899_S2DEMOD, align 4
  %555 = load i32, i32* @STB0899_BASE_IF_AGC_CNTRL2, align 4
  %556 = load i32, i32* @STB0899_OFF0_IF_AGC_CNTRL2, align 4
  %557 = load i8*, i8** %11, align 8
  %558 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %553, i32 %554, i32 %555, i32 %556, i8* %557)
  br label %559

559:                                              ; preds = %540, %322
  %560 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %561 = load i32, i32* @STB0899_TSTRES, align 4
  %562 = call i8* @stb0899_read_reg(%struct.stb0899_state* %560, i32 %561)
  store i8* %562, i8** %11, align 8
  %563 = load i32, i32* @FRESRS, align 4
  %564 = load i8*, i8** %11, align 8
  %565 = call i32 @STB0899_SETFIELD_VAL(i32 %563, i8* %564, i32 0)
  %566 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %567 = load i32, i32* @STB0899_TSTRES, align 4
  %568 = load i8*, i8** %11, align 8
  %569 = call i32 @stb0899_write_reg(%struct.stb0899_state* %566, i32 %567, i8* %568)
  %570 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %571 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %570, i32 0, i32 2
  %572 = load i64, i64* %571, align 8
  %573 = trunc i64 %572 to i32
  ret i32 %573
}

declare dso_local i8* @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i8*, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i8*) #1

declare dso_local i32 @stb0899_i2c_gate_ctrl(i32*, i32) #1

declare dso_local i8* @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i8*) #1

declare dso_local i32 @stb0899_dvbs2_init_calc(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_reacquire(%struct.stb0899_state*) #1

declare dso_local i8* @stb0899_dvbs2_get_dmd_status(%struct.stb0899_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i8* @stb0899_dvbs2_get_fec_status(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i8*) #1

declare dso_local i64 @INRANGE(i32, i32, i32) #1

declare dso_local i32 @stb0899_dvbs2_init_csm(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_dvbs2_get_srate(%struct.stb0899_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
