; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_leds.c_power_supply_create_bat_triggers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_leds.c_power_supply_create_bat_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i8*, i8*, i32, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s-charging-or-full\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s-charging\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s-full\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*)* @power_supply_create_bat_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_supply_create_bat_triggers(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %6 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i8* @kasprintf(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %71

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %19 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @kasprintf(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %23 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %66

29:                                               ; preds = %16
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %32 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @kasprintf(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %36 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %38 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  br label %61

42:                                               ; preds = %29
  %43 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %44 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %47 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %46, i32 0, i32 5
  %48 = call i32 @led_trigger_register_simple(i8* %45, i32* %47)
  %49 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %50 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %53 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %52, i32 0, i32 4
  %54 = call i32 @led_trigger_register_simple(i8* %51, i32* %53)
  %55 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %56 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %59 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %58, i32 0, i32 2
  %60 = call i32 @led_trigger_register_simple(i8* %57, i32* %59)
  br label %74

61:                                               ; preds = %41
  %62 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %63 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @kfree(i8* %64)
  br label %66

66:                                               ; preds = %61, %28
  %67 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %68 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @kfree(i8* %69)
  br label %71

71:                                               ; preds = %66, %15
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %42
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @led_trigger_register_simple(i8*, i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
