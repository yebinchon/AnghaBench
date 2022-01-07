; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_rate_lookup_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_rate_lookup_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.brcms_c_rateset = type { i64, i32* }

@BRCM_MAXRATE = common dso_local global i32 0, align 4
@BRCMS_RATE_FLAG = common dso_local global i32 0, align 4
@BRCMS_RATE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"brcms_c_rate_lookup_init: invalid rate 0x%X in rate set\0A\00", align 1
@BRCM_RATE_24M = common dso_local global i32 0, align 4
@BRCM_RATE_12M = common dso_local global i32 0, align 4
@BRCM_RATE_6M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, %struct.brcms_c_rateset*)* @brcms_c_rate_lookup_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_rate_lookup_init(%struct.brcms_c_info* %0, %struct.brcms_c_rateset* %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca %struct.brcms_c_rateset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store %struct.brcms_c_rateset* %1, %struct.brcms_c_rateset** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @BRCM_MAXRATE, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @memset(i32* %16, i32 0, i32 %18)
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %68, %2
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %23 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %28 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BRCMS_RATE_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %68

37:                                               ; preds = %26
  %38 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %39 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BRCMS_RATE_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @BRCM_MAXRATE, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %51 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %4, align 8
  %56 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @brcms_err(i32 %54, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %68

62:                                               ; preds = %37
  %63 = load i32, i32* %5, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %49, %36
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %20

71:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  br label %72

72:                                               ; preds = %155, %71
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %73, %79
  br i1 %80, label %81, label %158

81:                                               ; preds = %72
  %82 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %83 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %5, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %81
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @is_ofdm_rate(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %8, align 4
  br label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %103, %101
  br label %155

106:                                              ; preds = %81
  %107 = load i32, i32* %5, align 4
  %108 = call i64 @is_ofdm_rate(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %155

127:                                              ; preds = %114
  %128 = load i32, i32* %5, align 4
  %129 = call i64 @is_ofdm_rate(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @BRCM_RATE_24M, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @BRCM_RATE_24M, align 4
  store i32 %136, i32* %6, align 4
  br label %146

137:                                              ; preds = %131
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @BRCM_RATE_12M, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* @BRCM_RATE_12M, align 4
  store i32 %142, i32* %6, align 4
  br label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @BRCM_RATE_6M, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %146

146:                                              ; preds = %145, %135
  br label %149

147:                                              ; preds = %127
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = load i32, i32* %6, align 4
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %149, %126, %105
  %156 = load i64, i64* %10, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %10, align 8
  br label %72

158:                                              ; preds = %72
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

declare dso_local i64 @is_ofdm_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
