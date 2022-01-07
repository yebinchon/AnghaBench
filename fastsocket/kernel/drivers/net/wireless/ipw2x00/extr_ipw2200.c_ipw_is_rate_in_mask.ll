; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_is_rate_in_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_is_rate_in_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@LIBIPW_BASIC_RATE_MASK = common dso_local global i32 0, align 4
@IEEE_A = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_6MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_9MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_12MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_18MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_24MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_36MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_48MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_54MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_1MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_2MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_5MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_CCK_RATE_11MB_MASK = common dso_local global i32 0, align 4
@IEEE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32, i32)* @ipw_is_rate_in_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_is_rate_in_mask(%struct.ipw_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @LIBIPW_BASIC_RATE_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @IEEE_A, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %90

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %89 [
    i32 129, label %17
    i32 128, label %26
    i32 135, label %35
    i32 134, label %44
    i32 133, label %53
    i32 132, label %62
    i32 131, label %71
    i32 130, label %80
  ]

17:                                               ; preds = %15
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %4, align 4
  br label %208

26:                                               ; preds = %15
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %28 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  store i32 %34, i32* %4, align 4
  br label %208

35:                                               ; preds = %15
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %37 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  store i32 %43, i32* %4, align 4
  br label %208

44:                                               ; preds = %15
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LIBIPW_OFDM_RATE_18MB_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  store i32 %52, i32* %4, align 4
  br label %208

53:                                               ; preds = %15
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LIBIPW_OFDM_RATE_24MB_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %4, align 4
  br label %208

62:                                               ; preds = %15
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %64 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LIBIPW_OFDM_RATE_36MB_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %4, align 4
  br label %208

71:                                               ; preds = %15
  %72 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %73 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LIBIPW_OFDM_RATE_48MB_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %4, align 4
  br label %208

80:                                               ; preds = %15
  %81 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %82 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @LIBIPW_OFDM_RATE_54MB_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  store i32 %88, i32* %4, align 4
  br label %208

89:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %208

90:                                               ; preds = %3
  %91 = load i32, i32* %7, align 4
  switch i32 %91, label %128 [
    i32 138, label %92
    i32 137, label %101
    i32 136, label %110
    i32 139, label %119
  ]

92:                                               ; preds = %90
  %93 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %94 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LIBIPW_CCK_RATE_1MB_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  store i32 %100, i32* %4, align 4
  br label %208

101:                                              ; preds = %90
  %102 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %103 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @LIBIPW_CCK_RATE_2MB_MASK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 1, i32 0
  store i32 %109, i32* %4, align 4
  br label %208

110:                                              ; preds = %90
  %111 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %112 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @LIBIPW_CCK_RATE_5MB_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  store i32 %118, i32* %4, align 4
  br label %208

119:                                              ; preds = %90
  %120 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %121 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @LIBIPW_CCK_RATE_11MB_MASK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  store i32 %127, i32* %4, align 4
  br label %208

128:                                              ; preds = %90
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @IEEE_B, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %208

133:                                              ; preds = %128
  %134 = load i32, i32* %7, align 4
  switch i32 %134, label %207 [
    i32 129, label %135
    i32 128, label %144
    i32 135, label %153
    i32 134, label %162
    i32 133, label %171
    i32 132, label %180
    i32 131, label %189
    i32 130, label %198
  ]

135:                                              ; preds = %133
  %136 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %137 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  store i32 %143, i32* %4, align 4
  br label %208

144:                                              ; preds = %133
  %145 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %146 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  store i32 %152, i32* %4, align 4
  br label %208

153:                                              ; preds = %133
  %154 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %155 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  store i32 %161, i32* %4, align 4
  br label %208

162:                                              ; preds = %133
  %163 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %164 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @LIBIPW_OFDM_RATE_18MB_MASK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 1, i32 0
  store i32 %170, i32* %4, align 4
  br label %208

171:                                              ; preds = %133
  %172 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %173 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @LIBIPW_OFDM_RATE_24MB_MASK, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  store i32 %179, i32* %4, align 4
  br label %208

180:                                              ; preds = %133
  %181 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %182 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @LIBIPW_OFDM_RATE_36MB_MASK, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 1, i32 0
  store i32 %188, i32* %4, align 4
  br label %208

189:                                              ; preds = %133
  %190 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %191 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @LIBIPW_OFDM_RATE_48MB_MASK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 1, i32 0
  store i32 %197, i32* %4, align 4
  br label %208

198:                                              ; preds = %133
  %199 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %200 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @LIBIPW_OFDM_RATE_54MB_MASK, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 0
  store i32 %206, i32* %4, align 4
  br label %208

207:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %207, %198, %189, %180, %171, %162, %153, %144, %135, %132, %119, %110, %101, %92, %89, %80, %71, %62, %53, %44, %35, %26, %17
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
