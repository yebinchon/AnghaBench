; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_fiber_aneg_smachine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_fiber_aneg_smachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tg3_fiber_aneginfo = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@MAC_STATUS = common dso_local global i32 0, align 4
@MAC_STATUS_RCVD_CFG = common dso_local global i32 0, align 4
@MAC_RX_AUTO_NEG = common dso_local global i32 0, align 4
@ANEG_CFG_ACK = common dso_local global i32 0, align 4
@ANEG_OK = common dso_local global i32 0, align 4
@MR_AN_ENABLE = common dso_local global i32 0, align 4
@MR_RESTART_AN = common dso_local global i32 0, align 4
@MR_AN_COMPLETE = common dso_local global i32 0, align 4
@MR_PAGE_RX = common dso_local global i32 0, align 4
@MR_NP_LOADED = common dso_local global i32 0, align 4
@MAC_TX_AUTO_NEG = common dso_local global i32 0, align 4
@MAC_MODE_SEND_CONFIGS = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@ANEG_TIMER_ENAB = common dso_local global i32 0, align 4
@ANEG_STATE_SETTLE_TIME = common dso_local global i64 0, align 8
@ANEG_DONE = common dso_local global i32 0, align 4
@MR_TOGGLE_TX = common dso_local global i32 0, align 4
@ANEG_CFG_FD = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@ANEG_CFG_PS1 = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@ANEG_CFG_PS2 = common dso_local global i32 0, align 4
@ANEG_CFG_INVAL = common dso_local global i32 0, align 4
@ANEG_FAILED = common dso_local global i32 0, align 4
@MR_LP_ADV_FULL_DUPLEX = common dso_local global i32 0, align 4
@MR_LP_ADV_HALF_DUPLEX = common dso_local global i32 0, align 4
@MR_LP_ADV_SYM_PAUSE = common dso_local global i32 0, align 4
@MR_LP_ADV_ASYM_PAUSE = common dso_local global i32 0, align 4
@MR_LP_ADV_REMOTE_FAULT1 = common dso_local global i32 0, align 4
@MR_LP_ADV_REMOTE_FAULT2 = common dso_local global i32 0, align 4
@MR_LP_ADV_NEXT_PAGE = common dso_local global i32 0, align 4
@MR_TOGGLE_RX = common dso_local global i32 0, align 4
@MR_NP_RX = common dso_local global i32 0, align 4
@ANEG_CFG_HD = common dso_local global i32 0, align 4
@ANEG_CFG_RF1 = common dso_local global i32 0, align 4
@ANEG_CFG_RF2 = common dso_local global i32 0, align 4
@ANEG_CFG_NP = common dso_local global i32 0, align 4
@MR_LINK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, %struct.tg3_fiber_aneginfo*)* @tg3_fiber_aneg_smachine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_fiber_aneg_smachine(%struct.tg3* %0, %struct.tg3_fiber_aneginfo* %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.tg3_fiber_aneginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store %struct.tg3_fiber_aneginfo* %1, %struct.tg3_fiber_aneginfo** %4, align 8
  %9 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %10 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %15 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %17 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %19 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %21 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %20, i32 0, i32 4
  store i32 0, i32* %21, align 8
  %22 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %23 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %22, i32 0, i32 5
  store i32 0, i32* %23, align 4
  %24 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %25 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %24, i32 0, i32 6
  store i32 0, i32* %25, align 8
  %26 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %27 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %26, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %29 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %28, i32 0, i32 8
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %13, %2
  %31 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %32 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i32, i32* @MAC_STATUS, align 4
  %36 = call i32 @tr32(i32 %35)
  %37 = load i32, i32* @MAC_STATUS_RCVD_CFG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %30
  %41 = load i32, i32* @MAC_RX_AUTO_NEG, align 4
  %42 = call i32 @tr32(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %45 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %51 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %53 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %52, i32 0, i32 6
  store i32 0, i32* %53, align 8
  %54 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %55 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %54, i32 0, i32 5
  store i32 0, i32* %55, align 4
  br label %69

56:                                               ; preds = %40
  %57 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %58 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %64 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %63, i32 0, i32 6
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %67 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @ANEG_CFG_ACK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %76 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %75, i32 0, i32 8
  store i32 1, i32* %76, align 8
  br label %80

77:                                               ; preds = %69
  %78 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %79 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %78, i32 0, i32 8
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %82 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %81, i32 0, i32 7
  store i32 0, i32* %82, align 4
  br label %94

83:                                               ; preds = %30
  %84 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %85 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %84, i32 0, i32 7
  store i32 1, i32* %85, align 4
  %86 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %87 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %86, i32 0, i32 4
  store i32 0, i32* %87, align 8
  %88 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %89 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %88, i32 0, i32 5
  store i32 0, i32* %89, align 4
  %90 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %91 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %90, i32 0, i32 6
  store i32 0, i32* %91, align 8
  %92 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %93 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %92, i32 0, i32 8
  store i32 0, i32* %93, align 8
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %83, %80
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %97 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @ANEG_OK, align 4
  store i32 %98, i32* %8, align 4
  %99 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %100 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  switch i32 %101, label %616 [
    i32 128, label %102
    i32 139, label %115
    i32 129, label %151
    i32 130, label %181
    i32 136, label %198
    i32 142, label %200
    i32 143, label %255
    i32 140, label %269
    i32 141, label %293
    i32 137, label %334
    i32 138, label %500
    i32 134, label %556
    i32 135, label %577
    i32 133, label %605
    i32 131, label %614
    i32 132, label %615
  ]

102:                                              ; preds = %94
  %103 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %104 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MR_AN_ENABLE, align 4
  %107 = load i32, i32* @MR_RESTART_AN, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %113 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %112, i32 0, i32 0
  store i32 139, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %102
  br label %115

115:                                              ; preds = %94, %114
  %116 = load i32, i32* @MR_AN_COMPLETE, align 4
  %117 = load i32, i32* @MR_PAGE_RX, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %121 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %125 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MR_AN_ENABLE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %115
  %131 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %132 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %134 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %133, i32 0, i32 3
  store i64 0, i64* %134, align 8
  %135 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %136 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %135, i32 0, i32 4
  store i32 0, i32* %136, align 8
  %137 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %138 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %137, i32 0, i32 5
  store i32 0, i32* %138, align 4
  %139 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %140 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %139, i32 0, i32 6
  store i32 0, i32* %140, align 8
  %141 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %142 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %141, i32 0, i32 7
  store i32 0, i32* %142, align 4
  %143 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %144 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %143, i32 0, i32 8
  store i32 0, i32* %144, align 8
  %145 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %146 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %145, i32 0, i32 0
  store i32 129, i32* %146, align 8
  br label %150

147:                                              ; preds = %115
  %148 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %149 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %148, i32 0, i32 0
  store i32 136, i32* %149, align 8
  br label %150

150:                                              ; preds = %147, %130
  br label %618

151:                                              ; preds = %94
  %152 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %153 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %156 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* @MR_NP_LOADED, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %160 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %164 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %163, i32 0, i32 10
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* @MAC_TX_AUTO_NEG, align 4
  %166 = call i32 @tw32(i32 %165, i32 0)
  %167 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %168 = load %struct.tg3*, %struct.tg3** %3, align 8
  %169 = getelementptr inbounds %struct.tg3, %struct.tg3* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load i32, i32* @MAC_MODE, align 4
  %173 = load %struct.tg3*, %struct.tg3** %3, align 8
  %174 = getelementptr inbounds %struct.tg3, %struct.tg3* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @tw32_f(i32 %172, i32 %175)
  %177 = call i32 @udelay(i32 40)
  %178 = load i32, i32* @ANEG_TIMER_ENAB, align 4
  store i32 %178, i32* %8, align 4
  %179 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %180 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %179, i32 0, i32 0
  store i32 130, i32* %180, align 8
  br label %181

181:                                              ; preds = %94, %151
  %182 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %183 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %186 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub i64 %184, %187
  store i64 %188, i64* %6, align 8
  %189 = load i64, i64* %6, align 8
  %190 = load i64, i64* @ANEG_STATE_SETTLE_TIME, align 8
  %191 = icmp ugt i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %181
  %193 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %194 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %193, i32 0, i32 0
  store i32 142, i32* %194, align 8
  br label %197

195:                                              ; preds = %181
  %196 = load i32, i32* @ANEG_TIMER_ENAB, align 4
  store i32 %196, i32* %8, align 4
  br label %197

197:                                              ; preds = %195, %192
  br label %618

198:                                              ; preds = %94
  %199 = load i32, i32* @ANEG_DONE, align 4
  store i32 %199, i32* %8, align 4
  br label %618

200:                                              ; preds = %94
  %201 = load i32, i32* @MR_TOGGLE_TX, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %204 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* @ANEG_CFG_FD, align 4
  %208 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %209 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %208, i32 0, i32 10
  store i32 %207, i32* %209, align 8
  %210 = load %struct.tg3*, %struct.tg3** %3, align 8
  %211 = getelementptr inbounds %struct.tg3, %struct.tg3* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @tg3_advert_flowctrl_1000X(i32 %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %200
  %220 = load i32, i32* @ANEG_CFG_PS1, align 4
  %221 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %222 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %219, %200
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load i32, i32* @ANEG_CFG_PS2, align 4
  %232 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %233 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %232, i32 0, i32 10
  %234 = load i32, i32* %233, align 8
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 8
  br label %236

236:                                              ; preds = %230, %225
  %237 = load i32, i32* @MAC_TX_AUTO_NEG, align 4
  %238 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %239 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @tw32(i32 %237, i32 %240)
  %242 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %243 = load %struct.tg3*, %struct.tg3** %3, align 8
  %244 = getelementptr inbounds %struct.tg3, %struct.tg3* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  %247 = load i32, i32* @MAC_MODE, align 4
  %248 = load %struct.tg3*, %struct.tg3** %3, align 8
  %249 = getelementptr inbounds %struct.tg3, %struct.tg3* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @tw32_f(i32 %247, i32 %250)
  %252 = call i32 @udelay(i32 40)
  %253 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %254 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %253, i32 0, i32 0
  store i32 143, i32* %254, align 8
  br label %618

255:                                              ; preds = %94
  %256 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %257 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %255
  %261 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %262 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %267 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %266, i32 0, i32 0
  store i32 140, i32* %267, align 8
  br label %268

268:                                              ; preds = %265, %260, %255
  br label %618

269:                                              ; preds = %94
  %270 = load i32, i32* @ANEG_CFG_ACK, align 4
  %271 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %272 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %271, i32 0, i32 10
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  %275 = load i32, i32* @MAC_TX_AUTO_NEG, align 4
  %276 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %277 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %276, i32 0, i32 10
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @tw32(i32 %275, i32 %278)
  %280 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %281 = load %struct.tg3*, %struct.tg3** %3, align 8
  %282 = getelementptr inbounds %struct.tg3, %struct.tg3* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* @MAC_MODE, align 4
  %286 = load %struct.tg3*, %struct.tg3** %3, align 8
  %287 = getelementptr inbounds %struct.tg3, %struct.tg3* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @tw32_f(i32 %285, i32 %288)
  %290 = call i32 @udelay(i32 40)
  %291 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %292 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %291, i32 0, i32 0
  store i32 141, i32* %292, align 8
  br label %293

293:                                              ; preds = %94, %269
  %294 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %295 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %294, i32 0, i32 8
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %319

298:                                              ; preds = %293
  %299 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %300 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @ANEG_CFG_ACK, align 4
  %303 = xor i32 %302, -1
  %304 = and i32 %301, %303
  %305 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %306 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @ANEG_CFG_ACK, align 4
  %309 = xor i32 %308, -1
  %310 = and i32 %307, %309
  %311 = icmp eq i32 %304, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %298
  %313 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %314 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %313, i32 0, i32 0
  store i32 137, i32* %314, align 8
  br label %318

315:                                              ; preds = %298
  %316 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %317 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %316, i32 0, i32 0
  store i32 139, i32* %317, align 8
  br label %318

318:                                              ; preds = %315, %312
  br label %333

319:                                              ; preds = %293
  %320 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %321 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %332

324:                                              ; preds = %319
  %325 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %326 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %324
  %330 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %331 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %330, i32 0, i32 0
  store i32 139, i32* %331, align 8
  br label %332

332:                                              ; preds = %329, %324, %319
  br label %333

333:                                              ; preds = %332, %318
  br label %618

334:                                              ; preds = %94
  %335 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %336 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @ANEG_CFG_INVAL, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %334
  %342 = load i32, i32* @ANEG_FAILED, align 4
  store i32 %342, i32* %8, align 4
  br label %618

343:                                              ; preds = %334
  %344 = load i32, i32* @MR_LP_ADV_FULL_DUPLEX, align 4
  %345 = load i32, i32* @MR_LP_ADV_HALF_DUPLEX, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @MR_LP_ADV_SYM_PAUSE, align 4
  %348 = or i32 %346, %347
  %349 = load i32, i32* @MR_LP_ADV_ASYM_PAUSE, align 4
  %350 = or i32 %348, %349
  %351 = load i32, i32* @MR_LP_ADV_REMOTE_FAULT1, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @MR_LP_ADV_REMOTE_FAULT2, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* @MR_LP_ADV_NEXT_PAGE, align 4
  %356 = or i32 %354, %355
  %357 = load i32, i32* @MR_TOGGLE_RX, align 4
  %358 = or i32 %356, %357
  %359 = load i32, i32* @MR_NP_RX, align 4
  %360 = or i32 %358, %359
  %361 = xor i32 %360, -1
  %362 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %363 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %362, i32 0, i32 9
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, %361
  store i32 %365, i32* %363, align 4
  %366 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %367 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @ANEG_CFG_FD, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %343
  %373 = load i32, i32* @MR_LP_ADV_FULL_DUPLEX, align 4
  %374 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %375 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %374, i32 0, i32 9
  %376 = load i32, i32* %375, align 4
  %377 = or i32 %376, %373
  store i32 %377, i32* %375, align 4
  br label %378

378:                                              ; preds = %372, %343
  %379 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %380 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @ANEG_CFG_HD, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %378
  %386 = load i32, i32* @MR_LP_ADV_HALF_DUPLEX, align 4
  %387 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %388 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %387, i32 0, i32 9
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %389, %386
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %385, %378
  %392 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %393 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* @ANEG_CFG_PS1, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %391
  %399 = load i32, i32* @MR_LP_ADV_SYM_PAUSE, align 4
  %400 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %401 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %400, i32 0, i32 9
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, %399
  store i32 %403, i32* %401, align 4
  br label %404

404:                                              ; preds = %398, %391
  %405 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %406 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @ANEG_CFG_PS2, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %404
  %412 = load i32, i32* @MR_LP_ADV_ASYM_PAUSE, align 4
  %413 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %414 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %413, i32 0, i32 9
  %415 = load i32, i32* %414, align 4
  %416 = or i32 %415, %412
  store i32 %416, i32* %414, align 4
  br label %417

417:                                              ; preds = %411, %404
  %418 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %419 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  %421 = load i32, i32* @ANEG_CFG_RF1, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %417
  %425 = load i32, i32* @MR_LP_ADV_REMOTE_FAULT1, align 4
  %426 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %427 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 4
  %429 = or i32 %428, %425
  store i32 %429, i32* %427, align 4
  br label %430

430:                                              ; preds = %424, %417
  %431 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %432 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @ANEG_CFG_RF2, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %430
  %438 = load i32, i32* @MR_LP_ADV_REMOTE_FAULT2, align 4
  %439 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %440 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %439, i32 0, i32 9
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %441, %438
  store i32 %442, i32* %440, align 4
  br label %443

443:                                              ; preds = %437, %430
  %444 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %445 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @ANEG_CFG_NP, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %456

450:                                              ; preds = %443
  %451 = load i32, i32* @MR_LP_ADV_NEXT_PAGE, align 4
  %452 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %453 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %452, i32 0, i32 9
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %451
  store i32 %455, i32* %453, align 4
  br label %456

456:                                              ; preds = %450, %443
  %457 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %458 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %457, i32 0, i32 3
  %459 = load i64, i64* %458, align 8
  %460 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %461 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %460, i32 0, i32 2
  store i64 %459, i64* %461, align 8
  %462 = load i32, i32* @MR_TOGGLE_TX, align 4
  %463 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %464 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %463, i32 0, i32 9
  %465 = load i32, i32* %464, align 4
  %466 = xor i32 %465, %462
  store i32 %466, i32* %464, align 4
  %467 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %468 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = and i32 %469, 8
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %456
  %473 = load i32, i32* @MR_TOGGLE_RX, align 4
  %474 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %475 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %474, i32 0, i32 9
  %476 = load i32, i32* %475, align 4
  %477 = or i32 %476, %473
  store i32 %477, i32* %475, align 4
  br label %478

478:                                              ; preds = %472, %456
  %479 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %480 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @ANEG_CFG_NP, align 4
  %483 = and i32 %481, %482
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %478
  %486 = load i32, i32* @MR_NP_RX, align 4
  %487 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %488 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %487, i32 0, i32 9
  %489 = load i32, i32* %488, align 4
  %490 = or i32 %489, %486
  store i32 %490, i32* %488, align 4
  br label %491

491:                                              ; preds = %485, %478
  %492 = load i32, i32* @MR_PAGE_RX, align 4
  %493 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %494 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %493, i32 0, i32 9
  %495 = load i32, i32* %494, align 4
  %496 = or i32 %495, %492
  store i32 %496, i32* %494, align 4
  %497 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %498 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %497, i32 0, i32 0
  store i32 138, i32* %498, align 8
  %499 = load i32, i32* @ANEG_TIMER_ENAB, align 4
  store i32 %499, i32* %8, align 4
  br label %618

500:                                              ; preds = %94
  %501 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %502 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %501, i32 0, i32 6
  %503 = load i32, i32* %502, align 8
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %500
  %506 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %507 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %505
  %511 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %512 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %511, i32 0, i32 0
  store i32 139, i32* %512, align 8
  br label %618

513:                                              ; preds = %505, %500
  %514 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %515 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %514, i32 0, i32 3
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %518 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %517, i32 0, i32 2
  %519 = load i64, i64* %518, align 8
  %520 = sub i64 %516, %519
  store i64 %520, i64* %6, align 8
  %521 = load i64, i64* %6, align 8
  %522 = load i64, i64* @ANEG_STATE_SETTLE_TIME, align 8
  %523 = icmp ugt i64 %521, %522
  br i1 %523, label %524, label %555

524:                                              ; preds = %513
  %525 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %526 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %525, i32 0, i32 9
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @MR_LP_ADV_NEXT_PAGE, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %534, label %531

531:                                              ; preds = %524
  %532 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %533 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %532, i32 0, i32 0
  store i32 134, i32* %533, align 8
  br label %554

534:                                              ; preds = %524
  %535 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %536 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %535, i32 0, i32 10
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @ANEG_CFG_NP, align 4
  %539 = and i32 %537, %538
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %551

541:                                              ; preds = %534
  %542 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %543 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %542, i32 0, i32 9
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* @MR_NP_RX, align 4
  %546 = and i32 %544, %545
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %541
  %549 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %550 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %549, i32 0, i32 0
  store i32 134, i32* %550, align 8
  br label %553

551:                                              ; preds = %541, %534
  %552 = load i32, i32* @ANEG_FAILED, align 4
  store i32 %552, i32* %8, align 4
  br label %553

553:                                              ; preds = %551, %548
  br label %554

554:                                              ; preds = %553, %531
  br label %555

555:                                              ; preds = %554, %513
  br label %618

556:                                              ; preds = %94
  %557 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %558 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %557, i32 0, i32 3
  %559 = load i64, i64* %558, align 8
  %560 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %561 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %560, i32 0, i32 2
  store i64 %559, i64* %561, align 8
  %562 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %563 = xor i32 %562, -1
  %564 = load %struct.tg3*, %struct.tg3** %3, align 8
  %565 = getelementptr inbounds %struct.tg3, %struct.tg3* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, %563
  store i32 %567, i32* %565, align 4
  %568 = load i32, i32* @MAC_MODE, align 4
  %569 = load %struct.tg3*, %struct.tg3** %3, align 8
  %570 = getelementptr inbounds %struct.tg3, %struct.tg3* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @tw32_f(i32 %568, i32 %571)
  %573 = call i32 @udelay(i32 40)
  %574 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %575 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %574, i32 0, i32 0
  store i32 135, i32* %575, align 8
  %576 = load i32, i32* @ANEG_TIMER_ENAB, align 4
  store i32 %576, i32* %8, align 4
  br label %618

577:                                              ; preds = %94
  %578 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %579 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %578, i32 0, i32 6
  %580 = load i32, i32* %579, align 8
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %590

582:                                              ; preds = %577
  %583 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %584 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %583, i32 0, i32 1
  %585 = load i32, i32* %584, align 4
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %590

587:                                              ; preds = %582
  %588 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %589 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %588, i32 0, i32 0
  store i32 139, i32* %589, align 8
  br label %618

590:                                              ; preds = %582, %577
  %591 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %592 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %591, i32 0, i32 3
  %593 = load i64, i64* %592, align 8
  %594 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %595 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %594, i32 0, i32 2
  %596 = load i64, i64* %595, align 8
  %597 = sub i64 %593, %596
  store i64 %597, i64* %6, align 8
  %598 = load i64, i64* %6, align 8
  %599 = load i64, i64* @ANEG_STATE_SETTLE_TIME, align 8
  %600 = icmp ugt i64 %598, %599
  br i1 %600, label %601, label %604

601:                                              ; preds = %590
  %602 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %603 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %602, i32 0, i32 0
  store i32 133, i32* %603, align 8
  br label %604

604:                                              ; preds = %601, %590
  br label %618

605:                                              ; preds = %94
  %606 = load i32, i32* @MR_AN_COMPLETE, align 4
  %607 = load i32, i32* @MR_LINK_OK, align 4
  %608 = or i32 %606, %607
  %609 = load %struct.tg3_fiber_aneginfo*, %struct.tg3_fiber_aneginfo** %4, align 8
  %610 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %609, i32 0, i32 9
  %611 = load i32, i32* %610, align 4
  %612 = or i32 %611, %608
  store i32 %612, i32* %610, align 4
  %613 = load i32, i32* @ANEG_DONE, align 4
  store i32 %613, i32* %8, align 4
  br label %618

614:                                              ; preds = %94
  br label %618

615:                                              ; preds = %94
  br label %618

616:                                              ; preds = %94
  %617 = load i32, i32* @ANEG_FAILED, align 4
  store i32 %617, i32* %8, align 4
  br label %618

618:                                              ; preds = %616, %615, %614, %605, %604, %587, %556, %555, %510, %491, %341, %333, %268, %236, %198, %197, %150
  %619 = load i32, i32* %8, align 4
  ret i32 %619
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @tg3_advert_flowctrl_1000X(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
