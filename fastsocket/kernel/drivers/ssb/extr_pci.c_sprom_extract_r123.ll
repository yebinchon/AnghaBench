; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pci.c_sprom_extract_r123.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_pci.c_sprom_extract_r123.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_sprom = type { i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i8*, i8* }

@SSB_SPROM3_IL0MAC = common dso_local global i32 0, align 4
@SSB_SPROM1_IL0MAC = common dso_local global i32 0, align 4
@SSB_SPROM1_ET0MAC = common dso_local global i32 0, align 4
@SSB_SPROM1_ET1MAC = common dso_local global i32 0, align 4
@et0phyaddr = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET0A = common dso_local global i32 0, align 4
@et1phyaddr = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET1A = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET1A_SHIFT = common dso_local global i32 0, align 4
@et0mdcport = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET0M = common dso_local global i32 0, align 4
@et1mdcport = common dso_local global i32 0, align 4
@SSB_SPROM1_ETHPHY_ET1M = common dso_local global i32 0, align 4
@board_rev = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_BREV = common dso_local global i32 0, align 4
@country_code = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_CCODE = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_CCODE_SHIFT = common dso_local global i32 0, align 4
@ant_available_a = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTA = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTA_SHIFT = common dso_local global i32 0, align 4
@ant_available_bg = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTBG = common dso_local global i32 0, align 4
@SSB_SPROM1_BINF_ANTBG_SHIFT = common dso_local global i32 0, align 4
@pa0b0 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA0B0 = common dso_local global i32 0, align 4
@pa0b1 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA0B1 = common dso_local global i32 0, align 4
@pa0b2 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA0B2 = common dso_local global i32 0, align 4
@pa1b0 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA1B0 = common dso_local global i32 0, align 4
@pa1b1 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA1B1 = common dso_local global i32 0, align 4
@pa1b2 = common dso_local global i32 0, align 4
@SSB_SPROM1_PA1B2 = common dso_local global i32 0, align 4
@gpio0 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA_P0 = common dso_local global i32 0, align 4
@gpio1 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA_P1 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOA_P1_SHIFT = common dso_local global i32 0, align 4
@gpio2 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB_P2 = common dso_local global i32 0, align 4
@gpio3 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB_P3 = common dso_local global i32 0, align 4
@SSB_SPROM1_GPIOB_P3_SHIFT = common dso_local global i32 0, align 4
@maxpwr_a = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR_A = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR_A_SHIFT = common dso_local global i32 0, align 4
@maxpwr_bg = common dso_local global i32 0, align 4
@SSB_SPROM1_MAXPWR_BG = common dso_local global i32 0, align 4
@itssi_a = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI_A = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI_A_SHIFT = common dso_local global i32 0, align 4
@itssi_bg = common dso_local global i32 0, align 4
@SSB_SPROM1_ITSSI_BG = common dso_local global i32 0, align 4
@boardflags_lo = common dso_local global i32 0, align 4
@SSB_SPROM1_BFLLO = common dso_local global i32 0, align 4
@boardflags_hi = common dso_local global i32 0, align 4
@SSB_SPROM2_BFLHI = common dso_local global i32 0, align 4
@alpha2 = common dso_local global i32* null, align 8
@SSB_SPROM1_CCODE = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_BG = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_BG_SHIFT = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_A = common dso_local global i32 0, align 4
@SSB_SPROM1_AGAIN_A_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_sprom*, i32*)* @sprom_extract_r123 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprom_extract_r123(%struct.ssb_sprom* %0, i32* %1) #0 {
  %3 = alloca %struct.ssb_sprom*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  store %struct.ssb_sprom* %0, %struct.ssb_sprom** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %9 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @SSB_SPROM3_IL0MAC, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @SSB_SPROM1_IL0MAC, align 4
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @SSB_SPROM1_ET0MAC, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @SSB_SPROM1_ET1MAC, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %15, %12
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SPOFF(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %27, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %39 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %37, i32* %44, align 4
  br label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %50 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 3
  br i1 %52, label %53, label %106

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %76, %53
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load i32*, i32** %4, align 8
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SPOFF(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @cpu_to_be16(i32 %67)
  %69 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %70 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %54

79:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %102, %79
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SPOFF(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %84, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @cpu_to_be16(i32 %93)
  %95 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %96 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %94, i32* %101, align 4
  br label %102

102:                                              ; preds = %83
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %80

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %48
  %107 = load i32, i32* @et0phyaddr, align 4
  %108 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %109 = load i32, i32* @SSB_SPROM1_ETHPHY_ET0A, align 4
  %110 = call i32 @SPEX(i32 %107, i32 %108, i32 %109, i32 0)
  %111 = load i32, i32* @et1phyaddr, align 4
  %112 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %113 = load i32, i32* @SSB_SPROM1_ETHPHY_ET1A, align 4
  %114 = load i32, i32* @SSB_SPROM1_ETHPHY_ET1A_SHIFT, align 4
  %115 = call i32 @SPEX(i32 %111, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @et0mdcport, align 4
  %117 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %118 = load i32, i32* @SSB_SPROM1_ETHPHY_ET0M, align 4
  %119 = call i32 @SPEX(i32 %116, i32 %117, i32 %118, i32 14)
  %120 = load i32, i32* @et1mdcport, align 4
  %121 = load i32, i32* @SSB_SPROM1_ETHPHY, align 4
  %122 = load i32, i32* @SSB_SPROM1_ETHPHY_ET1M, align 4
  %123 = call i32 @SPEX(i32 %120, i32 %121, i32 %122, i32 15)
  %124 = load i32, i32* @board_rev, align 4
  %125 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %126 = load i32, i32* @SSB_SPROM1_BINF_BREV, align 4
  %127 = call i32 @SPEX(i32 %124, i32 %125, i32 %126, i32 0)
  %128 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %129 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %106
  %133 = load i32, i32* @country_code, align 4
  %134 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %135 = load i32, i32* @SSB_SPROM1_BINF_CCODE, align 4
  %136 = load i32, i32* @SSB_SPROM1_BINF_CCODE_SHIFT, align 4
  %137 = call i32 @SPEX(i32 %133, i32 %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %106
  %139 = load i32, i32* @ant_available_a, align 4
  %140 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %141 = load i32, i32* @SSB_SPROM1_BINF_ANTA, align 4
  %142 = load i32, i32* @SSB_SPROM1_BINF_ANTA_SHIFT, align 4
  %143 = call i32 @SPEX(i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* @ant_available_bg, align 4
  %145 = load i32, i32* @SSB_SPROM1_BINF, align 4
  %146 = load i32, i32* @SSB_SPROM1_BINF_ANTBG, align 4
  %147 = load i32, i32* @SSB_SPROM1_BINF_ANTBG_SHIFT, align 4
  %148 = call i32 @SPEX(i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* @pa0b0, align 4
  %150 = load i32, i32* @SSB_SPROM1_PA0B0, align 4
  %151 = call i32 @SPEX(i32 %149, i32 %150, i32 65535, i32 0)
  %152 = load i32, i32* @pa0b1, align 4
  %153 = load i32, i32* @SSB_SPROM1_PA0B1, align 4
  %154 = call i32 @SPEX(i32 %152, i32 %153, i32 65535, i32 0)
  %155 = load i32, i32* @pa0b2, align 4
  %156 = load i32, i32* @SSB_SPROM1_PA0B2, align 4
  %157 = call i32 @SPEX(i32 %155, i32 %156, i32 65535, i32 0)
  %158 = load i32, i32* @pa1b0, align 4
  %159 = load i32, i32* @SSB_SPROM1_PA1B0, align 4
  %160 = call i32 @SPEX(i32 %158, i32 %159, i32 65535, i32 0)
  %161 = load i32, i32* @pa1b1, align 4
  %162 = load i32, i32* @SSB_SPROM1_PA1B1, align 4
  %163 = call i32 @SPEX(i32 %161, i32 %162, i32 65535, i32 0)
  %164 = load i32, i32* @pa1b2, align 4
  %165 = load i32, i32* @SSB_SPROM1_PA1B2, align 4
  %166 = call i32 @SPEX(i32 %164, i32 %165, i32 65535, i32 0)
  %167 = load i32, i32* @gpio0, align 4
  %168 = load i32, i32* @SSB_SPROM1_GPIOA, align 4
  %169 = load i32, i32* @SSB_SPROM1_GPIOA_P0, align 4
  %170 = call i32 @SPEX(i32 %167, i32 %168, i32 %169, i32 0)
  %171 = load i32, i32* @gpio1, align 4
  %172 = load i32, i32* @SSB_SPROM1_GPIOA, align 4
  %173 = load i32, i32* @SSB_SPROM1_GPIOA_P1, align 4
  %174 = load i32, i32* @SSB_SPROM1_GPIOA_P1_SHIFT, align 4
  %175 = call i32 @SPEX(i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* @gpio2, align 4
  %177 = load i32, i32* @SSB_SPROM1_GPIOB, align 4
  %178 = load i32, i32* @SSB_SPROM1_GPIOB_P2, align 4
  %179 = call i32 @SPEX(i32 %176, i32 %177, i32 %178, i32 0)
  %180 = load i32, i32* @gpio3, align 4
  %181 = load i32, i32* @SSB_SPROM1_GPIOB, align 4
  %182 = load i32, i32* @SSB_SPROM1_GPIOB_P3, align 4
  %183 = load i32, i32* @SSB_SPROM1_GPIOB_P3_SHIFT, align 4
  %184 = call i32 @SPEX(i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* @maxpwr_a, align 4
  %186 = load i32, i32* @SSB_SPROM1_MAXPWR, align 4
  %187 = load i32, i32* @SSB_SPROM1_MAXPWR_A, align 4
  %188 = load i32, i32* @SSB_SPROM1_MAXPWR_A_SHIFT, align 4
  %189 = call i32 @SPEX(i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* @maxpwr_bg, align 4
  %191 = load i32, i32* @SSB_SPROM1_MAXPWR, align 4
  %192 = load i32, i32* @SSB_SPROM1_MAXPWR_BG, align 4
  %193 = call i32 @SPEX(i32 %190, i32 %191, i32 %192, i32 0)
  %194 = load i32, i32* @itssi_a, align 4
  %195 = load i32, i32* @SSB_SPROM1_ITSSI, align 4
  %196 = load i32, i32* @SSB_SPROM1_ITSSI_A, align 4
  %197 = load i32, i32* @SSB_SPROM1_ITSSI_A_SHIFT, align 4
  %198 = call i32 @SPEX(i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* @itssi_bg, align 4
  %200 = load i32, i32* @SSB_SPROM1_ITSSI, align 4
  %201 = load i32, i32* @SSB_SPROM1_ITSSI_BG, align 4
  %202 = call i32 @SPEX(i32 %199, i32 %200, i32 %201, i32 0)
  %203 = load i32, i32* @boardflags_lo, align 4
  %204 = load i32, i32* @SSB_SPROM1_BFLLO, align 4
  %205 = call i32 @SPEX(i32 %203, i32 %204, i32 65535, i32 0)
  %206 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %207 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp sge i32 %208, 2
  br i1 %209, label %210, label %214

210:                                              ; preds = %138
  %211 = load i32, i32* @boardflags_hi, align 4
  %212 = load i32, i32* @SSB_SPROM2_BFLHI, align 4
  %213 = call i32 @SPEX(i32 %211, i32 %212, i32 65535, i32 0)
  br label %214

214:                                              ; preds = %210, %138
  %215 = load i32*, i32** @alpha2, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @SSB_SPROM1_CCODE, align 4
  %219 = call i32 @SPEX(i32 %217, i32 %218, i32 65280, i32 8)
  %220 = load i32*, i32** @alpha2, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @SSB_SPROM1_CCODE, align 4
  %224 = call i32 @SPEX(i32 %222, i32 %223, i32 255, i32 0)
  %225 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %226 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %4, align 8
  %229 = load i32, i32* @SSB_SPROM1_AGAIN_BG, align 4
  %230 = load i32, i32* @SSB_SPROM1_AGAIN_BG_SHIFT, align 4
  %231 = call i8* @r123_extract_antgain(i32 %227, i32* %228, i32 %229, i32 %230)
  %232 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %233 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  store i8* %231, i8** %234, align 8
  %235 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %236 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %4, align 8
  %239 = load i32, i32* @SSB_SPROM1_AGAIN_A, align 4
  %240 = load i32, i32* @SSB_SPROM1_AGAIN_A_SHIFT, align 4
  %241 = call i8* @r123_extract_antgain(i32 %237, i32* %238, i32 %239, i32 %240)
  %242 = load %struct.ssb_sprom*, %struct.ssb_sprom** %3, align 8
  %243 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  store i8* %241, i8** %244, align 8
  ret void
}

declare dso_local i32 @SPOFF(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @SPEX(i32, i32, i32, i32) #1

declare dso_local i8* @r123_extract_antgain(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
