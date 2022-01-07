; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_suncore.c_sunserial_register_minors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_suncore.c_sunserial_register_minors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_driver = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@sunserial_current_minor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunserial_register_minors(%struct.uart_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_driver* %0, %struct.uart_driver** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @sunserial_current_minor, align 4
  %7 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %8 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %11 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %15 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %21 = call i32 @uart_register_driver(%struct.uart_driver* %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @sunserial_current_minor, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* @sunserial_current_minor, align 4
  %29 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %30 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 64
  %33 = load %struct.uart_driver*, %struct.uart_driver** %3, align 8
  %34 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @uart_register_driver(%struct.uart_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
