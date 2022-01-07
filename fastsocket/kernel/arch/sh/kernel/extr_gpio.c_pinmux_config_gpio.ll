; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_pinmux_config_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_pinmux_config_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { %struct.pinmux_range, %struct.pinmux_range, %struct.pinmux_range, %struct.pinmux_range, %struct.pinmux_range }
%struct.pinmux_range = type { i64 }
%struct.pinmux_cfg_reg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_info*, i32, i32, i32)* @pinmux_config_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_config_gpio(%struct.pinmux_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinmux_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pinmux_cfg_reg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pinmux_range*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store %struct.pinmux_info* %0, %struct.pinmux_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.pinmux_cfg_reg* null, %struct.pinmux_cfg_reg** %10, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %31 [
    i32 132, label %18
    i32 128, label %19
    i32 131, label %22
    i32 129, label %25
    i32 130, label %28
  ]

18:                                               ; preds = %4
  store %struct.pinmux_range* null, %struct.pinmux_range** %12, align 8
  br label %32

19:                                               ; preds = %4
  %20 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %21 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %20, i32 0, i32 4
  store %struct.pinmux_range* %21, %struct.pinmux_range** %12, align 8
  br label %32

22:                                               ; preds = %4
  %23 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %24 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %23, i32 0, i32 3
  store %struct.pinmux_range* %24, %struct.pinmux_range** %12, align 8
  br label %32

25:                                               ; preds = %4
  %26 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %27 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %26, i32 0, i32 2
  store %struct.pinmux_range* %27, %struct.pinmux_range** %12, align 8
  br label %32

28:                                               ; preds = %4
  %29 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %30 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %29, i32 0, i32 1
  store %struct.pinmux_range* %30, %struct.pinmux_range** %12, align 8
  br label %32

31:                                               ; preds = %4
  br label %109

32:                                               ; preds = %28, %25, %22, %19, %18
  store i32 0, i32* %14, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %32, %67, %72, %91, %107
  %34 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @get_gpio_enum_id(%struct.pinmux_info* %34, i32 %35, i32 %36, i64* %11)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %109

41:                                               ; preds = %33
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %108

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %48 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %47, i32 0, i32 0
  %49 = call i32 @enum_in_range(i64 %46, %struct.pinmux_range* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %45
  %53 = load %struct.pinmux_range*, %struct.pinmux_range** %12, align 8
  %54 = icmp ne %struct.pinmux_range* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = load i64, i64* %11, align 8
  %57 = load %struct.pinmux_range*, %struct.pinmux_range** %12, align 8
  %58 = call i32 @enum_in_range(i64 %56, %struct.pinmux_range* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.pinmux_range*, %struct.pinmux_range** %12, align 8
  %64 = getelementptr inbounds %struct.pinmux_range, %struct.pinmux_range* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %33

68:                                               ; preds = %61, %55
  br label %69

69:                                               ; preds = %68, %52, %45
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %33

73:                                               ; preds = %69
  %74 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @get_config_reg(%struct.pinmux_info* %74, i64 %75, %struct.pinmux_cfg_reg** %10, i32* %15, i64** %16)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %109

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %107 [
    i32 135, label %81
    i32 133, label %93
    i32 134, label %102
  ]

81:                                               ; preds = %79
  %82 = load i64*, i64** %16, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %87 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %10, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @check_config_reg(%struct.pinmux_info* %86, %struct.pinmux_cfg_reg* %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85, %81
  br label %33

92:                                               ; preds = %85
  br label %107

93:                                               ; preds = %79
  %94 = load %struct.pinmux_info*, %struct.pinmux_info** %6, align 8
  %95 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @write_config_reg(%struct.pinmux_info* %94, %struct.pinmux_cfg_reg* %95, i32 %96)
  %98 = load i64*, i64** %16, align 8
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 1
  %101 = load i64*, i64** %16, align 8
  store i64 %100, i64* %101, align 8
  br label %107

102:                                              ; preds = %79
  %103 = load i64*, i64** %16, align 8
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %104, 1
  %106 = load i64*, i64** %16, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %79, %102, %93, %92
  br label %33

108:                                              ; preds = %44
  store i32 0, i32* %5, align 4
  br label %110

109:                                              ; preds = %78, %40, %31
  store i32 -1, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %108
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @get_gpio_enum_id(%struct.pinmux_info*, i32, i32, i64*) #1

declare dso_local i32 @enum_in_range(i64, %struct.pinmux_range*) #1

declare dso_local i64 @get_config_reg(%struct.pinmux_info*, i64, %struct.pinmux_cfg_reg**, i32*, i64**) #1

declare dso_local i32 @check_config_reg(%struct.pinmux_info*, %struct.pinmux_cfg_reg*, i32) #1

declare dso_local i32 @write_config_reg(%struct.pinmux_info*, %struct.pinmux_cfg_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
