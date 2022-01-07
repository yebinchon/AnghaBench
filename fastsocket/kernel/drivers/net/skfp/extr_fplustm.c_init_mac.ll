; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_init_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_init_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@FM_MDREG1 = common dso_local global i32 0, align 4
@FM_MINIT = common dso_local global i32 0, align 4
@FM_MMEMACT = common dso_local global i32 0, align 4
@FM_MDREG2 = common dso_local global i32 0, align 4
@B0_CTRL = common dso_local global i32 0, align 4
@CTRL_HPI_SET = common dso_local global i32 0, align 4
@MAC0 = common dso_local global i64 0, align 8
@FM_FRMTHR = common dso_local global i32 0, align 4
@MDR1INIT = common dso_local global i32 0, align 4
@FM_SELRA = common dso_local global i32 0, align 4
@FM_MDREG3 = common dso_local global i32 0, align 4
@FM_FRSELREG = common dso_local global i32 0, align 4
@FM_TMAX = common dso_local global i32 0, align 4
@FM_TVX = common dso_local global i32 0, align 4
@MB = common dso_local global i32 0, align 4
@FM_CMDREG1 = common dso_local global i32 0, align 4
@FM_ICLLS = common dso_local global i32 0, align 4
@FM_ICLLA0 = common dso_local global i32 0, align 4
@FM_ICLLR = common dso_local global i32 0, align 4
@FM_UNLCKDLY = common dso_local global i32 0, align 4
@B0_R1_CSR = common dso_local global i32 0, align 4
@CSR_SET_RESET = common dso_local global i32 0, align 4
@B0_XA_CSR = common dso_local global i32 0, align 4
@B0_XS_CSR = common dso_local global i32 0, align 4
@CTRL_HPI_CLR = common dso_local global i32 0, align 4
@CSR_CLR_RESET = common dso_local global i32 0, align 4
@B4_R1_F = common dso_local global i32 0, align 4
@RX_WATERMARK = common dso_local global i32 0, align 4
@B5_XA_F = common dso_local global i32 0, align 4
@TX_WATERMARK = common dso_local global i32 0, align 4
@B5_XS_F = common dso_local global i32 0, align 4
@STOPPED = common dso_local global i32 0, align 4
@STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, i32)* @init_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mac(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @FM_MDREG1, align 4
  %9 = call i32 @FM_A(i32 %8)
  %10 = load i32, i32* @FM_MINIT, align 4
  %11 = call i32 @outpw(i32 %9, i32 %10)
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = call i32 @set_formac_addr(%struct.s_smc* %12)
  %14 = load i32, i32* @FM_MDREG1, align 4
  %15 = call i32 @FM_A(i32 %14)
  %16 = load i32, i32* @FM_MMEMACT, align 4
  %17 = call i32 @outpw(i32 %15, i32 %16)
  %18 = load i32, i32* @FM_MDREG2, align 4
  %19 = call i32 @FM_A(i32 %18)
  %20 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %21 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @outpw(i32 %19, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %30 = call i32 @init_ram(%struct.s_smc* %29)
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @B0_CTRL, align 4
  %33 = call i32 @ADDR(i32 %32)
  %34 = load i32, i32* @CTRL_HPI_SET, align 4
  %35 = call i32 @outp(i32 %33, i32 %34)
  %36 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %37 = call i32 @hwt_quick_read(%struct.s_smc* %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %28
  %39 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %40 = call i32 @smt_split_up_fifo(%struct.s_smc* %39)
  %41 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %42 = call i32 @init_tx(%struct.s_smc* %41)
  %43 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %44 = call i32 @init_rx(%struct.s_smc* %43)
  %45 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %46 = call i32 @init_rbc(%struct.s_smc* %45)
  %47 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %48 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* @MAC0, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @build_claim_beacon(%struct.s_smc* %47, i32 %55)
  %57 = load i32, i32* @FM_FRMTHR, align 4
  %58 = call i32 @FM_A(i32 %57)
  %59 = call i32 @outpw(i32 %58, i32 57344)
  %60 = load i32, i32* @FM_MDREG1, align 4
  %61 = call i32 @FM_A(i32 %60)
  %62 = load i32, i32* @MDR1INIT, align 4
  %63 = load i32, i32* @FM_SELRA, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %66 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %64, %69
  %71 = call i32 @outpw(i32 %61, i32 %70)
  %72 = load i32, i32* @FM_MDREG2, align 4
  %73 = call i32 @FM_A(i32 %72)
  %74 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %75 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @outpw(i32 %73, i32 %78)
  %80 = load i32, i32* @FM_MDREG3, align 4
  %81 = call i32 @FM_A(i32 %80)
  %82 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %83 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @outpw(i32 %81, i32 %86)
  %88 = load i32, i32* @FM_FRSELREG, align 4
  %89 = call i32 @FM_A(i32 %88)
  %90 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %91 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @outpw(i32 %89, i32 %94)
  %96 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %97 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i64, i64* @MAC0, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sdiv i32 %103, 32
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sdiv i32 %105, 39
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, 39
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 65534
  br i1 %110, label %116, label %111

111:                                              ; preds = %38
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp eq i32 %114, 22
  br i1 %115, label %116, label %119

116:                                              ; preds = %111, %38
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i32, i32* @FM_TMAX, align 4
  %121 = call i32 @FM_A(i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @outpw(i32 %121, i32 %122)
  %124 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %125 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i64, i64* @MAC0, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @US2BCLK(i32 52)
  %133 = sub nsw i64 0, %132
  %134 = trunc i64 %133 to i32
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %119
  %137 = load i32, i32* @FM_TVX, align 4
  %138 = call i32 @FM_A(i32 %137)
  %139 = call i64 @US2BCLK(i32 52)
  %140 = sub nsw i64 0, %139
  %141 = trunc i64 %140 to i32
  %142 = sdiv i32 %141, 255
  %143 = load i32, i32* @MB, align 4
  %144 = and i32 %142, %143
  %145 = call i32 @outpw(i32 %138, i32 %144)
  br label %161

146:                                              ; preds = %119
  %147 = load i32, i32* @FM_TVX, align 4
  %148 = call i32 @FM_A(i32 %147)
  %149 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %150 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i64, i64* @MAC0, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 255
  %158 = load i32, i32* @MB, align 4
  %159 = and i32 %157, %158
  %160 = call i32 @outpw(i32 %148, i32 %159)
  br label %161

161:                                              ; preds = %146, %136
  %162 = load i32, i32* @FM_CMDREG1, align 4
  %163 = call i32 @FM_A(i32 %162)
  %164 = load i32, i32* @FM_ICLLS, align 4
  %165 = call i32 @outpw(i32 %163, i32 %164)
  %166 = load i32, i32* @FM_CMDREG1, align 4
  %167 = call i32 @FM_A(i32 %166)
  %168 = load i32, i32* @FM_ICLLA0, align 4
  %169 = call i32 @outpw(i32 %167, i32 %168)
  %170 = load i32, i32* @FM_CMDREG1, align 4
  %171 = call i32 @FM_A(i32 %170)
  %172 = load i32, i32* @FM_ICLLR, align 4
  %173 = call i32 @outpw(i32 %171, i32 %172)
  %174 = load i32, i32* @FM_UNLCKDLY, align 4
  %175 = call i32 @FM_A(i32 %174)
  %176 = call i32 @outpw(i32 %175, i32 65535)
  %177 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %178 = call i32 @rtm_init(%struct.s_smc* %177)
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %239, label %181

181:                                              ; preds = %161
  %182 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @MS2BCLK(i32 10)
  %185 = call i32 @hwt_wait_time(%struct.s_smc* %182, i32 %183, i32 %184)
  %186 = load i32, i32* @B0_R1_CSR, align 4
  %187 = call i32 @ADDR(i32 %186)
  %188 = load i32, i32* @CSR_SET_RESET, align 4
  %189 = call i32 @outpd(i32 %187, i32 %188)
  %190 = load i32, i32* @B0_XA_CSR, align 4
  %191 = call i32 @ADDR(i32 %190)
  %192 = load i32, i32* @CSR_SET_RESET, align 4
  %193 = call i32 @outpd(i32 %191, i32 %192)
  %194 = load i32, i32* @B0_XS_CSR, align 4
  %195 = call i32 @ADDR(i32 %194)
  %196 = load i32, i32* @CSR_SET_RESET, align 4
  %197 = call i32 @outpd(i32 %195, i32 %196)
  %198 = load i32, i32* @B0_CTRL, align 4
  %199 = call i32 @ADDR(i32 %198)
  %200 = load i32, i32* @CTRL_HPI_CLR, align 4
  %201 = call i32 @outp(i32 %199, i32 %200)
  %202 = load i32, i32* @B0_R1_CSR, align 4
  %203 = call i32 @ADDR(i32 %202)
  %204 = load i32, i32* @CSR_CLR_RESET, align 4
  %205 = call i32 @outpd(i32 %203, i32 %204)
  %206 = load i32, i32* @B0_XA_CSR, align 4
  %207 = call i32 @ADDR(i32 %206)
  %208 = load i32, i32* @CSR_CLR_RESET, align 4
  %209 = call i32 @outpd(i32 %207, i32 %208)
  %210 = load i32, i32* @B0_XS_CSR, align 4
  %211 = call i32 @ADDR(i32 %210)
  %212 = load i32, i32* @CSR_CLR_RESET, align 4
  %213 = call i32 @outpd(i32 %211, i32 %212)
  %214 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %215 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %232, label %219

219:                                              ; preds = %181
  %220 = load i32, i32* @B4_R1_F, align 4
  %221 = call i32 @ADDR(i32 %220)
  %222 = load i32, i32* @RX_WATERMARK, align 4
  %223 = call i32 @outpd(i32 %221, i32 %222)
  %224 = load i32, i32* @B5_XA_F, align 4
  %225 = call i32 @ADDR(i32 %224)
  %226 = load i32, i32* @TX_WATERMARK, align 4
  %227 = call i32 @outpd(i32 %225, i32 %226)
  %228 = load i32, i32* @B5_XS_F, align 4
  %229 = call i32 @ADDR(i32 %228)
  %230 = load i32, i32* @TX_WATERMARK, align 4
  %231 = call i32 @outpd(i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %219, %181
  %233 = load i32, i32* @STOPPED, align 4
  %234 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %235 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store i32 %233, i32* %236, align 8
  %237 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %238 = call i32 @mac_drv_repair_descr(%struct.s_smc* %237)
  br label %239

239:                                              ; preds = %232, %161
  %240 = load i32, i32* @STARTED, align 4
  %241 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %242 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 8
  ret i32 0
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @set_formac_addr(%struct.s_smc*) #1

declare dso_local i32 @init_ram(%struct.s_smc*) #1

declare dso_local i32 @outp(i32, i32) #1

declare dso_local i32 @ADDR(i32) #1

declare dso_local i32 @hwt_quick_read(%struct.s_smc*) #1

declare dso_local i32 @smt_split_up_fifo(%struct.s_smc*) #1

declare dso_local i32 @init_tx(%struct.s_smc*) #1

declare dso_local i32 @init_rx(%struct.s_smc*) #1

declare dso_local i32 @init_rbc(%struct.s_smc*) #1

declare dso_local i32 @build_claim_beacon(%struct.s_smc*, i32) #1

declare dso_local i64 @US2BCLK(i32) #1

declare dso_local i32 @rtm_init(%struct.s_smc*) #1

declare dso_local i32 @hwt_wait_time(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @MS2BCLK(i32) #1

declare dso_local i32 @outpd(i32, i32) #1

declare dso_local i32 @mac_drv_repair_descr(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
