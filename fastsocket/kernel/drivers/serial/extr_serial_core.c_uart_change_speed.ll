; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.uart_port*, %struct.tty_port }
%struct.uart_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* }
%struct.tty_port = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { %struct.ktermios* }
%struct.ktermios = type { i32 }

@PORT_UNKNOWN = common dso_local global i64 0, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@ASYNCB_CTS_FLOW = common dso_local global i32 0, align 4
@CDTRDSR = common dso_local global i32 0, align 4
@ASYNCB_DSR_FLOW = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ASYNCB_CHECK_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_state*, %struct.ktermios*)* @uart_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_change_speed(%struct.uart_state* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.tty_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.ktermios*, align 8
  store %struct.uart_state* %0, %struct.uart_state** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %9 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %10 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %9, i32 0, i32 1
  store %struct.tty_port* %10, %struct.tty_port** %5, align 8
  %11 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %6, align 8
  %14 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %15 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %14, i32 0, i32 0
  %16 = load %struct.uart_port*, %struct.uart_port** %15, align 8
  store %struct.uart_port* %16, %struct.uart_port** %7, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %18 = icmp ne %struct.tty_struct* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load %struct.ktermios*, %struct.ktermios** %21, align 8
  %23 = icmp ne %struct.ktermios* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PORT_UNKNOWN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %19, %2
  br label %95

31:                                               ; preds = %24
  %32 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = load %struct.ktermios*, %struct.ktermios** %33, align 8
  store %struct.ktermios* %34, %struct.ktermios** %8, align 8
  %35 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CRTSCTS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load i32, i32* @ASYNCB_CTS_FLOW, align 4
  %43 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %44 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  br label %51

46:                                               ; preds = %31
  %47 = load i32, i32* @ASYNCB_CTS_FLOW, align 4
  %48 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %49 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CDTRDSR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* @ASYNCB_DSR_FLOW, align 4
  %60 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %61 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %60, i32 0, i32 0
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  br label %68

63:                                               ; preds = %51
  %64 = load i32, i32* @ASYNCB_DSR_FLOW, align 4
  %65 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %66 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %70 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CLOCAL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @ASYNCB_CHECK_CD, align 4
  %77 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %78 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %77, i32 0, i32 0
  %79 = call i32 @clear_bit(i32 %76, i32* %78)
  br label %85

80:                                               ; preds = %68
  %81 = load i32, i32* @ASYNCB_CHECK_CD, align 4
  %82 = load %struct.tty_port*, %struct.tty_port** %5, align 8
  %83 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %82, i32 0, i32 0
  %84 = call i32 @set_bit(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)*, i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)** %89, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %92 = load %struct.ktermios*, %struct.ktermios** %8, align 8
  %93 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %94 = call i32 %90(%struct.uart_port* %91, %struct.ktermios* %92, %struct.ktermios* %93)
  br label %95

95:                                               ; preds = %85, %30
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
