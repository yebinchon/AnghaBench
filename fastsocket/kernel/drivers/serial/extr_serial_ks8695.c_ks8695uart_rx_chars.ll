; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_ks8695.c_ks8695uart_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@URLS_URDR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_DUMMY_LSR_RX = common dso_local global i32 0, align 4
@URLS_URBI = common dso_local global i32 0, align 4
@URLS_URPE = common dso_local global i32 0, align 4
@URLS_URFE = common dso_local global i32 0, align 4
@URLS_URROE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ks8695uart_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695uart_rx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.uart_port*
  store %struct.uart_port* %13, %struct.uart_port** %5, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  store %struct.tty_struct* %19, %struct.tty_struct** %6, align 8
  store i32 256, i32* %11, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %21 = call i32 @UART_GET_LSR(%struct.uart_port* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %154, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @URLS_URDR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %28, 0
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %157

33:                                               ; preds = %31
  %34 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %35 = call i32 @UART_GET_CHAR(%struct.uart_port* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %43 = call i32 @UART_GET_LSR(%struct.uart_port* %42)
  %44 = load i32, i32* @UART_DUMMY_LSR_RX, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @URLS_URBI, align 4
  %48 = load i32, i32* @URLS_URPE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @URLS_URFE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @URLS_URROE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %46, %53
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %141

57:                                               ; preds = %33
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @URLS_URBI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32, i32* @URLS_URFE, align 4
  %64 = load i32, i32* @URLS_URPE, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %75 = call i64 @uart_handle_break(%struct.uart_port* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %154

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %57
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @URLS_URPE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %79
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @URLS_URFE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %97 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @URLS_URROE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %108 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @URLS_URBI, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* @TTY_BREAK, align 4
  store i32 %123, i32* %10, align 4
  br label %140

124:                                              ; preds = %112
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @URLS_URPE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @TTY_PARITY, align 4
  store i32 %130, i32* %10, align 4
  br label %139

131:                                              ; preds = %124
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @URLS_URFE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @TTY_FRAME, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %131
  br label %139

139:                                              ; preds = %138, %129
  br label %140

140:                                              ; preds = %139, %122
  br label %141

141:                                              ; preds = %140, %33
  %142 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %154

147:                                              ; preds = %141
  %148 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @URLS_URROE, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @uart_insert_char(%struct.uart_port* %148, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %147, %146, %77
  %155 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %156 = call i32 @UART_GET_LSR(%struct.uart_port* %155)
  store i32 %156, i32* %7, align 4
  br label %22

157:                                              ; preds = %31
  %158 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %159 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %158)
  %160 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %160
}

declare dso_local i32 @UART_GET_LSR(%struct.uart_port*) #1

declare dso_local i32 @UART_GET_CHAR(%struct.uart_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
