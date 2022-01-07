; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_sh_gpio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.pinmux_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pinmux_data_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@gpio_lock = common dso_local global i32 0, align 4
@PINMUX_FLAG_TYPE = common dso_local global i32 0, align 4
@PINMUX_TYPE_NONE = common dso_local global i32 0, align 4
@PINMUX_TYPE_FUNCTION = common dso_local global i32 0, align 4
@PINMUX_TYPE_GPIO = common dso_local global i32 0, align 4
@GPIO_CFG_DRYRUN = common dso_local global i32 0, align 4
@GPIO_CFG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @sh_gpio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_gpio_request(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinmux_info*, align 8
  %6 = alloca %struct.pinmux_data_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.pinmux_info* @chip_to_pinmux(%struct.gpio_chip* %11)
  store %struct.pinmux_info* %12, %struct.pinmux_info** %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %16 = icmp ne %struct.pinmux_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %90

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @gpio_lock, i64 %19)
  %21 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %22 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PINMUX_FLAG_TYPE, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @PINMUX_TYPE_NONE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %87

34:                                               ; preds = %18
  %35 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @get_data_reg(%struct.pinmux_info* %35, i32 %36, %struct.pinmux_data_reg** %6, i32* %8)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @PINMUX_TYPE_FUNCTION, align 4
  store i32 %40, i32* %10, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @PINMUX_TYPE_GPIO, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @PINMUX_TYPE_FUNCTION, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @GPIO_CFG_DRYRUN, align 4
  %52 = call i64 @pinmux_config_gpio(%struct.pinmux_info* %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %87

55:                                               ; preds = %47
  %56 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @GPIO_CFG_REQ, align 4
  %60 = call i64 @pinmux_config_gpio(%struct.pinmux_info* %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (...) @BUG()
  br label %64

64:                                               ; preds = %62, %55
  br label %65

65:                                               ; preds = %64, %43
  %66 = load i32, i32* @PINMUX_FLAG_TYPE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %69 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %67
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.pinmux_info*, %struct.pinmux_info** %5, align 8
  %79 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %77
  store i32 %86, i32* %84, align 4
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %65, %54, %33
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* @gpio_lock, i64 %88)
  br label %90

90:                                               ; preds = %87, %17
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local %struct.pinmux_info* @chip_to_pinmux(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @get_data_reg(%struct.pinmux_info*, i32, %struct.pinmux_data_reg**, i32*) #1

declare dso_local i64 @pinmux_config_gpio(%struct.pinmux_info*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
