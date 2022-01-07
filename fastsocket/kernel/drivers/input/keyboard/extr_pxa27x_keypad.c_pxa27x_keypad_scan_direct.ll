; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_scan_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_scan_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i32, i32, i32*, %struct.input_dev*, %struct.pxa27x_keypad_platform_data* }
%struct.input_dev = type { i32 }
%struct.pxa27x_keypad_platform_data = type { i32, i64, i64 }

@KPDK = common dso_local global i32 0, align 4
@MAX_MATRIX_KEY_NUM = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_keypad*)* @pxa27x_keypad_scan_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_keypad_scan_direct(%struct.pxa27x_keypad* %0) #0 {
  %2 = alloca %struct.pxa27x_keypad*, align 8
  %3 = alloca %struct.pxa27x_keypad_platform_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %2, align 8
  %10 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %11 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %10, i32 0, i32 4
  %12 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %11, align 8
  store %struct.pxa27x_keypad_platform_data* %12, %struct.pxa27x_keypad_platform_data** %3, align 8
  %13 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %14 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %13, i32 0, i32 3
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %4, align 8
  %16 = load i32, i32* @KPDK, align 4
  %17 = call i32 @keypad_readl(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %19 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %24 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %1
  %28 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %29 = call i32 @pxa27x_keypad_scan_rotary(%struct.pxa27x_keypad* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @KPDK_DK(i32 %31)
  %33 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %34 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  store i32 %36, i32* %5, align 4
  %37 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %38 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = xor i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  br label %90

45:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %81, %45
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %49 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i32, i32* @MAX_MATRIX_KEY_NUM, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %63 = load i32, i32* @EV_MSC, align 4
  %64 = load i32, i32* @MSC_SCAN, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @input_event(%struct.input_dev* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %68 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %69 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = call i32 @input_report_key(%struct.input_dev* %67, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %58, %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %46

84:                                               ; preds = %46
  %85 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %86 = call i32 @input_sync(%struct.input_dev* %85)
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %89 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %44
  ret void
}

declare dso_local i32 @keypad_readl(i32) #1

declare dso_local i32 @pxa27x_keypad_scan_rotary(%struct.pxa27x_keypad*) #1

declare dso_local i32 @KPDK_DK(i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
