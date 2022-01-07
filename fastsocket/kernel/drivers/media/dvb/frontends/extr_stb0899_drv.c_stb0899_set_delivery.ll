; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_set_delivery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_set_delivery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, i32 }

@STB0899_STOPCLK1 = common dso_local global i32 0, align 4
@STB0899_STOPCLK2 = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Delivery System -- DVB-S\00", align 1
@STB0899_FECM = common dso_local global i32 0, align 4
@FECM_RSVD0 = common dso_local global i32 0, align 4
@FECM_VITERBI_ON = common dso_local global i32 0, align 4
@STB0899_RSULC = common dso_local global i32 0, align 4
@STB0899_TSULC = common dso_local global i32 0, align 4
@STB0899_RSLLC = common dso_local global i32 0, align 4
@STB0899_TSLPL = common dso_local global i32 0, align 4
@STB0899_TSTRES = common dso_local global i32 0, align 4
@FRESLDPC = common dso_local global i32 0, align 4
@STOP_CHK8PSK = common dso_local global i32 0, align 4
@STOP_CKFEC108 = common dso_local global i32 0, align 4
@STOP_CKFEC216 = common dso_local global i32 0, align 4
@STOP_CKPKDLIN108 = common dso_local global i32 0, align 4
@STOP_CKPKDLIN216 = common dso_local global i32 0, align 4
@STOP_CKINTBUF216 = common dso_local global i32 0, align 4
@STOP_CKCORE216 = common dso_local global i32 0, align 4
@STOP_CKS2DMD108 = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@STOP_CKADCI108 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_set_delivery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_set_delivery(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %5 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %6 = load i32, i32* @STB0899_STOPCLK1, align 4
  %7 = call i32 @stb0899_read_reg(%struct.stb0899_state* %5, i32 %6)
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %10 = load i32, i32* @STB0899_STOPCLK2, align 4
  %11 = call i32 @stb0899_read_reg(%struct.stb0899_state* %9, i32 %10)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %218 [
    i32 129, label %16
    i32 128, label %89
    i32 130, label %157
  ]

16:                                               ; preds = %1
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FE_DEBUG, align 4
  %21 = call i32 @dprintk(i32 %19, i32 %20, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %23 = load i32, i32* @STB0899_FECM, align 4
  %24 = call i32 @stb0899_read_reg(%struct.stb0899_state* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @FECM_RSVD0, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @STB0899_SETFIELD_VAL(i32 %25, i32 %26, i32 0)
  %28 = load i32, i32* @FECM_VITERBI_ON, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @STB0899_SETFIELD_VAL(i32 %28, i32 %29, i32 1)
  %31 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %32 = load i32, i32* @STB0899_FECM, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @stb0899_write_reg(%struct.stb0899_state* %31, i32 %32, i32 %33)
  %35 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %36 = load i32, i32* @STB0899_RSULC, align 4
  %37 = call i32 @stb0899_write_reg(%struct.stb0899_state* %35, i32 %36, i32 177)
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %39 = load i32, i32* @STB0899_TSULC, align 4
  %40 = call i32 @stb0899_write_reg(%struct.stb0899_state* %38, i32 %39, i32 64)
  %41 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %42 = load i32, i32* @STB0899_RSLLC, align 4
  %43 = call i32 @stb0899_write_reg(%struct.stb0899_state* %41, i32 %42, i32 66)
  %44 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %45 = load i32, i32* @STB0899_TSLPL, align 4
  %46 = call i32 @stb0899_write_reg(%struct.stb0899_state* %44, i32 %45, i32 18)
  %47 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %48 = load i32, i32* @STB0899_TSTRES, align 4
  %49 = call i32 @stb0899_read_reg(%struct.stb0899_state* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @FRESLDPC, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @STB0899_SETFIELD_VAL(i32 %50, i32 %51, i32 1)
  %53 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %54 = load i32, i32* @STB0899_TSTRES, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @stb0899_write_reg(%struct.stb0899_state* %53, i32 %54, i32 %55)
  %57 = load i32, i32* @STOP_CHK8PSK, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @STB0899_SETFIELD_VAL(i32 %57, i32 %59, i32 1)
  %61 = load i32, i32* @STOP_CKFEC108, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @STB0899_SETFIELD_VAL(i32 %61, i32 %63, i32 1)
  %65 = load i32, i32* @STOP_CKFEC216, align 4
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @STB0899_SETFIELD_VAL(i32 %65, i32 %67, i32 1)
  %69 = load i32, i32* @STOP_CKPKDLIN108, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @STB0899_SETFIELD_VAL(i32 %69, i32 %71, i32 1)
  %73 = load i32, i32* @STOP_CKPKDLIN216, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @STB0899_SETFIELD_VAL(i32 %73, i32 %75, i32 1)
  %77 = load i32, i32* @STOP_CKINTBUF216, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @STB0899_SETFIELD_VAL(i32 %77, i32 %79, i32 1)
  %81 = load i32, i32* @STOP_CKCORE216, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @STB0899_SETFIELD_VAL(i32 %81, i32 %83, i32 0)
  %85 = load i32, i32* @STOP_CKS2DMD108, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @STB0899_SETFIELD_VAL(i32 %85, i32 %87, i32 1)
  br label %224

89:                                               ; preds = %1
  %90 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %91 = load i32, i32* @STB0899_FECM, align 4
  %92 = call i32 @stb0899_read_reg(%struct.stb0899_state* %90, i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* @FECM_RSVD0, align 4
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @STB0899_SETFIELD_VAL(i32 %93, i32 %94, i32 0)
  %96 = load i32, i32* @FECM_VITERBI_ON, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @STB0899_SETFIELD_VAL(i32 %96, i32 %97, i32 0)
  %99 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %100 = load i32, i32* @STB0899_FECM, align 4
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @stb0899_write_reg(%struct.stb0899_state* %99, i32 %100, i32 %101)
  %103 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %104 = load i32, i32* @STB0899_RSULC, align 4
  %105 = call i32 @stb0899_write_reg(%struct.stb0899_state* %103, i32 %104, i32 177)
  %106 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %107 = load i32, i32* @STB0899_TSULC, align 4
  %108 = call i32 @stb0899_write_reg(%struct.stb0899_state* %106, i32 %107, i32 66)
  %109 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %110 = load i32, i32* @STB0899_RSLLC, align 4
  %111 = call i32 @stb0899_write_reg(%struct.stb0899_state* %109, i32 %110, i32 64)
  %112 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %113 = load i32, i32* @STB0899_TSLPL, align 4
  %114 = call i32 @stb0899_write_reg(%struct.stb0899_state* %112, i32 %113, i32 2)
  %115 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %116 = load i32, i32* @STB0899_TSTRES, align 4
  %117 = call i32 @stb0899_read_reg(%struct.stb0899_state* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @FRESLDPC, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @STB0899_SETFIELD_VAL(i32 %118, i32 %119, i32 0)
  %121 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %122 = load i32, i32* @STB0899_TSTRES, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @stb0899_write_reg(%struct.stb0899_state* %121, i32 %122, i32 %123)
  %125 = load i32, i32* @STOP_CHK8PSK, align 4
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @STB0899_SETFIELD_VAL(i32 %125, i32 %127, i32 1)
  %129 = load i32, i32* @STOP_CKFEC108, align 4
  %130 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @STB0899_SETFIELD_VAL(i32 %129, i32 %131, i32 0)
  %133 = load i32, i32* @STOP_CKFEC216, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @STB0899_SETFIELD_VAL(i32 %133, i32 %135, i32 0)
  %137 = load i32, i32* @STOP_CKPKDLIN108, align 4
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @STB0899_SETFIELD_VAL(i32 %137, i32 %139, i32 0)
  %141 = load i32, i32* @STOP_CKPKDLIN216, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @STB0899_SETFIELD_VAL(i32 %141, i32 %143, i32 0)
  %145 = load i32, i32* @STOP_CKINTBUF216, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @STB0899_SETFIELD_VAL(i32 %145, i32 %147, i32 0)
  %149 = load i32, i32* @STOP_CKCORE216, align 4
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @STB0899_SETFIELD_VAL(i32 %149, i32 %151, i32 0)
  %153 = load i32, i32* @STOP_CKS2DMD108, align 4
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @STB0899_SETFIELD_VAL(i32 %153, i32 %155, i32 0)
  br label %224

157:                                              ; preds = %1
  %158 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %159 = load i32, i32* @STB0899_FECM, align 4
  %160 = call i32 @stb0899_read_reg(%struct.stb0899_state* %158, i32 %159)
  store i32 %160, i32* %3, align 4
  %161 = load i32, i32* @FECM_RSVD0, align 4
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @STB0899_SETFIELD_VAL(i32 %161, i32 %162, i32 1)
  %164 = load i32, i32* @FECM_VITERBI_ON, align 4
  %165 = load i32, i32* %3, align 4
  %166 = call i32 @STB0899_SETFIELD_VAL(i32 %164, i32 %165, i32 1)
  %167 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %168 = load i32, i32* @STB0899_FECM, align 4
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @stb0899_write_reg(%struct.stb0899_state* %167, i32 %168, i32 %169)
  %171 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %172 = load i32, i32* @STB0899_RSULC, align 4
  %173 = call i32 @stb0899_write_reg(%struct.stb0899_state* %171, i32 %172, i32 161)
  %174 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %175 = load i32, i32* @STB0899_TSULC, align 4
  %176 = call i32 @stb0899_write_reg(%struct.stb0899_state* %174, i32 %175, i32 97)
  %177 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %178 = load i32, i32* @STB0899_RSLLC, align 4
  %179 = call i32 @stb0899_write_reg(%struct.stb0899_state* %177, i32 %178, i32 66)
  %180 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %181 = load i32, i32* @STB0899_TSTRES, align 4
  %182 = call i32 @stb0899_read_reg(%struct.stb0899_state* %180, i32 %181)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* @FRESLDPC, align 4
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @STB0899_SETFIELD_VAL(i32 %183, i32 %184, i32 1)
  %186 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %187 = load i32, i32* @STB0899_TSTRES, align 4
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @stb0899_write_reg(%struct.stb0899_state* %186, i32 %187, i32 %188)
  %190 = load i32, i32* @STOP_CHK8PSK, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @STB0899_SETFIELD_VAL(i32 %190, i32 %192, i32 1)
  %194 = load i32, i32* @STOP_CKFEC108, align 4
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @STB0899_SETFIELD_VAL(i32 %194, i32 %196, i32 1)
  %198 = load i32, i32* @STOP_CKFEC216, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @STB0899_SETFIELD_VAL(i32 %198, i32 %200, i32 1)
  %202 = load i32, i32* @STOP_CKPKDLIN108, align 4
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @STB0899_SETFIELD_VAL(i32 %202, i32 %204, i32 1)
  %206 = load i32, i32* @STOP_CKPKDLIN216, align 4
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @STB0899_SETFIELD_VAL(i32 %206, i32 %208, i32 1)
  %210 = load i32, i32* @STOP_CKCORE216, align 4
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @STB0899_SETFIELD_VAL(i32 %210, i32 %212, i32 0)
  %214 = load i32, i32* @STOP_CKS2DMD108, align 4
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @STB0899_SETFIELD_VAL(i32 %214, i32 %216, i32 1)
  br label %224

218:                                              ; preds = %1
  %219 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %220 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @FE_ERROR, align 4
  %223 = call i32 @dprintk(i32 %221, i32 %222, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %224

224:                                              ; preds = %218, %157, %89, %16
  %225 = load i32, i32* @STOP_CKADCI108, align 4
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @STB0899_SETFIELD_VAL(i32 %225, i32 %227, i32 0)
  %229 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %230 = load i32, i32* @STB0899_STOPCLK1, align 4
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %232 = call i32 @stb0899_write_regs(%struct.stb0899_state* %229, i32 %230, i32* %231, i32 2)
  ret void
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
