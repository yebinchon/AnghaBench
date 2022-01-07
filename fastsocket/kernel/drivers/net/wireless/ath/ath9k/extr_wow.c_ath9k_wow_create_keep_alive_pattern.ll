; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_create_keep_alive_pattern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_wow.c_ath9k_wow_create_keep_alive_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@KAL_NUM_DATA_WORDS = common dso_local global i32 0, align 4
@KAL_FRAME_LEN = common dso_local global i32 0, align 4
@MAX_RATE_POWER = common dso_local global i32 0, align 4
@KAL_ANTENNA_MODE = common dso_local global i32 0, align 4
@KAL_NUM_DESC_WORDS = common dso_local global i32 0, align 4
@AR_WOW_KA_DESC_WORD2 = common dso_local global i32 0, align 4
@KAL_FRAME_TYPE = common dso_local global i32 0, align 4
@KAL_FRAME_SUB_TYPE = common dso_local global i32 0, align 4
@KAL_TO_DS = common dso_local global i32 0, align 4
@KAL_DURATION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_wow_create_keep_alive_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_wow_create_keep_alive_pattern(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [13 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %3, align 8
  %13 = load i32, i32* @ETH_ALEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = bitcast [13 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 52, i1 false)
  %21 = load i32, i32* @KAL_NUM_DATA_WORDS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %25 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32* %16, i32 %26, i32 %27)
  %29 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %30 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32* %19, i32 %31, i32 %32)
  %34 = load i32, i32* @KAL_FRAME_LEN, align 4
  %35 = load i32, i32* @MAX_RATE_POWER, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %34, %36
  %38 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 0
  store i32 %37, i32* %38, align 16
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %1
  %43 = load i32, i32* @KAL_ANTENNA_MODE, align 4
  %44 = shl i32 %43, 25
  %45 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 0
  %46 = load i32, i32* %45, align 16
  %47 = add nsw i32 %46, %44
  store i32 %47, i32* %45, align 16
  br label %48

48:                                               ; preds = %42, %1
  %49 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 3
  store i32 11, i32* %50, align 4
  %51 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %51, align 16
  %52 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %53 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 2
  %56 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 7
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 2
  store i32 983040, i32* %61, align 8
  br label %64

62:                                               ; preds = %48
  %63 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 2
  store i32 458752, i32* %63, align 8
  br label %64

64:                                               ; preds = %62, %60
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %80, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @KAL_NUM_DESC_WORDS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %71 = load i32, i32* @AR_WOW_KA_DESC_WORD2, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, 4
  %74 = add nsw i32 %71, %73
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @REG_WRITE(%struct.ath_hw* %70, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = load i32, i32* @AR_WOW_KA_DESC_WORD2, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 4
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [13 x i32], [13 x i32]* %7, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @REG_WRITE(%struct.ath_hw* %88, i32 %92, i32 %96)
  br label %98

98:                                               ; preds = %87, %83
  %99 = load i32, i32* @KAL_FRAME_TYPE, align 4
  %100 = shl i32 %99, 2
  %101 = load i32, i32* @KAL_FRAME_SUB_TYPE, align 4
  %102 = shl i32 %101, 4
  %103 = or i32 %100, %102
  %104 = load i32, i32* @KAL_TO_DS, align 4
  %105 = shl i32 %104, 8
  %106 = or i32 %103, %105
  %107 = load i32, i32* @KAL_DURATION_ID, align 4
  %108 = shl i32 %107, 16
  %109 = or i32 %106, %108
  %110 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %109, i32* %110, align 16
  %111 = getelementptr inbounds i32, i32* %19, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 24
  %114 = getelementptr inbounds i32, i32* %19, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 16
  %117 = or i32 %113, %116
  %118 = getelementptr inbounds i32, i32* %19, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 8
  %121 = or i32 %117, %120
  %122 = getelementptr inbounds i32, i32* %19, i64 0
  %123 = load i32, i32* %122, align 16
  %124 = or i32 %121, %123
  %125 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %16, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 24
  %129 = getelementptr inbounds i32, i32* %16, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = shl i32 %130, 16
  %132 = or i32 %128, %131
  %133 = getelementptr inbounds i32, i32* %19, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = or i32 %132, %135
  %137 = getelementptr inbounds i32, i32* %19, i64 4
  %138 = load i32, i32* %137, align 16
  %139 = or i32 %136, %138
  %140 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds i32, i32* %16, i64 5
  %142 = load i32, i32* %141, align 4
  %143 = shl i32 %142, 24
  %144 = getelementptr inbounds i32, i32* %16, i64 4
  %145 = load i32, i32* %144, align 16
  %146 = shl i32 %145, 16
  %147 = or i32 %143, %146
  %148 = getelementptr inbounds i32, i32* %16, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = or i32 %147, %150
  %152 = getelementptr inbounds i32, i32* %16, i64 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %151, %153
  %155 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 %154, i32* %155, align 4
  %156 = getelementptr inbounds i32, i32* %19, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 24
  %159 = getelementptr inbounds i32, i32* %19, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = shl i32 %160, 16
  %162 = or i32 %158, %161
  %163 = getelementptr inbounds i32, i32* %19, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = or i32 %162, %165
  %167 = getelementptr inbounds i32, i32* %19, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = or i32 %166, %168
  %170 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 %169, i32* %170, align 16
  %171 = getelementptr inbounds i32, i32* %19, i64 5
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = getelementptr inbounds i32, i32* %19, i64 4
  %175 = load i32, i32* %174, align 16
  %176 = or i32 %173, %175
  %177 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %176, i32* %177, align 4
  %178 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %179 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %98
  %182 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %183 = load i32, i32* @AR_WOW_KA_DESC_WORD2, align 4
  %184 = add nsw i32 %183, 48
  %185 = call i32 @REG_WRITE(%struct.ath_hw* %182, i32 %184, i32 0)
  %186 = call i32 @AR_WOW_TXBUF(i32 13)
  store i32 %186, i32* %10, align 4
  br label %189

187:                                              ; preds = %98
  %188 = call i32 @AR_WOW_TXBUF(i32 12)
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %187, %181
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %205, %189
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* @KAL_NUM_DATA_WORDS, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* %9, align 4
  %198 = mul nsw i32 %197, 4
  %199 = add nsw i32 %196, %198
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %23, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @REG_WRITE(%struct.ath_hw* %195, i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %194
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %190

208:                                              ; preds = %190
  %209 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %209)
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

declare dso_local i32 @AR_WOW_TXBUF(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
