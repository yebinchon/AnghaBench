; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_get_ioc3_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_get_ioc3_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_port = type { i32 }
%struct.uart_port = type { i32 }
%struct.ioc3_driver_data = type { %struct.ioc3_card** }
%struct.ioc3_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ioc3_port*, %struct.uart_port* }

@Submodule_slot = common dso_local global i64 0, align 8
@PORTS_PER_CARD = common dso_local global i32 0, align 4
@LOGICAL_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioc3_port* (%struct.uart_port*)* @get_ioc3_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioc3_port* @get_ioc3_port(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.ioc3_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.ioc3_driver_data*, align 8
  %5 = alloca %struct.ioc3_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ioc3_driver_data* @dev_get_drvdata(i32 %10)
  store %struct.ioc3_driver_data* %11, %struct.ioc3_driver_data** %4, align 8
  %12 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %4, align 8
  %13 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %12, i32 0, i32 0
  %14 = load %struct.ioc3_card**, %struct.ioc3_card*** %13, align 8
  %15 = load i64, i64* @Submodule_slot, align 8
  %16 = getelementptr inbounds %struct.ioc3_card*, %struct.ioc3_card** %14, i64 %15
  %17 = load %struct.ioc3_card*, %struct.ioc3_card** %16, align 8
  store %struct.ioc3_card* %17, %struct.ioc3_card** %5, align 8
  %18 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %19 = icmp ne %struct.ioc3_card* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = call i32 (...) @NOT_PROGRESS()
  store %struct.ioc3_port* null, %struct.ioc3_port** %2, align 8
  br label %65

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PORTS_PER_CARD, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @LOGICAL_PORTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %35 = getelementptr inbounds %struct.ioc3_card, %struct.ioc3_card* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load %struct.uart_port*, %struct.uart_port** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i64 %43
  %45 = icmp eq %struct.uart_port* %33, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %32
  %47 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %48 = getelementptr inbounds %struct.ioc3_card, %struct.ioc3_card* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.ioc3_port*, %struct.ioc3_port** %53, align 8
  store %struct.ioc3_port* %54, %struct.ioc3_port** %2, align 8
  br label %65

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %28

59:                                               ; preds = %28
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %23

63:                                               ; preds = %23
  %64 = call i32 (...) @NOT_PROGRESS()
  store %struct.ioc3_port* null, %struct.ioc3_port** %2, align 8
  br label %65

65:                                               ; preds = %63, %46, %20
  %66 = load %struct.ioc3_port*, %struct.ioc3_port** %2, align 8
  ret %struct.ioc3_port* %66
}

declare dso_local %struct.ioc3_driver_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @NOT_PROGRESS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
