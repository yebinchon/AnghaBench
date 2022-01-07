; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_register_pin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pnx4008/extr_gpio.c_pnx4008_gpio_register_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBUSY = common dso_local global i32 0, align 4
@access_map = common dso_local global i64* null, align 8
@GPIO_INDEX = common dso_local global i64 0, align 8
@MUX_INDEX = common dso_local global i64 0, align 8
@OUTP_INDEX = common dso_local global i64 0, align 8
@INP_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_gpio_register_pin(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i16 %0, i16* %2, align 2
  %5 = load i16, i16* %2, align 2
  %6 = call i64 @GPIO_BIT(i16 zeroext %5)
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = call i32 (...) @gpio_lock()
  %10 = load i16, i16* %2, align 2
  %11 = call i64 @GPIO_ISBID(i16 zeroext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i64*, i64** @access_map, align 8
  %15 = load i64, i64* @GPIO_INDEX, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %115

22:                                               ; preds = %13
  %23 = load i64, i64* %3, align 8
  %24 = load i64*, i64** @access_map, align 8
  %25 = load i64, i64* @GPIO_INDEX, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %23
  store i64 %28, i64* %26, align 8
  br label %114

29:                                               ; preds = %1
  %30 = load i16, i16* %2, align 2
  %31 = call i64 @GPIO_ISRAM(i16 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i64*, i64** @access_map, align 8
  %35 = load i64, i64* @GPIO_INDEX, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %115

42:                                               ; preds = %33
  %43 = load i64, i64* %3, align 8
  %44 = load i64*, i64** @access_map, align 8
  %45 = load i64, i64* @GPIO_INDEX, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %43
  store i64 %48, i64* %46, align 8
  br label %113

49:                                               ; preds = %29
  %50 = load i16, i16* %2, align 2
  %51 = call i64 @GPIO_ISMUX(i16 zeroext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i64*, i64** @access_map, align 8
  %55 = load i64, i64* @MUX_INDEX, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %115

62:                                               ; preds = %53
  %63 = load i64, i64* %3, align 8
  %64 = load i64*, i64** @access_map, align 8
  %65 = load i64, i64* @MUX_INDEX, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = or i64 %67, %63
  store i64 %68, i64* %66, align 8
  br label %112

69:                                               ; preds = %49
  %70 = load i16, i16* %2, align 2
  %71 = call i64 @GPIO_ISOUT(i16 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i64*, i64** @access_map, align 8
  %75 = load i64, i64* @OUTP_INDEX, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %3, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %115

82:                                               ; preds = %73
  %83 = load i64, i64* %3, align 8
  %84 = load i64*, i64** @access_map, align 8
  %85 = load i64, i64* @OUTP_INDEX, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = or i64 %87, %83
  store i64 %88, i64* %86, align 8
  br label %111

89:                                               ; preds = %69
  %90 = load i16, i16* %2, align 2
  %91 = call i64 @GPIO_ISIN(i16 zeroext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load i64*, i64** @access_map, align 8
  %95 = load i64, i64* @INP_INDEX, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %3, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %115

102:                                              ; preds = %93
  %103 = load i64, i64* %3, align 8
  %104 = load i64*, i64** @access_map, align 8
  %105 = load i64, i64* @INP_INDEX, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = or i64 %107, %103
  store i64 %108, i64* %106, align 8
  br label %110

109:                                              ; preds = %89
  br label %115

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %62
  br label %113

113:                                              ; preds = %112, %42
  br label %114

114:                                              ; preds = %113, %22
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %109, %101, %81, %61, %41, %21
  %116 = call i32 (...) @gpio_unlock()
  %117 = load i32, i32* %4, align 4
  ret i32 %117
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
