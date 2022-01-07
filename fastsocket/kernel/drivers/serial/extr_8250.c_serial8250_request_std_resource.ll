; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_request_std_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_request_std_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @serial8250_request_std_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_request_std_resource(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %6 = call i32 @serial8250_port_size(%struct.uart_8250_port* %5)
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %75 [
    i32 134, label %11
    i32 128, label %11
    i32 130, label %11
    i32 131, label %11
    i32 133, label %11
    i32 132, label %63
    i32 129, label %63
  ]

11:                                               ; preds = %1, %1, %1, %1, %1
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %75

18:                                               ; preds = %11
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @request_mem_region(i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %75

29:                                               ; preds = %18
  %30 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %31 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UPF_IOREMAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %29
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ioremap_nocache(i32 %41, i32 %42)
  %44 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %37
  %53 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %54 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @release_mem_region(i32 %56, i32 %57)
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %37
  br label %62

62:                                               ; preds = %61, %29
  br label %75

63:                                               ; preds = %1, %1
  %64 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %65 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @request_region(i32 %67, i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %63
  br label %75

75:                                               ; preds = %1, %74, %62, %26, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @serial8250_port_size(%struct.uart_8250_port*) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
