; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_find_match_or_unused.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_find_match_or_unused.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.uart_port = type { i32 }

@nr_uarts = common dso_local global i32 0, align 4
@serial8250_ports = common dso_local global %struct.uart_8250_port* null, align 8
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uart_8250_port* (%struct.uart_port*)* @serial8250_find_match_or_unused to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uart_8250_port* @serial8250_find_match_or_unused(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @nr_uarts, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i64 %12
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = call i64 @uart_match_port(%struct.TYPE_2__* %14, %struct.uart_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %9
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %19, i64 %21
  store %struct.uart_8250_port* %22, %struct.uart_8250_port** %2, align 8
  br label %85

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @nr_uarts, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %33, i64 %35
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PORT_UNKNOWN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %32
  %43 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %43, i64 %45
  %47 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %52, i64 %54
  store %struct.uart_8250_port* %55, %struct.uart_8250_port** %2, align 8
  br label %85

56:                                               ; preds = %42, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %28

60:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @nr_uarts, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %66, i64 %68
  %70 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PORT_UNKNOWN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %76, i64 %78
  store %struct.uart_8250_port* %79, %struct.uart_8250_port** %2, align 8
  br label %85

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %61

84:                                               ; preds = %61
  store %struct.uart_8250_port* null, %struct.uart_8250_port** %2, align 8
  br label %85

85:                                               ; preds = %84, %75, %51, %18
  %86 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  ret %struct.uart_8250_port* %86
}

declare dso_local i64 @uart_match_port(%struct.TYPE_2__*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
