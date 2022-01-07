; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_dump_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt6000.c_nxt6000_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxt6000_state = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"NXT6000 status:\00", align 1
@RS_COR_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" DATA DESCR LOCK: %d,\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" DATA SYNC LOCK: %d,\00", align 1
@VIT_SYNC_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c" VITERBI LOCK: %d,\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" VITERBI CODERATE: 1/2,\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c" VITERBI CODERATE: 2/3,\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c" VITERBI CODERATE: 3/4,\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c" VITERBI CODERATE: 5/6,\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c" VITERBI CODERATE: 7/8,\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c" VITERBI CODERATE: Reserved,\00", align 1
@OFDM_COR_STAT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c" CHCTrack: %d,\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" TPSLock: %d,\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c" SYRLock: %d,\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c" AGCLock: %d,\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c" CoreState: IDLE,\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c" CoreState: WAIT_AGC,\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c" CoreState: WAIT_SYR,\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c" CoreState: WAIT_PPM,\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c" CoreState: WAIT_TRL,\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c" CoreState: WAIT_TPS,\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c" CoreState: MONITOR_TPS,\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c" CoreState: Reserved,\00", align 1
@OFDM_SYR_STAT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c" SYRMode: %s,\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"8K\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"2K\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c" SYRGuard: 1/32,\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c" SYRGuard: 1/16,\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c" SYRGuard: 1/8,\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c" SYRGuard: 1/4,\00", align 1
@OFDM_TPS_RCVD_3 = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [13 x i8] c" TPSLP: 1/2,\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c" TPSLP: 2/3,\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c" TPSLP: 3/4,\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c" TPSLP: 5/6,\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c" TPSLP: 7/8,\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c" TPSLP: Reserved,\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c" TPSHP: 1/2,\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c" TPSHP: 2/3,\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" TPSHP: 3/4,\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c" TPSHP: 5/6,\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" TPSHP: 7/8,\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c" TPSHP: Reserved,\00", align 1
@OFDM_TPS_RCVD_4 = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [14 x i8] c" TPSMode: %s,\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c" TPSGuard: 1/32,\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c" TPSGuard: 1/16,\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c" TPSGuard: 1/8,\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c" TPSGuard: 1/4,\00", align 1
@RF_AGC_VAL_1 = common dso_local global i32 0, align 4
@RF_AGC_STATUS = common dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [18 x i8] c" RF AGC LOCK: %d,\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nxt6000_state*)* @nxt6000_dump_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nxt6000_dump_status(%struct.nxt6000_state* %0) #0 {
  %2 = alloca %struct.nxt6000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.nxt6000_state* %0, %struct.nxt6000_state** %2, align 8
  %4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %6 = load i32, i32* @RS_COR_STAT, align 4
  %7 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 1
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = ashr i32 %11, 1
  %13 = and i32 %12, 1
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %16 = load i32, i32* @VIT_SYNC_STATUS, align 4
  %17 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 7
  %20 = and i32 %19, 1
  %21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 7
  switch i32 %24, label %35 [
    i32 0, label %25
    i32 1, label %27
    i32 2, label %29
    i32 3, label %31
    i32 4, label %33
  ]

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %37

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %37

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  br label %37

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %37

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %37

35:                                               ; preds = %1
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %33, %31, %29, %27, %25
  %38 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %39 = load i32, i32* @OFDM_COR_STAT, align 4
  %40 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = ashr i32 %41, 7
  %43 = and i32 %42, 1
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = ashr i32 %45, 6
  %47 = and i32 %46, 1
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %49, 5
  %51 = and i32 %50, 1
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = ashr i32 %53, 4
  %55 = and i32 %54, 1
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 15
  switch i32 %58, label %73 [
    i32 0, label %59
    i32 2, label %61
    i32 3, label %63
    i32 4, label %65
    i32 1, label %67
    i32 5, label %69
    i32 6, label %71
  ]

59:                                               ; preds = %37
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %75

61:                                               ; preds = %37
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %75

63:                                               ; preds = %37
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %75

65:                                               ; preds = %37
  %66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %75

67:                                               ; preds = %37
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %75

69:                                               ; preds = %37
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  br label %75

71:                                               ; preds = %37
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  br label %75

73:                                               ; preds = %37
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %71, %69, %67, %65, %63, %61, %59
  %76 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %77 = load i32, i32* @OFDM_SYR_STAT, align 4
  %78 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = ashr i32 %79, 4
  %81 = and i32 %80, 1
  %82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = ashr i32 %83, 2
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %90, 4
  %92 = and i32 %91, 3
  switch i32 %92, label %101 [
    i32 0, label %93
    i32 1, label %95
    i32 2, label %97
    i32 3, label %99
  ]

93:                                               ; preds = %75
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  br label %101

95:                                               ; preds = %75
  %96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  br label %101

97:                                               ; preds = %75
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0))
  br label %101

99:                                               ; preds = %75
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  br label %101

101:                                              ; preds = %75, %99, %97, %95, %93
  %102 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %103 = load i32, i32* @OFDM_TPS_RCVD_3, align 4
  %104 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %102, i32 %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = ashr i32 %105, 4
  %107 = and i32 %106, 7
  switch i32 %107, label %118 [
    i32 0, label %108
    i32 1, label %110
    i32 2, label %112
    i32 3, label %114
    i32 4, label %116
  ]

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  br label %120

110:                                              ; preds = %101
  %111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0))
  br label %120

112:                                              ; preds = %101
  %113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0))
  br label %120

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  br label %120

116:                                              ; preds = %101
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  br label %120

118:                                              ; preds = %101
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %116, %114, %112, %110, %108
  %121 = load i32, i32* %3, align 4
  %122 = and i32 %121, 7
  switch i32 %122, label %133 [
    i32 0, label %123
    i32 1, label %125
    i32 2, label %127
    i32 3, label %129
    i32 4, label %131
  ]

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %135

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  br label %135

127:                                              ; preds = %120
  %128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0))
  br label %135

129:                                              ; preds = %120
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i64 0, i64 0))
  br label %135

131:                                              ; preds = %120
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  br label %135

133:                                              ; preds = %120
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %131, %129, %127, %125, %123
  %136 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %137 = load i32, i32* @OFDM_TPS_RCVD_4, align 4
  %138 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %136, i32 %137)
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* %3, align 4
  %140 = and i32 %139, 1
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  %144 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* %143)
  %145 = load i32, i32* %3, align 4
  %146 = ashr i32 %145, 4
  %147 = and i32 %146, 3
  switch i32 %147, label %156 [
    i32 0, label %148
    i32 1, label %150
    i32 2, label %152
    i32 3, label %154
  ]

148:                                              ; preds = %135
  %149 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0))
  br label %156

150:                                              ; preds = %135
  %151 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0))
  br label %156

152:                                              ; preds = %135
  %153 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0))
  br label %156

154:                                              ; preds = %135
  %155 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0))
  br label %156

156:                                              ; preds = %135, %154, %152, %150, %148
  %157 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %158 = load i32, i32* @RF_AGC_VAL_1, align 4
  %159 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %157, i32 %158)
  %160 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %161 = load i32, i32* @RF_AGC_STATUS, align 4
  %162 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %160, i32 %161)
  store i32 %162, i32* %3, align 4
  %163 = load %struct.nxt6000_state*, %struct.nxt6000_state** %2, align 8
  %164 = load i32, i32* @RF_AGC_STATUS, align 4
  %165 = call i32 @nxt6000_readreg(%struct.nxt6000_state* %163, i32 %164)
  store i32 %165, i32* %3, align 4
  %166 = load i32, i32* %3, align 4
  %167 = ashr i32 %166, 4
  %168 = and i32 %167, 1
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i32 %168)
  %170 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @nxt6000_readreg(%struct.nxt6000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
