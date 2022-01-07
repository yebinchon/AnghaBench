; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c___power_supply_changed_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c___power_supply_changed_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { i32, i32 (%struct.power_supply*)*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__power_supply_changed_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__power_supply_changed_work(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.power_supply*
  store %struct.power_supply* %9, %struct.power_supply** %5, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %10)
  store %struct.power_supply* %11, %struct.power_supply** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %44, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %15 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %20 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %27 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %18
  %32 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %33 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %32, i32 0, i32 1
  %34 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %33, align 8
  %35 = icmp ne i32 (%struct.power_supply*)* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %38 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %37, i32 0, i32 1
  %39 = load i32 (%struct.power_supply*)*, i32 (%struct.power_supply*)** %38, align 8
  %40 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %41 = call i32 %39(%struct.power_supply* %40)
  br label %42

42:                                               ; preds = %36, %31
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %12

47:                                               ; preds = %12
  ret i32 0
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
