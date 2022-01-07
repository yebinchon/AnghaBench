; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_get_config_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_get_config_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { %struct.pinmux_cfg_reg* }
%struct.pinmux_cfg_reg = type { i64, i64, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_info*, i64, %struct.pinmux_cfg_reg**, i32*, i64**)* @get_config_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_config_reg(%struct.pinmux_info* %0, i64 %1, %struct.pinmux_cfg_reg** %2, i32* %3, i64** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinmux_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pinmux_cfg_reg**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca %struct.pinmux_cfg_reg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pinmux_info* %0, %struct.pinmux_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.pinmux_cfg_reg** %2, %struct.pinmux_cfg_reg*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64** %4, i64*** %11, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %5, %74
  %18 = load %struct.pinmux_info*, %struct.pinmux_info** %7, align 8
  %19 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %18, i32 0, i32 0
  %20 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %19, align 8
  %21 = load i32, i32* %15, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %20, i64 %22
  store %struct.pinmux_cfg_reg* %23, %struct.pinmux_cfg_reg** %12, align 8
  %24 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %12, align 8
  %25 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %12, align 8
  %28 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  br label %77

33:                                               ; preds = %17
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = udiv i64 %37, %38
  %40 = mul i64 %39, 1
  %41 = load i64, i64* %14, align 8
  %42 = shl i64 %40, %41
  %43 = icmp ult i64 %36, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %34
  %45 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %12, align 8
  %46 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %44
  %55 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %12, align 8
  %56 = load %struct.pinmux_cfg_reg**, %struct.pinmux_cfg_reg*** %9, align 8
  store %struct.pinmux_cfg_reg* %55, %struct.pinmux_cfg_reg** %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.pinmux_cfg_reg*, %struct.pinmux_cfg_reg** %12, align 8
  %60 = getelementptr inbounds %struct.pinmux_cfg_reg, %struct.pinmux_cfg_reg* %59, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load i64, i64* %14, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = sdiv i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %61, i64 %67
  %69 = load i64**, i64*** %11, align 8
  store i64* %68, i64** %69, align 8
  store i32 0, i32* %6, align 4
  br label %78

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %34

74:                                               ; preds = %34
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %17

77:                                               ; preds = %32
  store i32 -1, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
