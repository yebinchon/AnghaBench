; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pci.c_sprom_extract_r45.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pci.c_sprom_extract_r45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ssb_sprom = type { i32, i64 }

@SSB_SPROM4_IL0MAC = common dso_local global i32 0, align 4
@SSB_SPROM5_IL0MAC = common dso_local global i32 0, align 4
@et0phyaddr = common dso_local global i32 0, align 4
@SSB_SPROM4_ETHPHY = common dso_local global i32 0, align 4
@SSB_SPROM4_ETHPHY_ET0A = common dso_local global i32 0, align 4
@et1phyaddr = common dso_local global i32 0, align 4
@SSB_SPROM4_ETHPHY_ET1A = common dso_local global i32 0, align 4
@SSB_SPROM4_ETHPHY_ET1A_SHIFT = common dso_local global i32 0, align 4
@board_rev = common dso_local global i32 0, align 4
@SSB_SPROM4_BOARDREV = common dso_local global i32 0, align 4
@alpha2 = common dso_local global i32* null, align 8
@SSB_SPROM4_CCODE = common dso_local global i32 0, align 4
@boardflags_lo = common dso_local global i32 0, align 4
@SSB_SPROM4_BFLLO = common dso_local global i32 0, align 4
@boardflags_hi = common dso_local global i32 0, align 4
@SSB_SPROM4_BFLHI = common dso_local global i32 0, align 4
@boardflags2_lo = common dso_local global i32 0, align 4
@SSB_SPROM4_BFL2LO = common dso_local global i32 0, align 4
@boardflags2_hi = common dso_local global i32 0, align 4
@SSB_SPROM4_BFL2HI = common dso_local global i32 0, align 4
@SSB_SPROM5_CCODE = common dso_local global i32 0, align 4
@SSB_SPROM5_BFLLO = common dso_local global i32 0, align 4
@SSB_SPROM5_BFLHI = common dso_local global i32 0, align 4
@SSB_SPROM5_BFL2LO = common dso_local global i32 0, align 4
@SSB_SPROM5_BFL2HI = common dso_local global i32 0, align 4
@ant_available_a = common dso_local global i32 0, align 4
@SSB_SPROM4_ANTAVAIL = common dso_local global i32 0, align 4
@SSB_SPROM4_ANTAVAIL_A = common dso_local global i32 0, align 4
@SSB_SPROM4_ANTAVAIL_A_SHIFT = common dso_local global i32 0, align 4
@ant_available_bg = common dso_local global i32 0, align 4
@SSB_SPROM4_ANTAVAIL_BG = common dso_local global i32 0, align 4
@SSB_SPROM4_ANTAVAIL_BG_SHIFT = common dso_local global i32 0, align 4
@maxpwr_bg = common dso_local global i32 0, align 4
@SSB_SPROM4_MAXP_BG = common dso_local global i32 0, align 4
@SSB_SPROM4_MAXP_BG_MASK = common dso_local global i32 0, align 4
@itssi_bg = common dso_local global i32 0, align 4
@SSB_SPROM4_ITSSI_BG = common dso_local global i32 0, align 4
@SSB_SPROM4_ITSSI_BG_SHIFT = common dso_local global i32 0, align 4
@maxpwr_a = common dso_local global i32 0, align 4
@SSB_SPROM4_MAXP_A = common dso_local global i32 0, align 4
@SSB_SPROM4_MAXP_A_MASK = common dso_local global i32 0, align 4
@itssi_a = common dso_local global i32 0, align 4
@SSB_SPROM4_ITSSI_A = common dso_local global i32 0, align 4
@SSB_SPROM4_ITSSI_A_SHIFT = common dso_local global i32 0, align 4
@gpio0 = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOA = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOA_P0 = common dso_local global i32 0, align 4
@gpio1 = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOA_P1 = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOA_P1_SHIFT = common dso_local global i32 0, align 4
@gpio2 = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOB = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOB_P2 = common dso_local global i32 0, align 4
@gpio3 = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOB_P3 = common dso_local global i32 0, align 4
@SSB_SPROM4_GPIOB_P3_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOA = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOA_P0 = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOA_P1 = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOA_P1_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOB = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOB_P2 = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOB_P3 = common dso_local global i32 0, align 4
@SSB_SPROM5_GPIOB_P3_SHIFT = common dso_local global i32 0, align 4
@antenna_gain = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SSB_SPROM4_AGAIN01 = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN0 = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN0_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN1 = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN1_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN23 = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN2 = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN2_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN3 = common dso_local global i32 0, align 4
@SSB_SPROM4_AGAIN3_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i32*)* @sprom_extract_r45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprom_extract_r45(%struct.ssb_sprom* %0, i32* %1) #0 {
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SSB_SPROM4_IL0MAC, align 4
  store i32 %13, i32* %7, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SSB_SPROM5_IL0MAC, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %12
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @SPOFF(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cpu_to_be16(i32 %29)
  %31 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %32 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %30, i32* %37, align 4
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i32, i32* @et0phyaddr, align 4
  %43 = load i32, i32* @SSB_SPROM4_ETHPHY, align 4
  %44 = load i32, i32* @SSB_SPROM4_ETHPHY_ET0A, align 4
  %45 = call i32 @SPEX(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* @et1phyaddr, align 4
  %47 = load i32, i32* @SSB_SPROM4_ETHPHY, align 4
  %48 = load i32, i32* @SSB_SPROM4_ETHPHY_ET1A, align 4
  %49 = load i32, i32* @SSB_SPROM4_ETHPHY_ET1A_SHIFT, align 4
  %50 = call i32 @SPEX(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @board_rev, align 4
  %52 = load i32, i32* @SSB_SPROM4_BOARDREV, align 4
  %53 = call i32 @SPEX(i32 %51, i32 %52, i32 65535, i32 0)
  %54 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %55 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %81

58:                                               ; preds = %41
  %59 = load i32*, i32** @alpha2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SSB_SPROM4_CCODE, align 4
  %63 = call i32 @SPEX(i32 %61, i32 %62, i32 65280, i32 8)
  %64 = load i32*, i32** @alpha2, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SSB_SPROM4_CCODE, align 4
  %68 = call i32 @SPEX(i32 %66, i32 %67, i32 255, i32 0)
  %69 = load i32, i32* @boardflags_lo, align 4
  %70 = load i32, i32* @SSB_SPROM4_BFLLO, align 4
  %71 = call i32 @SPEX(i32 %69, i32 %70, i32 65535, i32 0)
  %72 = load i32, i32* @boardflags_hi, align 4
  %73 = load i32, i32* @SSB_SPROM4_BFLHI, align 4
  %74 = call i32 @SPEX(i32 %72, i32 %73, i32 65535, i32 0)
  %75 = load i32, i32* @boardflags2_lo, align 4
  %76 = load i32, i32* @SSB_SPROM4_BFL2LO, align 4
  %77 = call i32 @SPEX(i32 %75, i32 %76, i32 65535, i32 0)
  %78 = load i32, i32* @boardflags2_hi, align 4
  %79 = load i32, i32* @SSB_SPROM4_BFL2HI, align 4
  %80 = call i32 @SPEX(i32 %78, i32 %79, i32 65535, i32 0)
  br label %104

81:                                               ; preds = %41
  %82 = load i32*, i32** @alpha2, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SSB_SPROM5_CCODE, align 4
  %86 = call i32 @SPEX(i32 %84, i32 %85, i32 65280, i32 8)
  %87 = load i32*, i32** @alpha2, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SSB_SPROM5_CCODE, align 4
  %91 = call i32 @SPEX(i32 %89, i32 %90, i32 255, i32 0)
  %92 = load i32, i32* @boardflags_lo, align 4
  %93 = load i32, i32* @SSB_SPROM5_BFLLO, align 4
  %94 = call i32 @SPEX(i32 %92, i32 %93, i32 65535, i32 0)
  %95 = load i32, i32* @boardflags_hi, align 4
  %96 = load i32, i32* @SSB_SPROM5_BFLHI, align 4
  %97 = call i32 @SPEX(i32 %95, i32 %96, i32 65535, i32 0)
  %98 = load i32, i32* @boardflags2_lo, align 4
  %99 = load i32, i32* @SSB_SPROM5_BFL2LO, align 4
  %100 = call i32 @SPEX(i32 %98, i32 %99, i32 65535, i32 0)
  %101 = load i32, i32* @boardflags2_hi, align 4
  %102 = load i32, i32* @SSB_SPROM5_BFL2HI, align 4
  %103 = call i32 @SPEX(i32 %101, i32 %102, i32 65535, i32 0)
  br label %104

104:                                              ; preds = %81, %58
  %105 = load i32, i32* @ant_available_a, align 4
  %106 = load i32, i32* @SSB_SPROM4_ANTAVAIL, align 4
  %107 = load i32, i32* @SSB_SPROM4_ANTAVAIL_A, align 4
  %108 = load i32, i32* @SSB_SPROM4_ANTAVAIL_A_SHIFT, align 4
  %109 = call i32 @SPEX(i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @ant_available_bg, align 4
  %111 = load i32, i32* @SSB_SPROM4_ANTAVAIL, align 4
  %112 = load i32, i32* @SSB_SPROM4_ANTAVAIL_BG, align 4
  %113 = load i32, i32* @SSB_SPROM4_ANTAVAIL_BG_SHIFT, align 4
  %114 = call i32 @SPEX(i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* @maxpwr_bg, align 4
  %116 = load i32, i32* @SSB_SPROM4_MAXP_BG, align 4
  %117 = load i32, i32* @SSB_SPROM4_MAXP_BG_MASK, align 4
  %118 = call i32 @SPEX(i32 %115, i32 %116, i32 %117, i32 0)
  %119 = load i32, i32* @itssi_bg, align 4
  %120 = load i32, i32* @SSB_SPROM4_MAXP_BG, align 4
  %121 = load i32, i32* @SSB_SPROM4_ITSSI_BG, align 4
  %122 = load i32, i32* @SSB_SPROM4_ITSSI_BG_SHIFT, align 4
  %123 = call i32 @SPEX(i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* @maxpwr_a, align 4
  %125 = load i32, i32* @SSB_SPROM4_MAXP_A, align 4
  %126 = load i32, i32* @SSB_SPROM4_MAXP_A_MASK, align 4
  %127 = call i32 @SPEX(i32 %124, i32 %125, i32 %126, i32 0)
  %128 = load i32, i32* @itssi_a, align 4
  %129 = load i32, i32* @SSB_SPROM4_MAXP_A, align 4
  %130 = load i32, i32* @SSB_SPROM4_ITSSI_A, align 4
  %131 = load i32, i32* @SSB_SPROM4_ITSSI_A_SHIFT, align 4
  %132 = call i32 @SPEX(i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %134 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %156

137:                                              ; preds = %104
  %138 = load i32, i32* @gpio0, align 4
  %139 = load i32, i32* @SSB_SPROM4_GPIOA, align 4
  %140 = load i32, i32* @SSB_SPROM4_GPIOA_P0, align 4
  %141 = call i32 @SPEX(i32 %138, i32 %139, i32 %140, i32 0)
  %142 = load i32, i32* @gpio1, align 4
  %143 = load i32, i32* @SSB_SPROM4_GPIOA, align 4
  %144 = load i32, i32* @SSB_SPROM4_GPIOA_P1, align 4
  %145 = load i32, i32* @SSB_SPROM4_GPIOA_P1_SHIFT, align 4
  %146 = call i32 @SPEX(i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* @gpio2, align 4
  %148 = load i32, i32* @SSB_SPROM4_GPIOB, align 4
  %149 = load i32, i32* @SSB_SPROM4_GPIOB_P2, align 4
  %150 = call i32 @SPEX(i32 %147, i32 %148, i32 %149, i32 0)
  %151 = load i32, i32* @gpio3, align 4
  %152 = load i32, i32* @SSB_SPROM4_GPIOB, align 4
  %153 = load i32, i32* @SSB_SPROM4_GPIOB_P3, align 4
  %154 = load i32, i32* @SSB_SPROM4_GPIOB_P3_SHIFT, align 4
  %155 = call i32 @SPEX(i32 %151, i32 %152, i32 %153, i32 %154)
  br label %175

156:                                              ; preds = %104
  %157 = load i32, i32* @gpio0, align 4
  %158 = load i32, i32* @SSB_SPROM5_GPIOA, align 4
  %159 = load i32, i32* @SSB_SPROM5_GPIOA_P0, align 4
  %160 = call i32 @SPEX(i32 %157, i32 %158, i32 %159, i32 0)
  %161 = load i32, i32* @gpio1, align 4
  %162 = load i32, i32* @SSB_SPROM5_GPIOA, align 4
  %163 = load i32, i32* @SSB_SPROM5_GPIOA_P1, align 4
  %164 = load i32, i32* @SSB_SPROM5_GPIOA_P1_SHIFT, align 4
  %165 = call i32 @SPEX(i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* @gpio2, align 4
  %167 = load i32, i32* @SSB_SPROM5_GPIOB, align 4
  %168 = load i32, i32* @SSB_SPROM5_GPIOB_P2, align 4
  %169 = call i32 @SPEX(i32 %166, i32 %167, i32 %168, i32 0)
  %170 = load i32, i32* @gpio3, align 4
  %171 = load i32, i32* @SSB_SPROM5_GPIOB, align 4
  %172 = load i32, i32* @SSB_SPROM5_GPIOB_P3, align 4
  %173 = load i32, i32* @SSB_SPROM5_GPIOB_P3_SHIFT, align 4
  %174 = call i32 @SPEX(i32 %170, i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %156, %137
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @antenna_gain, i32 0, i32 3), align 4
  %177 = load i32, i32* @SSB_SPROM4_AGAIN01, align 4
  %178 = load i32, i32* @SSB_SPROM4_AGAIN0, align 4
  %179 = load i32, i32* @SSB_SPROM4_AGAIN0_SHIFT, align 4
  %180 = call i32 @SPEX(i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @antenna_gain, i32 0, i32 2), align 4
  %182 = load i32, i32* @SSB_SPROM4_AGAIN01, align 4
  %183 = load i32, i32* @SSB_SPROM4_AGAIN1, align 4
  %184 = load i32, i32* @SSB_SPROM4_AGAIN1_SHIFT, align 4
  %185 = call i32 @SPEX(i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @antenna_gain, i32 0, i32 1), align 4
  %187 = load i32, i32* @SSB_SPROM4_AGAIN23, align 4
  %188 = load i32, i32* @SSB_SPROM4_AGAIN2, align 4
  %189 = load i32, i32* @SSB_SPROM4_AGAIN2_SHIFT, align 4
  %190 = call i32 @SPEX(i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @antenna_gain, i32 0, i32 0), align 4
  %192 = load i32, i32* @SSB_SPROM4_AGAIN23, align 4
  %193 = load i32, i32* @SSB_SPROM4_AGAIN3, align 4
  %194 = load i32, i32* @SSB_SPROM4_AGAIN3_SHIFT, align 4
  %195 = call i32 @SPEX(i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @sprom_extract_r458(%struct.ssb_sprom* %196, i32* %197)
  ret void
}

declare dso_local i32 @SPOFF(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @SPEX(i32, i32, i32, i32) #1

declare dso_local i32 @sprom_extract_r458(%struct.ssb_sprom*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
