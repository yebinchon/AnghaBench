; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_gpio.c_of_mm_gpiochip_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/of/extr_gpio.c_of_mm_gpiochip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, %struct.of_gpio_chip* }
%struct.of_gpio_chip = type { i64, %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32 }
%struct.of_mm_gpio_chip = type { i32, i32 (%struct.of_mm_gpio_chip*)*, %struct.of_gpio_chip }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@of_gpio_simple_xlate = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"%s: registered as generic GPIO chip, base is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: GPIO chip registration failed with status %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_mm_gpiochip_add(%struct.device_node* %0, %struct.of_mm_gpio_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.of_mm_gpio_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.of_gpio_chip*, align 8
  %8 = alloca %struct.gpio_chip*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.of_mm_gpio_chip* %1, %struct.of_mm_gpio_chip** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %12 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %11, i32 0, i32 2
  store %struct.of_gpio_chip* %12, %struct.of_gpio_chip** %7, align 8
  %13 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %7, align 8
  %14 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %13, i32 0, i32 1
  store %struct.gpio_chip* %14, %struct.gpio_chip** %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = getelementptr inbounds %struct.device_node, %struct.device_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kstrdup(i32 %17, i32 %18)
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %21 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %90

27:                                               ; preds = %2
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @of_iomap(%struct.device_node* %28, i32 0)
  %30 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %31 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %33 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %85

37:                                               ; preds = %27
  %38 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %39 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %7, align 8
  %41 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* @of_gpio_simple_xlate, align 8
  %46 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %7, align 8
  %47 = getelementptr inbounds %struct.of_gpio_chip, %struct.of_gpio_chip* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %50 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %49, i32 0, i32 1
  %51 = load i32 (%struct.of_mm_gpio_chip*)*, i32 (%struct.of_mm_gpio_chip*)** %50, align 8
  %52 = icmp ne i32 (%struct.of_mm_gpio_chip*)* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %55 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %54, i32 0, i32 1
  %56 = load i32 (%struct.of_mm_gpio_chip*)*, i32 (%struct.of_mm_gpio_chip*)** %55, align 8
  %57 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %58 = call i32 %56(%struct.of_mm_gpio_chip* %57)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.of_gpio_chip*, %struct.of_gpio_chip** %7, align 8
  %61 = load %struct.device_node*, %struct.device_node** %4, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 1
  store %struct.of_gpio_chip* %60, %struct.of_gpio_chip** %62, align 8
  %63 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %64 = call i32 @gpiochip_add(%struct.gpio_chip* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %78

68:                                               ; preds = %59
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = call i32 @of_node_get(%struct.device_node* %69)
  %71 = load %struct.device_node*, %struct.device_node** %4, align 8
  %72 = getelementptr inbounds %struct.device_node, %struct.device_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %75 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  store i32 0, i32* %3, align 4
  br label %97

78:                                               ; preds = %67
  %79 = load %struct.device_node*, %struct.device_node** %4, align 8
  %80 = getelementptr inbounds %struct.device_node, %struct.device_node* %79, i32 0, i32 1
  store %struct.of_gpio_chip* null, %struct.of_gpio_chip** %80, align 8
  %81 = load %struct.of_mm_gpio_chip*, %struct.of_mm_gpio_chip** %5, align 8
  %82 = getelementptr inbounds %struct.of_mm_gpio_chip, %struct.of_mm_gpio_chip* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @iounmap(i32 %83)
  br label %85

85:                                               ; preds = %78, %36
  %86 = load %struct.gpio_chip*, %struct.gpio_chip** %8, align 8
  %87 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @kfree(i32 %88)
  br label %90

90:                                               ; preds = %85, %26
  %91 = load %struct.device_node*, %struct.device_node** %4, align 8
  %92 = getelementptr inbounds %struct.device_node, %struct.device_node* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %90, %68
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @gpiochip_add(%struct.gpio_chip*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
