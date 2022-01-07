; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_init_eeprom_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_init_eeprom_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.e1000_eeprom_info }
%struct.e1000_eeprom_info = type { i64, i32, i32, i32, i32, i32 }

@EECD = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"e1000_init_eeprom_params\00", align 1
@e1000_eeprom_microwire = common dso_local global i8* null, align 8
@E1000_EECD_SIZE = common dso_local global i32 0, align 4
@E1000_EECD_TYPE = common dso_local global i32 0, align 4
@e1000_eeprom_spi = common dso_local global i64 0, align 8
@E1000_EECD_ADDR_BITS = common dso_local global i32 0, align 4
@EEPROM_CFG = common dso_local global i32 0, align 4
@EEPROM_SIZE_MASK = common dso_local global i32 0, align 4
@EEPROM_SIZE_SHIFT = common dso_local global i32 0, align 4
@EEPROM_WORD_SIZE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_init_eeprom_params(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_eeprom_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_eeprom_info* %9, %struct.e1000_eeprom_info** %4, align 8
  %10 = load i32, i32* @EECD, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %6, align 8
  %13 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %107 [
    i32 137, label %17
    i32 136, label %17
    i32 135, label %17
    i32 134, label %17
    i32 140, label %30
    i32 133, label %30
    i32 132, label %30
    i32 131, label %30
    i32 130, label %30
    i32 139, label %54
    i32 138, label %54
    i32 129, label %54
    i32 128, label %54
  ]

17:                                               ; preds = %1, %1, %1, %1
  %18 = load i8*, i8** @e1000_eeprom_microwire, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %21 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %22, i32 0, i32 1
  store i32 64, i32* %23, align 8
  %24 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %24, i32 0, i32 2
  store i32 3, i32* %25, align 4
  %26 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %26, i32 0, i32 3
  store i32 6, i32* %27, align 8
  %28 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %28, i32 0, i32 4
  store i32 50, i32* %29, align 4
  br label %108

30:                                               ; preds = %1, %1, %1, %1, %1
  %31 = load i8*, i8** @e1000_eeprom_microwire, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %35, i32 0, i32 2
  store i32 3, i32* %36, align 4
  %37 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %37, i32 0, i32 4
  store i32 50, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @E1000_EECD_SIZE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %45 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %44, i32 0, i32 1
  store i32 256, i32* %45, align 8
  %46 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %47 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %46, i32 0, i32 3
  store i32 8, i32* %47, align 8
  br label %53

48:                                               ; preds = %30
  %49 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %50 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %49, i32 0, i32 1
  store i32 64, i32* %50, align 8
  %51 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %52 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %51, i32 0, i32 3
  store i32 6, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  br label %108

54:                                               ; preds = %1, %1, %1, %1
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @E1000_EECD_TYPE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i64, i64* @e1000_eeprom_spi, align 8
  %61 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %63, i32 0, i32 2
  store i32 8, i32* %64, align 4
  %65 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %66 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %65, i32 0, i32 4
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %72, i32 0, i32 5
  store i32 32, i32* %73, align 8
  %74 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %75 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %74, i32 0, i32 3
  store i32 16, i32* %75, align 8
  br label %81

76:                                               ; preds = %59
  %77 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %77, i32 0, i32 5
  store i32 8, i32* %78, align 8
  %79 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %80 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %79, i32 0, i32 3
  store i32 8, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %71
  br label %106

82:                                               ; preds = %54
  %83 = load i8*, i8** @e1000_eeprom_microwire, align 8
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %86 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %88 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %87, i32 0, i32 2
  store i32 3, i32* %88, align 4
  %89 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %90 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %89, i32 0, i32 4
  store i32 50, i32* %90, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @E1000_EECD_ADDR_BITS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %82
  %96 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %96, i32 0, i32 1
  store i32 256, i32* %97, align 8
  %98 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %98, i32 0, i32 3
  store i32 8, i32* %99, align 8
  br label %105

100:                                              ; preds = %82
  %101 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %102 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %101, i32 0, i32 1
  store i32 64, i32* %102, align 8
  %103 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %104 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %103, i32 0, i32 3
  store i32 6, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %81
  br label %108

107:                                              ; preds = %1
  br label %108

108:                                              ; preds = %107, %106, %53, %17
  %109 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %110 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @e1000_eeprom_spi, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %108
  %115 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %116 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %115, i32 0, i32 1
  store i32 64, i32* %116, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = load i32, i32* @EEPROM_CFG, align 4
  %119 = call i64 @e1000_read_eeprom(%struct.e1000_hw* %117, i32 %118, i32 1, i32* %7)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %2, align 8
  br label %144

124:                                              ; preds = %114
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @EEPROM_SIZE_MASK, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @EEPROM_SIZE_SHIFT, align 4
  %129 = ashr i32 %127, %128
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @EEPROM_WORD_SIZE_SHIFT, align 4
  %138 = add nsw i32 %136, %137
  %139 = shl i32 1, %138
  %140 = load %struct.e1000_eeprom_info*, %struct.e1000_eeprom_info** %4, align 8
  %141 = getelementptr inbounds %struct.e1000_eeprom_info, %struct.e1000_eeprom_info* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %135, %108
  %143 = load i64, i64* %6, align 8
  store i64 %143, i64* %2, align 8
  br label %144

144:                                              ; preds = %142, %122
  %145 = load i64, i64* %2, align 8
  ret i64 %145
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_eeprom(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
