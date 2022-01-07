; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_get_highest_rix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_rc.c_ath_rc_get_highest_rix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_rate_priv = type { i64, i64*, i64, i64*, i64, i32, i64, i32, i32, %struct.ath_rate_table* }
%struct.ath_rate_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@WLAN_RC_TS_FLAG = common dso_local global i32 0, align 4
@WLAN_RC_DS_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath_rate_priv*, i32*)* @ath_rc_get_highest_rix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath_rc_get_highest_rix(%struct.ath_rate_priv* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_rate_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ath_rate_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.ath_rate_priv* %0, %struct.ath_rate_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %17, i32 0, i32 9
  %19 = load %struct.ath_rate_table*, %struct.ath_rate_table** %18, align 8
  store %struct.ath_rate_table* %19, %struct.ath_rate_table** %6, align 8
  store i64 0, i64* %15, align 8
  %20 = load i32, i32* @jiffies, align 4
  %21 = call i64 @jiffies_to_msecs(i32 %20)
  store i64 %21, i64* %9, align 8
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  store i64 0, i64* %7, align 8
  %23 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %25, 1
  store i64 %26, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  store i64 %28, i64* %15, align 8
  br label %29

29:                                               ; preds = %75, %2
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %14, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %35 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %15, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %75

46:                                               ; preds = %33
  %47 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %16, align 8
  %54 = icmp ult i64 %53, 12
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i64 12, i64* %16, align 8
  br label %56

56:                                               ; preds = %55, %46
  %57 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %58 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %16, align 8
  %66 = sub i64 100, %65
  %67 = mul i64 %64, %66
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %7, align 8
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %71, %56
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %15, align 8
  br label %29

78:                                               ; preds = %29
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %82 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp uge i64 %80, %83
  br i1 %84, label %85, label %121

85:                                               ; preds = %78
  %86 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %87 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  %89 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %90 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %91 = load i64, i64* %10, align 8
  %92 = call i64 @ath_rc_get_nextvalid_txrate(%struct.ath_rate_table* %89, %struct.ath_rate_priv* %90, i64 %91, i64* %11)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %85
  %95 = load i64, i64* %9, align 8
  %96 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %97 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %101 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %99, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %94
  %105 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %106 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = icmp sge i32 %107, 1
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %113 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %112, i32 0, i32 6
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %116 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %118 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %117, i32 0, i32 5
  store i32 0, i32* %118, align 8
  %119 = load i32*, i32** %5, align 8
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %109, %104, %94, %85
  br label %121

121:                                              ; preds = %120, %78
  %122 = load i64, i64* %10, align 8
  %123 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %124 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = icmp ugt i64 %122, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %131 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %10, align 8
  br label %135

135:                                              ; preds = %129, %121
  %136 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %137 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @RC_TS_ONLY(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %135
  %146 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %147 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @WLAN_RC_TS_FLAG, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i64, i64* %10, align 8
  store i64 %153, i64* %3, align 8
  br label %195

154:                                              ; preds = %145, %135
  %155 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %156 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i64, i64* %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @RC_DS_OR_LATER(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %154
  %165 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %166 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @WLAN_RC_DS_FLAG, align 4
  %169 = load i32, i32* @WLAN_RC_TS_FLAG, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = load i64, i64* %10, align 8
  store i64 %174, i64* %3, align 8
  br label %195

175:                                              ; preds = %164, %154
  %176 = load %struct.ath_rate_table*, %struct.ath_rate_table** %6, align 8
  %177 = getelementptr inbounds %struct.ath_rate_table, %struct.ath_rate_table* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i64, i64* %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @RC_SS_OR_LEGACY(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %175
  %186 = load i64, i64* %10, align 8
  store i64 %186, i64* %3, align 8
  br label %195

187:                                              ; preds = %175
  %188 = call i32 @WARN_ON_ONCE(i32 1)
  %189 = load %struct.ath_rate_priv*, %struct.ath_rate_priv** %4, align 8
  %190 = getelementptr inbounds %struct.ath_rate_priv, %struct.ath_rate_priv* %189, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %10, align 8
  %194 = load i64, i64* %10, align 8
  store i64 %194, i64* %3, align 8
  br label %195

195:                                              ; preds = %187, %185, %173, %152
  %196 = load i64, i64* %3, align 8
  ret i64 %196
}

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i64 @ath_rc_get_nextvalid_txrate(%struct.ath_rate_table*, %struct.ath_rate_priv*, i64, i64*) #1

declare dso_local i64 @RC_TS_ONLY(i32) #1

declare dso_local i64 @RC_DS_OR_LATER(i32) #1

declare dso_local i64 @RC_SS_OR_LEGACY(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
