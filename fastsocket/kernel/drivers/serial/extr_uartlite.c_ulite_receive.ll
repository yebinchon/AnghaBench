; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_uartlite.c_ulite_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_uartlite.c_ulite_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@ULITE_STATUS_RXVALID = common dso_local global i32 0, align 4
@ULITE_STATUS_OVERRUN = common dso_local global i32 0, align 4
@ULITE_STATUS_FRAME = common dso_local global i32 0, align 4
@ULITE_RX = common dso_local global i64 0, align 8
@ULITE_STATUS_PARITY = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @ulite_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_receive(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %6, align 8
  store i8 0, i8* %7, align 1
  %15 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %15, i8* %8, align 1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %18 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %136

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ULITE_RX, align 8
  %40 = add nsw i64 %38, %39
  %41 = call zeroext i8 @readb(i64 %40)
  store i8 %41, i8* %7, align 1
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %30
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %71 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %76, %79
  %81 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %84, %75
  %90 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @ULITE_STATUS_PARITY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i8, i8* @TTY_PARITY, align 1
  store i8 %100, i8* %8, align 1
  br label %101

101:                                              ; preds = %99, %89
  %102 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %103 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @ULITE_STATUS_RXVALID, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %114 = load i8, i8* %7, align 1
  %115 = load i8, i8* %8, align 1
  %116 = call i32 @tty_insert_flip_char(%struct.tty_struct* %113, i8 zeroext %114, i8 signext %115)
  br label %117

117:                                              ; preds = %112, %101
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @ULITE_STATUS_FRAME, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %124 = load i8, i8* @TTY_FRAME, align 1
  %125 = call i32 @tty_insert_flip_char(%struct.tty_struct* %123, i8 zeroext 0, i8 signext %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @ULITE_STATUS_OVERRUN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %133 = load i8, i8* @TTY_OVERRUN, align 1
  %134 = call i32 @tty_insert_flip_char(%struct.tty_struct* %132, i8 zeroext 0, i8 signext %133)
  br label %135

135:                                              ; preds = %131, %126
  store i32 1, i32* %3, align 4
  br label %136

136:                                              ; preds = %135, %24
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
