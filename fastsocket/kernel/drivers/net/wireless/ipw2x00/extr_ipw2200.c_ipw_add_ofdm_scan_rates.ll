; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_add_ofdm_scan_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_add_ofdm_scan_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_supported_rates = type { i32, i64* }

@LIBIPW_OFDM_MODULATION = common dso_local global i64 0, align 8
@LIBIPW_BASIC_RATE_MASK = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_6MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_6MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_9MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_9MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_12MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_12MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_18MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_18MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_24MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_24MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_36MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_36MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_48MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_48MB = common dso_local global i64 0, align 8
@LIBIPW_OFDM_RATE_54MB_MASK = common dso_local global i32 0, align 4
@LIBIPW_OFDM_RATE_54MB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_supported_rates*, i64, i32)* @ipw_add_ofdm_scan_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_add_ofdm_scan_rates(%struct.ipw_supported_rates* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_supported_rates*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ipw_supported_rates* %0, %struct.ipw_supported_rates** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @LIBIPW_OFDM_MODULATION, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @LIBIPW_BASIC_RATE_MASK, align 8
  br label %14

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %13, %11
  %15 = phi i64 [ %12, %11 ], [ 0, %13 ]
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LIBIPW_OFDM_RATE_6MB_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @LIBIPW_OFDM_RATE_6MB, align 8
  %23 = or i64 %21, %22
  %24 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %25 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %28 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  store i64 %23, i64* %32, align 8
  br label %33

33:                                               ; preds = %20, %14
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LIBIPW_OFDM_RATE_9MB_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i64, i64* @LIBIPW_OFDM_RATE_9MB, align 8
  %40 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %41 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %44 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i64, i64* %42, i64 %47
  store i64 %39, i64* %48, align 8
  br label %49

49:                                               ; preds = %38, %33
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @LIBIPW_OFDM_RATE_12MB_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @LIBIPW_OFDM_RATE_12MB, align 8
  %57 = or i64 %55, %56
  %58 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %59 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %62 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  store i64 %57, i64* %66, align 8
  br label %67

67:                                               ; preds = %54, %49
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @LIBIPW_OFDM_RATE_18MB_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i64, i64* @LIBIPW_OFDM_RATE_18MB, align 8
  %74 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %75 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %78 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %76, i64 %81
  store i64 %73, i64* %82, align 8
  br label %83

83:                                               ; preds = %72, %67
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @LIBIPW_OFDM_RATE_24MB_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @LIBIPW_OFDM_RATE_24MB, align 8
  %91 = or i64 %89, %90
  %92 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %93 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %96 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i64, i64* %94, i64 %99
  store i64 %91, i64* %100, align 8
  br label %101

101:                                              ; preds = %88, %83
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @LIBIPW_OFDM_RATE_36MB_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i64, i64* @LIBIPW_OFDM_RATE_36MB, align 8
  %108 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %109 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %112 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i64, i64* %110, i64 %115
  store i64 %107, i64* %116, align 8
  br label %117

117:                                              ; preds = %106, %101
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @LIBIPW_OFDM_RATE_48MB_MASK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load i64, i64* @LIBIPW_OFDM_RATE_48MB, align 8
  %124 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %125 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %128 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i64, i64* %126, i64 %131
  store i64 %123, i64* %132, align 8
  br label %133

133:                                              ; preds = %122, %117
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @LIBIPW_OFDM_RATE_54MB_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load i64, i64* @LIBIPW_OFDM_RATE_54MB, align 8
  %140 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %141 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.ipw_supported_rates*, %struct.ipw_supported_rates** %4, align 8
  %144 = getelementptr inbounds %struct.ipw_supported_rates, %struct.ipw_supported_rates* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i64, i64* %142, i64 %147
  store i64 %139, i64* %148, align 8
  br label %149

149:                                              ; preds = %138, %133
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
