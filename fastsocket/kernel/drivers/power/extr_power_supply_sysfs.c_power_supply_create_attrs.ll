; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_sysfs.c_power_supply_create_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_sysfs.c_power_supply_create_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32, i64*, i32 }

@power_supply_static_attrs = common dso_local global i32* null, align 8
@power_supply_attrs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_create_attrs(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @power_supply_static_attrs, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %13 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** @power_supply_static_attrs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @device_create_file(i32 %14, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %76

23:                                               ; preds = %11
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %31 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %36 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** @power_supply_attrs, align 8
  %39 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %40 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  %47 = call i32 @device_create_file(i32 %37, i32* %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %56

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %28

55:                                               ; preds = %28
  br label %91

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %61, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %63 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** @power_supply_attrs, align 8
  %66 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %67 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %65, i64 %72
  %74 = call i32 @device_remove_file(i32 %64, i32* %73)
  br label %57

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75, %22
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %4, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %83 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** @power_supply_static_attrs, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @device_remove_file(i32 %84, i32* %88)
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
