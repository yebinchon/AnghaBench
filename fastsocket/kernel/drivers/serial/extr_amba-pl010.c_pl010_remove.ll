; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amba_device = type { i32 }

@amba_reg = common dso_local global i32 0, align 4
@amba_ports = common dso_local global %struct.uart_amba_port** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*)* @pl010_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl010_remove(%struct.amba_device* %0) #0 {
  %2 = alloca %struct.amba_device*, align 8
  %3 = alloca %struct.uart_amba_port*, align 8
  %4 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %2, align 8
  %5 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %6 = call %struct.uart_amba_port* @amba_get_drvdata(%struct.amba_device* %5)
  store %struct.uart_amba_port* %6, %struct.uart_amba_port** %3, align 8
  %7 = load %struct.amba_device*, %struct.amba_device** %2, align 8
  %8 = call i32 @amba_set_drvdata(%struct.amba_device* %7, i32* null)
  %9 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %9, i32 0, i32 1
  %11 = call i32 @uart_remove_one_port(i32* @amba_reg, %struct.TYPE_2__* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %31, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.uart_amba_port** %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  %18 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %18, i64 %20
  %22 = load %struct.uart_amba_port*, %struct.uart_amba_port** %21, align 8
  %23 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %24 = icmp eq %struct.uart_amba_port* %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load %struct.uart_amba_port**, %struct.uart_amba_port*** @amba_ports, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.uart_amba_port*, %struct.uart_amba_port** %26, i64 %28
  store %struct.uart_amba_port* null, %struct.uart_amba_port** %29, align 8
  br label %30

30:                                               ; preds = %25, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %12

34:                                               ; preds = %12
  %35 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iounmap(i32 %38)
  %40 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_put(i32 %42)
  %44 = load %struct.uart_amba_port*, %struct.uart_amba_port** %3, align 8
  %45 = call i32 @kfree(%struct.uart_amba_port* %44)
  ret i32 0
}

declare dso_local %struct.uart_amba_port* @amba_get_drvdata(%struct.amba_device*) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, i32*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.uart_amba_port**) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.uart_amba_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
