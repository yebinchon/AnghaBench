; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpc52xx_uart.c_mpc52xx_uart_int_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (%struct.uart_port*)*, i8 (%struct.uart_port*)* }
%struct.uart_port = type { i32, %struct.TYPE_8__, i64, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@psc_ops = common dso_local global %struct.TYPE_9__* null, align 8
@TTY_NORMAL = common dso_local global i8 0, align 1
@MPC52xx_PSC_SR_PE = common dso_local global i16 0, align 2
@MPC52xx_PSC_SR_FE = common dso_local global i16 0, align 2
@MPC52xx_PSC_SR_RB = common dso_local global i16 0, align 2
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@MPC52xx_PSC_RST_ERR_STAT = common dso_local global i32 0, align 4
@MPC52xx_PSC_SR_OE = common dso_local global i16 0, align 2
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mpc52xx_uart_int_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_uart_int_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %3, align 8
  br label %13

13:                                               ; preds = %120, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @psc_ops, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %15, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = call i32 %16(%struct.uart_port* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %121

20:                                               ; preds = %13
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @psc_ops, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i8 (%struct.uart_port*)*, i8 (%struct.uart_port*)** %22, align 8
  %24 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %25 = call zeroext i8 %23(%struct.uart_port* %24)
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %26, i8* %5, align 1
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = call %struct.TYPE_10__* @PSC(%struct.uart_port* %32)
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = call zeroext i16 @in_be16(i32* %34)
  store i16 %35, i16* %6, align 2
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @MPC52xx_PSC_SR_PE, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @MPC52xx_PSC_SR_FE, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = load i16, i16* @MPC52xx_PSC_SR_RB, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %42, %44
  %46 = and i32 %37, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %20
  %49 = load i16, i16* %6, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @MPC52xx_PSC_SR_RB, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i8, i8* @TTY_BREAK, align 1
  store i8 %56, i8* %5, align 1
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = call i32 @uart_handle_break(%struct.uart_port* %57)
  %59 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %94

64:                                               ; preds = %48
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* @MPC52xx_PSC_SR_PE, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i8, i8* @TTY_PARITY, align 1
  store i8 %72, i8* %5, align 1
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %93

78:                                               ; preds = %64
  %79 = load i16, i16* %6, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @MPC52xx_PSC_SR_FE, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i8, i8* @TTY_FRAME, align 1
  store i8 %86, i8* %5, align 1
  %87 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %88 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %55
  %95 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %96 = call %struct.TYPE_10__* @PSC(%struct.uart_port* %95)
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* @MPC52xx_PSC_RST_ERR_STAT, align 4
  %99 = call i32 @out_8(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %20
  %101 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %102 = load i8, i8* %4, align 1
  %103 = load i8, i8* %5, align 1
  %104 = call i32 @tty_insert_flip_char(%struct.tty_struct* %101, i8 zeroext %102, i8 zeroext %103)
  %105 = load i16, i16* %6, align 2
  %106 = zext i16 %105 to i32
  %107 = load i16, i16* @MPC52xx_PSC_SR_OE, align 2
  %108 = zext i16 %107 to i32
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %100
  %112 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %113 = load i8, i8* @TTY_OVERRUN, align 1
  %114 = call i32 @tty_insert_flip_char(%struct.tty_struct* %112, i8 zeroext 0, i8 zeroext %113)
  %115 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %116 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %111, %100
  br label %13

121:                                              ; preds = %13
  %122 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %123 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %126 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %125)
  %127 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %128 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %127, i32 0, i32 0
  %129 = call i32 @spin_lock(i32* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @psc_ops, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %131, align 8
  %133 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %134 = call i32 %132(%struct.uart_port* %133)
  ret i32 %134
}

declare dso_local zeroext i16 @in_be16(i32*) #1

declare dso_local %struct.TYPE_10__* @PSC(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i32 @out_8(i32*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
