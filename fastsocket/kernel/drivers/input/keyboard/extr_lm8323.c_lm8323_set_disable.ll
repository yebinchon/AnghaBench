; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_set_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_lm8323.c_lm8323_set_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm8323_chip = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lm8323_set_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lm8323_set_disable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.lm8323_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.lm8323_chip* @dev_get_drvdata(%struct.device* %12)
  store %struct.lm8323_chip* %13, %struct.lm8323_chip** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strict_strtoul(i8* %14, i32 10, i64* %11)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.lm8323_chip*, %struct.lm8323_chip** %9, align 8
  %17 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.lm8323_chip*, %struct.lm8323_chip** %9, align 8
  %24 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.lm8323_chip*, %struct.lm8323_chip** %9, align 8
  %26 = getelementptr inbounds %struct.lm8323_chip, %struct.lm8323_chip* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i64, i64* %8, align 8
  ret i64 %28
}

declare dso_local %struct.lm8323_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
