; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_dig.c_au8522_led_gpio_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_au8522_dig.c_au8522_led_gpio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au8522_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.au8522_led_config* }
%struct.au8522_led_config = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au8522_state*, i32)* @au8522_led_gpio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_led_gpio_enable(%struct.au8522_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au8522_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.au8522_led_config*, align 8
  %7 = alloca i32, align 4
  store %struct.au8522_state* %0, %struct.au8522_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.au8522_state*, %struct.au8522_state** %4, align 8
  %9 = getelementptr inbounds %struct.au8522_state, %struct.au8522_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.au8522_led_config*, %struct.au8522_led_config** %11, align 8
  store %struct.au8522_led_config* %12, %struct.au8522_led_config** %6, align 8
  %13 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %14 = icmp ne %struct.au8522_led_config* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %17 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %22 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %27 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20, %15, %2
  store i32 0, i32* %3, align 4
  br label %80

31:                                               ; preds = %25
  %32 = load %struct.au8522_state*, %struct.au8522_state** %4, align 8
  %33 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %34 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -49153
  %37 = or i32 16384, %36
  %38 = call i32 @au8522_readreg(%struct.au8522_state* %32, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %43 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %51 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %71

56:                                               ; preds = %31
  %57 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %58 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %66 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 255
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %56, %41
  %72 = load %struct.au8522_state*, %struct.au8522_state** %4, align 8
  %73 = load %struct.au8522_led_config*, %struct.au8522_led_config** %6, align 8
  %74 = getelementptr inbounds %struct.au8522_led_config, %struct.au8522_led_config* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, -49153
  %77 = or i32 32768, %76
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @au8522_writereg(%struct.au8522_state* %72, i32 %77, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %30
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @au8522_readreg(%struct.au8522_state*, i32) #1

declare dso_local i32 @au8522_writereg(%struct.au8522_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
