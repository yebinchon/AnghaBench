; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_ints-priority.c_bfin_gpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_ints-priority.c_bfin_gpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_TYPE_PROBE = common dso_local global i32 0, align 4
@gpio_enabled = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"gpio-irq%d\00", align 1
@handle_edge_irq = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bfin_gpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_gpio_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @irq_to_gpio(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IRQ_TYPE_PROBE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @gpio_enabled, align 4
  %17 = call i64 @test_bit(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %127

20:                                               ; preds = %14
  %21 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %22 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %27 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %25, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %24
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @snprintf(i8* %36, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %41 = call i32 @bfin_gpio_irq_request(i32 %39, i8* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %127

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @gpio_enabled, align 4
  %49 = call i64 @__test_and_set_bit(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @bfin_gpio_irq_prepare(i32 %52)
  br label %54

54:                                               ; preds = %51, %46
  br label %59

55:                                               ; preds = %24
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @gpio_enabled, align 4
  %58 = call i32 @__clear_bit(i32 %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %127

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @set_gpio_inen(i32 %60, i32 0)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @set_gpio_dir(i32 %62, i32 0)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %66 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %70 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %71 = or i32 %69, %70
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @set_gpio_both(i32 %74, i32 1)
  br label %79

76:                                               ; preds = %59
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @set_gpio_both(i32 %77, i32 0)
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %82 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @set_gpio_polar(i32 %87, i32 1)
  br label %92

89:                                               ; preds = %79
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @set_gpio_polar(i32 %90, i32 0)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %95 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @set_gpio_edge(i32 %100, i32 1)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @set_gpio_inen(i32 %102, i32 1)
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @set_gpio_data(i32 %104, i32 0)
  br label %111

106:                                              ; preds = %92
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @set_gpio_edge(i32 %107, i32 0)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @set_gpio_inen(i32 %109, i32 1)
  br label %111

111:                                              ; preds = %106, %99
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %114 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @handle_edge_irq, align 4
  %121 = call i32 @bfin_set_irq_handler(i32 %119, i32 %120)
  br label %126

122:                                              ; preds = %111
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @handle_level_irq, align 4
  %125 = call i32 @bfin_set_irq_handler(i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %118
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %55, %44, %19
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @irq_to_gpio(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bfin_gpio_irq_request(i32, i8*) #1

declare dso_local i64 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @bfin_gpio_irq_prepare(i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @set_gpio_inen(i32, i32) #1

declare dso_local i32 @set_gpio_dir(i32, i32) #1

declare dso_local i32 @set_gpio_both(i32, i32) #1

declare dso_local i32 @set_gpio_polar(i32, i32) #1

declare dso_local i32 @set_gpio_edge(i32, i32) #1

declare dso_local i32 @set_gpio_data(i32, i32) #1

declare dso_local i32 @bfin_set_irq_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
