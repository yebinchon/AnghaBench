; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_get_divisor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_get_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i64 }

@UPF_MAGIC_MULTIPLIER = common dso_local global i32 0, align 4
@PORT_16C950 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @serial8250_get_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_get_divisor(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @UPF_MAGIC_MULTIPLIER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %16, 4
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 32769, i32* %5, align 4
  br label %55

20:                                               ; preds = %12, %2
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UPF_MAGIC_MULTIPLIER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 8
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 32770, i32* %5, align 4
  br label %54

35:                                               ; preds = %27, %20
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PORT_16C950, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 16
  %47 = icmp ugt i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %53

49:                                               ; preds = %41, %35
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @uart_get_divisor(%struct.uart_port* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %48
  br label %54

54:                                               ; preds = %53, %34
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
