; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ioc3uart_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ioc3uart_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_submodule = type { i32 }
%struct.ioc3_driver_data = type { i32 }

@SIO_IR_SA = common dso_local global i32 0, align 4
@SIO_IR_SB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3_submodule*, %struct.ioc3_driver_data*, i32)* @ioc3uart_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3uart_intr(%struct.ioc3_submodule* %0, %struct.ioc3_driver_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ioc3_submodule*, align 8
  %5 = alloca %struct.ioc3_driver_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ioc3_submodule* %0, %struct.ioc3_submodule** %4, align 8
  store %struct.ioc3_driver_data* %1, %struct.ioc3_driver_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @SIO_IR_SA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.ioc3_submodule*, %struct.ioc3_submodule** %4, align 8
  %14 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SIO_IR_SA, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @ioc3uart_intr_one(%struct.ioc3_submodule* %13, %struct.ioc3_driver_data* %14, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %12, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SIO_IR_SB, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.ioc3_submodule*, %struct.ioc3_submodule** %4, align 8
  %28 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SIO_IR_SB, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @ioc3uart_intr_one(%struct.ioc3_submodule* %27, %struct.ioc3_driver_data* %28, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %26, %21
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local i32 @ioc3uart_intr_one(%struct.ioc3_submodule*, %struct.ioc3_driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
