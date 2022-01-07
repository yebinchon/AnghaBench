; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_verify_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_verify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.serial_struct = type { i64, i64, i64, i32, i8*, i64, i64 }
%struct.pnx8xxx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@PORT_PNX8XXX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SERIAL_IO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.serial_struct*)* @pnx8xxx_verify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnx8xxx_verify_port(%struct.uart_port* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.pnx8xxx_port*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.pnx8xxx_port*
  store %struct.pnx8xxx_port* %8, %struct.pnx8xxx_port** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %10 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PORT_UNKNOWN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %16 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_PNX8XXX, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20, %14, %2
  %24 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %25 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %37 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SERIAL_IO_MEM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %46 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 16
  %50 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %51 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %59 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %64 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %57
  %71 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %5, align 8
  %72 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %76 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %84 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
