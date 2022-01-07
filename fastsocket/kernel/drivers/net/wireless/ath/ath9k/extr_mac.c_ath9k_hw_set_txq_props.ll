; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_txq_props.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_set_txq_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_tx_queue_info* }
%struct.ath9k_tx_queue_info = type { i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i64 0, align 8
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Set TXQ properties, inactive queue: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Set queue properties for: %u\0A\00", align 1
@ATH9K_TXQ_USEDEFAULT = common dso_local global i64 0, align 8
@INIT_AIFS = common dso_local global i64 0, align 8
@INIT_CWMAX = common dso_local global i32 0, align 4
@INIT_SH_RETRY = common dso_local global i64 0, align 8
@INIT_LG_RETRY = common dso_local global i64 0, align 8
@ATH9K_TX_QUEUE_DATA = common dso_local global i64 0, align 8
@ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_set_txq_props(%struct.ath_hw* %0, i32 %1, %struct.ath9k_tx_queue_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_tx_queue_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ath_common*, align 8
  %10 = alloca %struct.ath9k_tx_queue_info*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath9k_tx_queue_info* %2, %struct.ath9k_tx_queue_info** %7, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %9, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %15, i64 %17
  store %struct.ath9k_tx_queue_info* %18, %struct.ath9k_tx_queue_info** %10, align 8
  %19 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %20 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ATH9K_TX_QUEUE_INACTIVE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %26 = load i32, i32* @QUEUE, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ath_dbg(%struct.ath_common* %25, i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %4, align 4
  br label %211

29:                                               ; preds = %3
  %30 = load %struct.ath_common*, %struct.ath_common** %9, align 8
  %31 = load i32, i32* @QUEUE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ath_dbg(%struct.ath_common* %30, i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %35 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %38 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %37, i32 0, i32 14
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %40 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %43 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %45 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %48 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %47, i32 0, i32 13
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %50 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %53 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %55 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ATH9K_TXQ_USEDEFAULT, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %29
  %60 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %61 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @min(i64 %62, i32 255)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %66 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %71

67:                                               ; preds = %29
  %68 = load i64, i64* @INIT_AIFS, align 8
  %69 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %70 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %59
  %72 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %73 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ATH9K_TXQ_USEDEFAULT, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %79 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @min(i64 %80, i32 1024)
  %82 = ptrtoint i8* %81 to i64
  store i64 %82, i64* %8, align 8
  %83 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %84 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %83, i32 0, i32 3
  store i64 1, i64* %84, align 8
  br label %85

85:                                               ; preds = %91, %77
  %86 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %87 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %93 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 %94, 1
  %96 = or i64 %95, 1
  %97 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %98 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %97, i32 0, i32 3
  store i64 %96, i64* %98, align 8
  br label %85

99:                                               ; preds = %85
  br label %106

100:                                              ; preds = %71
  %101 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %102 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %105 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %104, i32 0, i32 3
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %100, %99
  %107 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %108 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ATH9K_TXQ_USEDEFAULT, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %135

112:                                              ; preds = %106
  %113 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %114 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @min(i64 %115, i32 1024)
  %117 = ptrtoint i8* %116 to i64
  store i64 %117, i64* %8, align 8
  %118 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %119 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %118, i32 0, i32 4
  store i64 1, i64* %119, align 8
  br label %120

120:                                              ; preds = %126, %112
  %121 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %122 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %128 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = shl i64 %129, 1
  %131 = or i64 %130, 1
  %132 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %133 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  br label %120

134:                                              ; preds = %120
  br label %140

135:                                              ; preds = %106
  %136 = load i32, i32* @INIT_CWMAX, align 4
  %137 = sext i32 %136 to i64
  %138 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %139 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %138, i32 0, i32 4
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %135, %134
  %141 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %142 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %147 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @min(i64 %148, i32 15)
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %152 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %151, i32 0, i32 5
  store i64 %150, i64* %152, align 8
  br label %157

153:                                              ; preds = %140
  %154 = load i64, i64* @INIT_SH_RETRY, align 8
  %155 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %156 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %155, i32 0, i32 5
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %145
  %158 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %159 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %164 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = call i8* @min(i64 %165, i32 15)
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %169 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %168, i32 0, i32 6
  store i64 %167, i64* %169, align 8
  br label %174

170:                                              ; preds = %157
  %171 = load i64, i64* @INIT_LG_RETRY, align 8
  %172 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %173 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %172, i32 0, i32 6
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %170, %162
  %175 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %176 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %179 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %178, i32 0, i32 11
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %181 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %184 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %183, i32 0, i32 10
  store i32 %182, i32* %184, align 4
  %185 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %186 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %189 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %188, i32 0, i32 9
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %191 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %194 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 4
  %195 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %196 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %209 [
    i32 128, label %198
  ]

198:                                              ; preds = %174
  %199 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %200 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @ATH9K_TX_QUEUE_DATA, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @ATH9K_TXQ_USE_LOCKOUT_BKOFF_DIS, align 4
  %206 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %10, align 8
  %207 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %204, %198
  br label %210

209:                                              ; preds = %174
  br label %210

210:                                              ; preds = %209, %208
  store i32 1, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %24
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i8* @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
