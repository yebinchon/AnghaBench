; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_unregister_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_unregister_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EFAULT = common dso_local global i32 0, align 4
@access_map = common dso_local global i64* null, align 8
@GPIO_INDEX = common dso_local global i64 0, align 8
@MUX_INDEX = common dso_local global i64 0, align 8
@OUTP_INDEX = common dso_local global i64 0, align 8
@INP_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_gpio_unregister_pin(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %5 = load i16, i16* %2, align 2
  %6 = call i64 @GPIO_BIT(i16 zeroext %5)
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @EFAULT, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @gpio_lock()
  %10 = load i16, i16* %2, align 2
  %11 = call i64 @GPIO_ISBID(i16 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i64*, i64** @access_map, align 8
  %15 = load i64, i64* @GPIO_INDEX, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %125

23:                                               ; preds = %13
  %24 = load i64, i64* %3, align 8
  %25 = xor i64 %24, -1
  %26 = load i64*, i64** @access_map, align 8
  %27 = load i64, i64* @GPIO_INDEX, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %29, %25
  store i64 %30, i64* %28, align 8
  br label %124

31:                                               ; preds = %1
  %32 = load i16, i16* %2, align 2
  %33 = call i64 @GPIO_ISRAM(i16 zeroext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i64*, i64** @access_map, align 8
  %37 = load i64, i64* @GPIO_INDEX, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %3, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %125

45:                                               ; preds = %35
  %46 = load i64, i64* %3, align 8
  %47 = xor i64 %46, -1
  %48 = load i64*, i64** @access_map, align 8
  %49 = load i64, i64* @GPIO_INDEX, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, %47
  store i64 %52, i64* %50, align 8
  br label %123

53:                                               ; preds = %31
  %54 = load i16, i16* %2, align 2
  %55 = call i64 @GPIO_ISMUX(i16 zeroext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i64*, i64** @access_map, align 8
  %59 = load i64, i64* @MUX_INDEX, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %3, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %125

67:                                               ; preds = %57
  %68 = load i64, i64* %3, align 8
  %69 = xor i64 %68, -1
  %70 = load i64*, i64** @access_map, align 8
  %71 = load i64, i64* @MUX_INDEX, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, %69
  store i64 %74, i64* %72, align 8
  br label %122

75:                                               ; preds = %53
  %76 = load i16, i16* %2, align 2
  %77 = call i64 @GPIO_ISOUT(i16 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i64*, i64** @access_map, align 8
  %81 = load i64, i64* @OUTP_INDEX, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %3, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %125

89:                                               ; preds = %79
  %90 = load i64, i64* %3, align 8
  %91 = xor i64 %90, -1
  %92 = load i64*, i64** @access_map, align 8
  %93 = load i64, i64* @OUTP_INDEX, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %95, %91
  store i64 %96, i64* %94, align 8
  br label %121

97:                                               ; preds = %75
  %98 = load i16, i16* %2, align 2
  %99 = call i64 @GPIO_ISIN(i16 zeroext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load i64*, i64** @access_map, align 8
  %103 = load i64, i64* @INP_INDEX, align 8
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = xor i64 %105, -1
  %107 = load i64, i64* %3, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %125

111:                                              ; preds = %101
  %112 = load i64, i64* %3, align 8
  %113 = xor i64 %112, -1
  %114 = load i64*, i64** @access_map, align 8
  %115 = load i64, i64* @INP_INDEX, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = and i64 %117, %113
  store i64 %118, i64* %116, align 8
  br label %120

119:                                              ; preds = %97
  br label %125

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %89
  br label %122

122:                                              ; preds = %121, %67
  br label %123

123:                                              ; preds = %122, %45
  br label %124

124:                                              ; preds = %123, %23
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %119, %110, %88, %66, %44, %22
  %126 = call i32 (...) @gpio_unlock()
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @GPIO_BIT(i16 zeroext) #1

declare dso_local i32 @gpio_lock(...) #1

declare dso_local i64 @GPIO_ISBID(i16 zeroext) #1

declare dso_local i64 @GPIO_ISRAM(i16 zeroext) #1

declare dso_local i64 @GPIO_ISMUX(i16 zeroext) #1

declare dso_local i64 @GPIO_ISOUT(i16 zeroext) #1

declare dso_local i64 @GPIO_ISIN(i16 zeroext) #1

declare dso_local i32 @gpio_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
