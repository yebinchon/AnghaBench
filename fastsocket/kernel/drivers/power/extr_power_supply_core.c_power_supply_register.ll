; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c_power_supply_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c_power_supply_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { i32, i32, i32 }

@power_supply_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@power_supply_changed_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_register(%struct.device* %0, %struct.power_supply* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.power_supply* %1, %struct.power_supply** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @power_supply_class, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_create(i32 %6, %struct.device* %7, i32 0, %struct.power_supply* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %14 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %16 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %22 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %52

25:                                               ; preds = %2
  %26 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %27 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %26, i32 0, i32 1
  %28 = load i32, i32* @power_supply_changed_work, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %31 = call i32 @power_supply_create_attrs(%struct.power_supply* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %47

35:                                               ; preds = %25
  %36 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %37 = call i32 @power_supply_create_triggers(%struct.power_supply* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %44

41:                                               ; preds = %35
  %42 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %43 = call i32 @power_supply_changed(%struct.power_supply* %42)
  br label %53

44:                                               ; preds = %40
  %45 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %46 = call i32 @power_supply_remove_attrs(%struct.power_supply* %45)
  br label %47

47:                                               ; preds = %44, %34
  %48 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %49 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @device_unregister(i32 %50)
  br label %52

52:                                               ; preds = %47, %20
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @device_create(i32, %struct.device*, i32, %struct.power_supply*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @power_supply_create_attrs(%struct.power_supply*) #1

declare dso_local i32 @power_supply_create_triggers(%struct.power_supply*) #1

declare dso_local i32 @power_supply_changed(%struct.power_supply*) #1

declare dso_local i32 @power_supply_remove_attrs(%struct.power_supply*) #1

declare dso_local i32 @device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
