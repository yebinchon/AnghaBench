; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_device_add_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_bus.c_device_add_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32* }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*, %struct.device*)* @device_add_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_add_attrs(%struct.bus_type* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %9 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %51, %13
  %15 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %16 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @attr_name(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %14
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %27 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @device_create_file(%struct.device* %25, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %43 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @device_remove_file(%struct.device* %41, i32* %47)
  br label %36

49:                                               ; preds = %36
  br label %54

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %14

54:                                               ; preds = %49, %14
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @attr_name(i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
