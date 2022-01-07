; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_setup_rate_powertable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_setup_rate_powertable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32, i32, i64, i64 }
%struct.ath5k_rate_pcal_info = type { i32, i32, i32, i32 }

@AR5K_EEPROM_MODE_11G = common dso_local global i64 0, align 8
@AR5K_SREV_PHY_5212A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath5k_hw*, i32, %struct.ath5k_rate_pcal_info*, i64)* @ath5k_setup_rate_powertable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath5k_setup_rate_powertable(%struct.ath5k_hw* %0, i32 %1, %struct.ath5k_rate_pcal_info* %2, i64 %3) #0 {
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath5k_rate_pcal_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath5k_rate_pcal_info* %2, %struct.ath5k_rate_pcal_info** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @min(i32 %14, i32 %19)
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %39, %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %27, 5
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %32 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @min(i32 %30, i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %47 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @min(i32 %45, i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %56 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @min(i32 %54, i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %65 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @min(i32 %63, i32 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %74 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @min(i32 %72, i32 %75)
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %83 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @min(i32 %81, i32 %84)
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 9
  store i32 %85, i32* %87, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %92 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @min(i32 %90, i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 10
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %101 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @min(i32 %99, i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 11
  store i32 %103, i32* %105, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %110 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @min(i32 %108, i32 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 12
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %119 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @min(i32 %117, i32 %120)
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 13
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %128 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @min(i32 %126, i32 %129)
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 14
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ath5k_rate_pcal_info*, %struct.ath5k_rate_pcal_info** %7, align 8
  %137 = getelementptr inbounds %struct.ath5k_rate_pcal_info, %struct.ath5k_rate_pcal_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @min(i32 %135, i32 %138)
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 15
  store i32 %139, i32* %141, align 4
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @AR5K_EEPROM_MODE_11G, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %172

145:                                              ; preds = %42
  %146 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %147 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AR5K_SREV_PHY_5212A, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %145
  store i32 8, i32* %9, align 4
  br label %152

152:                                              ; preds = %168, %151
  %153 = load i32, i32* %9, align 4
  %154 = icmp ule i32 %153, 15
  br i1 %154, label %155, label %171

155:                                              ; preds = %152
  %156 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %157 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %9, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %165, %159
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  br label %168

168:                                              ; preds = %155
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %152

171:                                              ; preds = %152
  br label %172

172:                                              ; preds = %171, %145, %42
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 7
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 2, %175
  %177 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %178 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 2, %182
  %184 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %185 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 2
  store i32 %183, i32* %186, align 4
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 7
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %191 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  store i32 %189, i32* %192, align 8
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %220, %172
  %194 = load i32, i32* %9, align 4
  %195 = icmp ult i32 %194, 16
  br i1 %195, label %196, label %223

196:                                              ; preds = %193
  %197 = load i32*, i32** %10, align 8
  %198 = load i32, i32* %9, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %203 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %201, %205
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %11, align 4
  %208 = icmp sgt i32 %207, 63
  br i1 %208, label %209, label %210

209:                                              ; preds = %196
  store i32 63, i32* %11, align 4
  br label %210

210:                                              ; preds = %209, %196
  %211 = load i32, i32* %11, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %213, %210
  %215 = load i32, i32* %11, align 4
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %9, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %214
  %221 = load i32, i32* %9, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %193

223:                                              ; preds = %193
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
