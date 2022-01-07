; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_pl061.c_pl061_irq_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpio/extr_pl061.c_pl061_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl061_gpio = type { i32, i32, i64 }

@PL061_GPIO_NR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GPIOIEV = common dso_local global i64 0, align 8
@GPIOIS = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@GPIOIBE = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pl061_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl061_irq_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pl061_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.pl061_gpio* @get_irq_chip_data(i32 %12)
  store %struct.pl061_gpio* %13, %struct.pl061_gpio** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %16 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub i32 %14, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PL061_GPIO_NR, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %143

28:                                               ; preds = %21
  %29 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %30 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %34 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GPIOIEV, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readb(i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %40 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GPIOIS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readb(i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %47 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %28
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %71

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %65, %60
  br label %78

72:                                               ; preds = %28
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %9, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %81 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GPIOIS, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writeb(i32 %79, i64 %84)
  %86 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %87 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @GPIOIBE, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readb(i64 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %78
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 1, %98
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %124

102:                                              ; preds = %78
  %103 = load i32, i32* %7, align 4
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 1, %113
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %123

117:                                              ; preds = %102
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 1, %118
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %11, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %117, %112
  br label %124

124:                                              ; preds = %123, %97
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %127 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @GPIOIBE, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writeb(i32 %125, i64 %130)
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %134 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @GPIOIEV, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writeb(i32 %132, i64 %137)
  %139 = load %struct.pl061_gpio*, %struct.pl061_gpio** %6, align 8
  %140 = getelementptr inbounds %struct.pl061_gpio, %struct.pl061_gpio* %139, i32 0, i32 1
  %141 = load i64, i64* %8, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %124, %25
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local %struct.pl061_gpio* @get_irq_chip_data(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
