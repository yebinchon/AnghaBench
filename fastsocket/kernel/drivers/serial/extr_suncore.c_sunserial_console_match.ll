; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_suncore.c_sunserial_console_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_suncore.c_sunserial_console_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.console = type { i32, i32 }
%struct.uart_driver = type { %struct.console* }

@of_console_device = common dso_local global %struct.device_node* null, align 8
@of_console_options = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunserial_console_match(%struct.console* %0, %struct.device_node* %1, %struct.uart_driver* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.console*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.uart_driver*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.uart_driver* %2, %struct.uart_driver** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.console*, %struct.console** %7, align 8
  %14 = icmp ne %struct.console* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load %struct.device_node*, %struct.device_node** @of_console_device, align 8
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = icmp ne %struct.device_node* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %5
  store i32 0, i32* %6, align 4
  br label %51

20:                                               ; preds = %15
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %24 = load i8*, i8** @of_console_options, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** @of_console_options, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 98
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %26, %23
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 1
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %51

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.console*, %struct.console** %7, align 8
  %42 = getelementptr inbounds %struct.console, %struct.console* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.console*, %struct.console** %7, align 8
  %44 = load %struct.uart_driver*, %struct.uart_driver** %9, align 8
  %45 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %44, i32 0, i32 0
  store %struct.console* %43, %struct.console** %45, align 8
  %46 = load %struct.console*, %struct.console** %7, align 8
  %47 = getelementptr inbounds %struct.console, %struct.console* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @add_preferred_console(i32 %48, i32 %49, i32* null)
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %39, %37, %19
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @add_preferred_console(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
