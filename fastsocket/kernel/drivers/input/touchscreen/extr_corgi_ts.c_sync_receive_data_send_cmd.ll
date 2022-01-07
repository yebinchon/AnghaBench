; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_sync_receive_data_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_corgi_ts.c_sync_receive_data_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.corgi_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (...)* }

@ADSCTRL_PD0 = common dso_local global i32 0, align 4
@ADSCTRL_PD1 = common dso_local global i32 0, align 4
@ADSCTRL_ADR_SH = common dso_local global i32 0, align 4
@ADSCTRL_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.corgi_ts*, i32, i32, i32, i64)* @sync_receive_data_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_receive_data_send_cmd(%struct.corgi_ts* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.corgi_ts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.corgi_ts* %0, %struct.corgi_ts** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @PMNC_GET(i64 %22)
  %24 = load i64, i64* %13, align 8
  %25 = and i64 %24, 1
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 @PMNC_SET(i64 1)
  br label %29

29:                                               ; preds = %27, %21
  %30 = load %struct.corgi_ts*, %struct.corgi_ts** %6, align 8
  %31 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @CCNT(i64 %36)
  br label %38

38:                                               ; preds = %29, %18, %5
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @corgi_ssp_ads7846_get()
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %43
  %47 = load i32, i32* @ADSCTRL_PD0, align 4
  %48 = load i32, i32* @ADSCTRL_PD1, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ADSCTRL_ADR_SH, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load i32, i32* @ADSCTRL_STS, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @corgi_ssp_ads7846_put(i32 %56)
  %58 = call i32 (...) @corgi_ssp_ads7846_get()
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %46
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @CCNT(i64 %62)
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %11, align 8
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %10, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load %struct.corgi_ts*, %struct.corgi_ts** %6, align 8
  %71 = getelementptr inbounds %struct.corgi_ts, %struct.corgi_ts* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32 (...)*, i32 (...)** %73, align 8
  %75 = call i32 (...) %74()
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @CCNT(i64 %76)
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @CCNT(i64 %78)
  br label %80

80:                                               ; preds = %69, %61
  br label %81

81:                                               ; preds = %87, %80
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sub i64 %82, %83
  %85 = load i64, i64* %10, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* %12, align 8
  %89 = call i32 @CCNT(i64 %88)
  br label %81

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %46
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @corgi_ssp_ads7846_put(i32 %92)
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64, i64* %13, align 8
  %98 = and i64 %97, 1
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %13, align 8
  %102 = call i32 @PMNC_SET(i64 %101)
  br label %103

103:                                              ; preds = %100, %96, %91
  br label %104

104:                                              ; preds = %103, %43
  %105 = load i32, i32* %14, align 4
  ret i32 %105
}

declare dso_local i32 @PMNC_GET(i64) #1

declare dso_local i32 @PMNC_SET(i64) #1

declare dso_local i32 @CCNT(i64) #1

declare dso_local i32 @corgi_ssp_ads7846_get(...) #1

declare dso_local i32 @corgi_ssp_ads7846_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
