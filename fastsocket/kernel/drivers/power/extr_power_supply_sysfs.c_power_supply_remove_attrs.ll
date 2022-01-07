; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_sysfs.c_power_supply_remove_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_sysfs.c_power_supply_remove_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, i64*, i32 }

@power_supply_static_attrs = common dso_local global i32* null, align 8
@power_supply_attrs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @power_supply_remove_attrs(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @power_supply_static_attrs, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** @power_supply_static_attrs, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @device_remove_file(i32 %12, i32* %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %25 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %22
  %29 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %30 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** @power_supply_attrs, align 8
  %33 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %34 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = call i32 @device_remove_file(i32 %31, i32* %40)
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %22

45:                                               ; preds = %22
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
