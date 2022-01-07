; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_gpio_set_wake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_gpio_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i64, i64, i64, i64, i64, i32 }

@MFP_PIN_GPIO127 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gpio_desc = common dso_local global %struct.gpio_desc* null, align 8
@PWER = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MFP_LPM_CAN_WAKEUP = common dso_local global i64 0, align 8
@MFP_LPM_EDGE_RISE = common dso_local global i64 0, align 8
@PRER = common dso_local global i64 0, align 8
@MFP_LPM_EDGE_FALL = common dso_local global i64 0, align 8
@PFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_set_wake(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MFP_PIN_GPIO127, align 4
  %11 = call i32 @mfp_to_gpio(i32 %10)
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %139

16:                                               ; preds = %2
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** @gpio_desc, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %17, i64 %19
  store %struct.gpio_desc* %20, %struct.gpio_desc** %6, align 8
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %22 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %139

31:                                               ; preds = %16
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %139

39:                                               ; preds = %31
  %40 = load i64, i64* @PWER, align 8
  %41 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %42 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %40, %43
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %46 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = xor i64 %47, -1
  %49 = and i64 %44, %48
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %39
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %139

58:                                               ; preds = %52, %39
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %60 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %138

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @MFP_LPM_CAN_WAKEUP, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %138

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %68
  %72 = load i64, i64* @PWER, align 8
  %73 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %74 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = xor i64 %75, -1
  %77 = and i64 %72, %76
  %78 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %79 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %77, %80
  store i64 %81, i64* @PWER, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* @MFP_LPM_EDGE_RISE, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %71
  %87 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %88 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PRER, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* @PRER, align 8
  br label %99

92:                                               ; preds = %71
  %93 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %94 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* @PRER, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* @PRER, align 8
  br label %99

99:                                               ; preds = %92, %86
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* @MFP_LPM_EDGE_FALL, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %106 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PFER, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* @PFER, align 8
  br label %117

110:                                              ; preds = %99
  %111 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %112 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = xor i64 %113, -1
  %115 = load i64, i64* @PFER, align 8
  %116 = and i64 %115, %114
  store i64 %116, i64* @PFER, align 8
  br label %117

117:                                              ; preds = %110, %104
  br label %137

118:                                              ; preds = %68
  %119 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %120 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = xor i64 %121, -1
  %123 = load i64, i64* @PWER, align 8
  %124 = and i64 %123, %122
  store i64 %124, i64* @PWER, align 8
  %125 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %126 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = xor i64 %127, -1
  %129 = load i64, i64* @PRER, align 8
  %130 = and i64 %129, %128
  store i64 %130, i64* @PRER, align 8
  %131 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %132 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = xor i64 %133, -1
  %135 = load i64, i64* @PFER, align 8
  %136 = and i64 %135, %134
  store i64 %136, i64* @PFER, align 8
  br label %137

137:                                              ; preds = %118, %117
  br label %138

138:                                              ; preds = %137, %63, %58
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %55, %36, %28, %13
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @mfp_to_gpio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
