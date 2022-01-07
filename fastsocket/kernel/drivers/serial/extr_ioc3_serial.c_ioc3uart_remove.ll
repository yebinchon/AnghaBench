; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ioc3uart_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ioc3uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_submodule = type { i64 }
%struct.ioc3_driver_data = type { %struct.ioc3_port** }
%struct.ioc3_port = type { %struct.TYPE_4__*, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ioc3_port*, %struct.uart_port* }
%struct.uart_port = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ioc3_card = type { %struct.TYPE_4__*, i32, i64, %struct.TYPE_3__* }

@LOGICAL_PORTS_PER_CARD = common dso_local global i32 0, align 4
@ioc3_uart = common dso_local global i32 0, align 4
@TOTAL_RING_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc3_submodule*, %struct.ioc3_driver_data*)* @ioc3uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioc3uart_remove(%struct.ioc3_submodule* %0, %struct.ioc3_driver_data* %1) #0 {
  %3 = alloca %struct.ioc3_submodule*, align 8
  %4 = alloca %struct.ioc3_driver_data*, align 8
  %5 = alloca %struct.ioc3_card*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.ioc3_port*, align 8
  %8 = alloca i32, align 4
  store %struct.ioc3_submodule* %0, %struct.ioc3_submodule** %3, align 8
  store %struct.ioc3_driver_data* %1, %struct.ioc3_driver_data** %4, align 8
  %9 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %4, align 8
  %10 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %9, i32 0, i32 0
  %11 = load %struct.ioc3_port**, %struct.ioc3_port*** %10, align 8
  %12 = load %struct.ioc3_submodule*, %struct.ioc3_submodule** %3, align 8
  %13 = getelementptr inbounds %struct.ioc3_submodule, %struct.ioc3_submodule* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ioc3_port*, %struct.ioc3_port** %11, i64 %14
  %16 = load %struct.ioc3_port*, %struct.ioc3_port** %15, align 8
  %17 = bitcast %struct.ioc3_port* %16 to %struct.ioc3_card*
  store %struct.ioc3_card* %17, %struct.ioc3_card** %5, align 8
  %18 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %19 = icmp ne %struct.ioc3_card* %18, null
  br i1 %19, label %20, label %100

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %86, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @LOGICAL_PORTS_PER_CARD, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %21
  %26 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %27 = getelementptr inbounds %struct.ioc3_card, %struct.ioc3_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @GET_PHYSICAL_PORT(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.uart_port*, %struct.uart_port** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @GET_LOGICAL_PORT(i32 %34)
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i64 %35
  store %struct.uart_port* %36, %struct.uart_port** %6, align 8
  %37 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %38 = icmp ne %struct.uart_port* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %41 = call i32 @uart_remove_one_port(i32* @ioc3_uart, %struct.uart_port* %40)
  br label %42

42:                                               ; preds = %39, %25
  %43 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %44 = getelementptr inbounds %struct.ioc3_card, %struct.ioc3_card* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @GET_PHYSICAL_PORT(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.ioc3_port*, %struct.ioc3_port** %49, align 8
  store %struct.ioc3_port* %50, %struct.ioc3_port** %7, align 8
  %51 = load %struct.ioc3_port*, %struct.ioc3_port** %7, align 8
  %52 = icmp ne %struct.ioc3_port* %51, null
  br i1 %52, label %53, label %85

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @IS_PHYSICAL_PORT(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @GET_PHYSICAL_PORT(i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %57
  %62 = load %struct.ioc3_port*, %struct.ioc3_port** %7, align 8
  %63 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TOTAL_RING_BUF_SIZE, align 4
  %68 = load %struct.ioc3_port*, %struct.ioc3_port** %7, align 8
  %69 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.ioc3_port*, %struct.ioc3_port** %7, align 8
  %73 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pci_free_consistent(i32 %66, i32 %67, i8* %71, i32 %74)
  %76 = load %struct.ioc3_port*, %struct.ioc3_port** %7, align 8
  %77 = call i32 @kfree(%struct.ioc3_port* %76)
  %78 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %79 = getelementptr inbounds %struct.ioc3_card, %struct.ioc3_card* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i64 @GET_PHYSICAL_PORT(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store %struct.ioc3_port* null, %struct.ioc3_port** %84, align 8
  br label %85

85:                                               ; preds = %61, %57, %53, %42
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %21

89:                                               ; preds = %21
  %90 = load %struct.ioc3_card*, %struct.ioc3_card** %5, align 8
  %91 = bitcast %struct.ioc3_card* %90 to %struct.ioc3_port*
  %92 = call i32 @kfree(%struct.ioc3_port* %91)
  %93 = load %struct.ioc3_driver_data*, %struct.ioc3_driver_data** %4, align 8
  %94 = getelementptr inbounds %struct.ioc3_driver_data, %struct.ioc3_driver_data* %93, i32 0, i32 0
  %95 = load %struct.ioc3_port**, %struct.ioc3_port*** %94, align 8
  %96 = load %struct.ioc3_submodule*, %struct.ioc3_submodule** %3, align 8
  %97 = getelementptr inbounds %struct.ioc3_submodule, %struct.ioc3_submodule* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.ioc3_port*, %struct.ioc3_port** %95, i64 %98
  store %struct.ioc3_port* null, %struct.ioc3_port** %99, align 8
  br label %100

100:                                              ; preds = %89, %2
  ret i32 0
}

declare dso_local i64 @GET_PHYSICAL_PORT(i32) #1

declare dso_local i64 @GET_LOGICAL_PORT(i32) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.uart_port*) #1

declare dso_local i64 @IS_PHYSICAL_PORT(i32) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ioc3_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
