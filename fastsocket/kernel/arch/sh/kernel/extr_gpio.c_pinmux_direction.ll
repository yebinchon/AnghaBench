; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_pinmux_direction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_gpio.c_pinmux_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinmux_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PINMUX_FLAG_TYPE = common dso_local global i32 0, align 4
@GPIO_CFG_FREE = common dso_local global i32 0, align 4
@GPIO_CFG_DRYRUN = common dso_local global i32 0, align 4
@GPIO_CFG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinmux_info*, i32, i32)* @pinmux_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pinmux_direction(%struct.pinmux_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinmux_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pinmux_info* %0, %struct.pinmux_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %12 = icmp ne %struct.pinmux_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %16 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PINMUX_FLAG_TYPE, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %33 [
    i32 132, label %26
    i32 128, label %27
    i32 131, label %27
    i32 129, label %27
    i32 130, label %27
  ]

26:                                               ; preds = %14
  br label %34

27:                                               ; preds = %14, %14, %14, %14
  %28 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GPIO_CFG_FREE, align 4
  %32 = call i64 @pinmux_config_gpio(%struct.pinmux_info* %28, i32 %29, i32 %30, i32 %31)
  br label %34

33:                                               ; preds = %14
  br label %73

34:                                               ; preds = %27, %26
  %35 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GPIO_CFG_DRYRUN, align 4
  %39 = call i64 @pinmux_config_gpio(%struct.pinmux_info* %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %73

42:                                               ; preds = %34
  %43 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @GPIO_CFG_REQ, align 4
  %47 = call i64 @pinmux_config_gpio(%struct.pinmux_info* %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32, i32* @PINMUX_FLAG_TYPE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %55 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %53
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.pinmux_info*, %struct.pinmux_info** %4, align 8
  %65 = getelementptr inbounds %struct.pinmux_info, %struct.pinmux_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %63
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %51, %41, %33, %13
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i64 @pinmux_config_gpio(%struct.pinmux_info*, i32, i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
