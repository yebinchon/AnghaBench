; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_setup_data_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_setup_data_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { %struct.pinmux_data_reg*, i32, %struct.pinmux_gpio* }
%struct.pinmux_data_reg = type { i32, i64* }
%struct.pinmux_gpio = type { i64, i32 }

@PINMUX_FLAG_DREG = common dso_local global i32 0, align 4
@PINMUX_FLAG_DREG_SHIFT = common dso_local global i32 0, align 4
@PINMUX_FLAG_DBIT = common dso_local global i32 0, align 4
@PINMUX_FLAG_DBIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_info*, i32)* @setup_data_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_data_reg(%struct.pinmux_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinmux_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinmux_gpio*, align 8
  %7 = alloca %struct.pinmux_data_reg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pinmux_info* %0, %struct.pinmux_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %11 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %10, i32 0, i32 2
  %12 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %12, i64 %14
  store %struct.pinmux_gpio* %15, %struct.pinmux_gpio** %6, align 8
  %16 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %6, align 8
  %17 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %20 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %19, i32 0, i32 1
  %21 = call i32 @enum_in_range(i64 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %92

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %87
  %26 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %27 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %26, i32 0, i32 0
  %28 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %28, i64 %30
  store %struct.pinmux_data_reg* %31, %struct.pinmux_data_reg** %7, align 8
  %32 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %7, align 8
  %33 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %90

37:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %7, align 8
  %41 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load %struct.pinmux_data_reg*, %struct.pinmux_data_reg** %7, align 8
  %46 = getelementptr inbounds %struct.pinmux_data_reg, %struct.pinmux_data_reg* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %6, align 8
  %53 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %44
  %57 = load i32, i32* @PINMUX_FLAG_DREG, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %6, align 8
  %60 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @PINMUX_FLAG_DREG_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %6, align 8
  %67 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @PINMUX_FLAG_DBIT, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %6, align 8
  %73 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @PINMUX_FLAG_DBIT_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.pinmux_gpio*, %struct.pinmux_gpio** %6, align 8
  %80 = getelementptr inbounds %struct.pinmux_gpio, %struct.pinmux_gpio* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  store i32 0, i32* %3, align 4
  br label %92

83:                                               ; preds = %44
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %38

87:                                               ; preds = %38
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %25

90:                                               ; preds = %36
  %91 = call i32 (...) @BUG()
  store i32 -1, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %56, %23
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @enum_in_range(i64, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
