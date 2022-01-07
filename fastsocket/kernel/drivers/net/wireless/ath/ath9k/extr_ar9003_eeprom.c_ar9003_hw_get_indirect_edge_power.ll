; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_indirect_edge_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_indirect_edge_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_eeprom = type { i32**, i32**, %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_2g* }
%struct.cal_ctl_data_5g = type { i32* }
%struct.cal_ctl_data_2g = type { i32* }

@MAX_RATE_POWER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ar9300_eeprom*, i32, i32, i64, i32)* @ar9003_hw_get_indirect_edge_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ar9003_hw_get_indirect_edge_power(%struct.ar9300_eeprom* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.ar9300_eeprom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cal_ctl_data_2g*, align 8
  %13 = alloca %struct.cal_ctl_data_5g*, align 8
  %14 = alloca i32*, align 8
  store %struct.ar9300_eeprom* %0, %struct.ar9300_eeprom** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %7, align 8
  %16 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %15, i32 0, i32 3
  %17 = load %struct.cal_ctl_data_2g*, %struct.cal_ctl_data_2g** %16, align 8
  store %struct.cal_ctl_data_2g* %17, %struct.cal_ctl_data_2g** %12, align 8
  %18 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %7, align 8
  %19 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %18, i32 0, i32 2
  %20 = load %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_5g** %19, align 8
  store %struct.cal_ctl_data_5g* %20, %struct.cal_ctl_data_5g** %13, align 8
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %7, align 8
  %25 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %24, i32 0, i32 1
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  br label %41

32:                                               ; preds = %5
  %33 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %7, align 8
  %34 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  br label %41

41:                                               ; preds = %32, %23
  %42 = phi i32* [ %31, %23 ], [ %40, %32 ]
  store i32* %42, i32** %14, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ath9k_hw_fbin2freq(i32 %51, i32 1)
  %53 = load i64, i64* %10, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %45
  %56 = load %struct.cal_ctl_data_2g*, %struct.cal_ctl_data_2g** %12, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cal_ctl_data_2g, %struct.cal_ctl_data_2g* %56, i64 %58
  %60 = getelementptr inbounds %struct.cal_ctl_data_2g, %struct.cal_ctl_data_2g* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sub i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @CTL_EDGE_FLAGS(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %55
  %70 = load %struct.cal_ctl_data_2g*, %struct.cal_ctl_data_2g** %12, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cal_ctl_data_2g, %struct.cal_ctl_data_2g* %70, i64 %72
  %74 = getelementptr inbounds %struct.cal_ctl_data_2g, %struct.cal_ctl_data_2g* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @CTL_EDGE_TPOWER(i32 %80)
  store i64 %81, i64* %6, align 8
  br label %123

82:                                               ; preds = %55, %45
  br label %121

83:                                               ; preds = %41
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sub i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ath9k_hw_fbin2freq(i32 %89, i32 0)
  %91 = load i64, i64* %10, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %83
  %94 = load %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_5g** %13, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cal_ctl_data_5g, %struct.cal_ctl_data_5g* %94, i64 %96
  %98 = getelementptr inbounds %struct.cal_ctl_data_5g, %struct.cal_ctl_data_5g* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sub i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @CTL_EDGE_FLAGS(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %93
  %108 = load %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_5g** %13, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.cal_ctl_data_5g, %struct.cal_ctl_data_5g* %108, i64 %110
  %112 = getelementptr inbounds %struct.cal_ctl_data_5g, %struct.cal_ctl_data_5g* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @CTL_EDGE_TPOWER(i32 %118)
  store i64 %119, i64* %6, align 8
  br label %123

120:                                              ; preds = %93, %83
  br label %121

121:                                              ; preds = %120, %82
  %122 = load i64, i64* @MAX_RATE_POWER, align 8
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %121, %107, %69
  %124 = load i64, i64* %6, align 8
  ret i64 %124
}

declare dso_local i64 @ath9k_hw_fbin2freq(i32, i32) #1

declare dso_local i64 @CTL_EDGE_FLAGS(i32) #1

declare dso_local i64 @CTL_EDGE_TPOWER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
