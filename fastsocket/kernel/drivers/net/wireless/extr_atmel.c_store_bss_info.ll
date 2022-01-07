; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_store_bss_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_store_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.ieee80211_hdr = type { i64*, i64* }

@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@MAX_BSS_ENTRIES = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@SHORT_PREAMBLE = common dso_local global i32 0, align 4
@LONG_PREAMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*, %struct.ieee80211_hdr*, i32, i32, i64, i64, i64, i64*, i32)* @store_bss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_bss_info(%struct.atmel_private* %0, %struct.ieee80211_hdr* %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6, i64* %7, i32 %8) #0 {
  %10 = alloca %struct.atmel_private*, align 8
  %11 = alloca %struct.ieee80211_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %10, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %9
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  br label %34

30:                                               ; preds = %9
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %11, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64* [ %29, %26 ], [ %33, %30 ]
  store i64* %35, i64** %19, align 8
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %57, %34
  %37 = load i32, i32* %20, align 4
  %38 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %36
  %43 = load i64*, i64** %19, align 8
  %44 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %45 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @memcmp(i64* %43, i32 %51, i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %20, align 4
  store i32 %55, i32* %21, align 4
  br label %56

56:                                               ; preds = %54, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %20, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %20, align 4
  br label %36

60:                                               ; preds = %36
  %61 = load i32, i32* %21, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %93

63:                                               ; preds = %60
  %64 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %65 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MAX_BSS_ENTRIES, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %210

70:                                               ; preds = %63
  %71 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %72 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  store i32 %73, i32* %21, align 4
  %75 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %76 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = load i64*, i64** %19, align 8
  %84 = call i32 @memcpy(i32 %82, i64* %83, i64 6)
  %85 = load i64, i64* %15, align 8
  %86 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %87 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 %85, i64* %92, align 8
  br label %118

93:                                               ; preds = %60
  %94 = load i64, i64* %15, align 8
  %95 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %96 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %21, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %94, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %93
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %107 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i64 %105, i64* %112, align 8
  br label %113

113:                                              ; preds = %104, %93
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %210

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %121 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 7
  store i64 %119, i64* %126, align 8
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %129 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i32 %127, i32* %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %137 = and i32 %135, %136
  %138 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %139 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  store i32 %137, i32* %144, align 4
  %145 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %146 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %145, i32 0, i32 1
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load i64*, i64** %17, align 8
  %154 = load i64, i64* %16, align 8
  %155 = call i32 @memcpy(i32 %152, i64* %153, i64 %154)
  %156 = load i64, i64* %16, align 8
  %157 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %158 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 5
  store i64 %156, i64* %163, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %118
  %169 = load i32, i32* @IW_MODE_ADHOC, align 4
  %170 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %171 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  store i32 %169, i32* %176, align 4
  br label %192

177:                                              ; preds = %118
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load i32, i32* @IW_MODE_INFRA, align 4
  %184 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %185 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %184, i32 0, i32 1
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %185, align 8
  %187 = load i32, i32* %21, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 4
  store i32 %183, i32* %190, align 4
  br label %191

191:                                              ; preds = %182, %177
  br label %192

192:                                              ; preds = %191, %168
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @SHORT_PREAMBLE, align 4
  br label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @LONG_PREAMBLE, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = load %struct.atmel_private*, %struct.atmel_private** %10, align 8
  %204 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %203, i32 0, i32 1
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = load i32, i32* %21, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 3
  store i32 %202, i32* %209, align 8
  br label %210

210:                                              ; preds = %201, %116, %69
  ret void
}

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
