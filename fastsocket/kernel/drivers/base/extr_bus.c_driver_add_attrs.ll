; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_driver_add_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_driver_add_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32* }
%struct.device_driver = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*, %struct.device_driver*)* @driver_add_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @driver_add_attrs(%struct.bus_type* %0, %struct.device_driver* %1) #0 {
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %3, align 8
  store %struct.device_driver* %1, %struct.device_driver** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %8 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %35, %11
  %13 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %14 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @attr_name(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %12
  %23 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %24 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %25 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = call i32 @driver_create_file(%struct.device_driver* %23, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %42

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %12

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38, %2
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %5, align 4
  ret i32 %41

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %49 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %50 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @driver_remove_file(%struct.device_driver* %48, i32* %54)
  br label %43

56:                                               ; preds = %43
  br label %40
}

declare dso_local i64 @attr_name(i32) #1

declare dso_local i32 @driver_create_file(%struct.device_driver*, i32*) #1

declare dso_local i32 @driver_remove_file(%struct.device_driver*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
