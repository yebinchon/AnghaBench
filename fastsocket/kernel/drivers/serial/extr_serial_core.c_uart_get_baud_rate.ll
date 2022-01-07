; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_get_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_get_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }
%struct.ktermios = type { i32 }

@UPF_SPD_MASK = common dso_local global i64 0, align 8
@UPF_SPD_HI = common dso_local global i64 0, align 8
@UPF_SPD_VHI = common dso_local global i64 0, align 8
@UPF_SPD_SHI = common dso_local global i64 0, align 8
@UPF_SPD_WARP = common dso_local global i64 0, align 8
@CBAUD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uart_get_baud_rate(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.ktermios*, align 8
  %9 = alloca %struct.ktermios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %7, align 8
  store %struct.ktermios* %1, %struct.ktermios** %8, align 8
  store %struct.ktermios* %2, %struct.ktermios** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 38400, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UPF_SPD_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %16, align 8
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* @UPF_SPD_HI, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 57600, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @UPF_SPD_VHI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 115200, i32* %14, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i64, i64* %16, align 8
  %33 = load i64, i64* @UPF_SPD_SHI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 230400, i32* %14, align 4
  br label %36

36:                                               ; preds = %35, %31
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* @UPF_SPD_WARP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 460800, i32* %14, align 4
  br label %41

41:                                               ; preds = %40, %36
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %93, %41
  %43 = load i32, i32* %12, align 4
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %47 = call i32 @tty_termios_baud_rate(%struct.ktermios* %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp eq i32 %48, 38400
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %15, align 4
  store i32 9600, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %52
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %97

66:                                               ; preds = %60, %56
  %67 = load i32, i32* @CBAUD, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %74 = icmp ne %struct.ktermios* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load %struct.ktermios*, %struct.ktermios** %9, align 8
  %77 = call i32 @tty_termios_baud_rate(%struct.ktermios* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %75
  store %struct.ktermios* null, %struct.ktermios** %9, align 8
  br label %93

86:                                               ; preds = %66
  %87 = load i32, i32* %15, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %91 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %90, i32 9600, i32 9600)
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %85
  %94 = load i32, i32* %12, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %42

96:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %64
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
