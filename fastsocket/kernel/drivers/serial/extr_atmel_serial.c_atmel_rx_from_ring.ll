; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_rx_from_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_atmel_serial.c_atmel_rx_from_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.atmel_uart_port = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i64 }
%struct.atmel_uart_char = type { i32, i32 }

@ATMEL_SERIAL_RINGSIZE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_rx_from_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_rx_from_ring(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atmel_uart_char, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %8)
  store %struct.atmel_uart_port* %9, %struct.atmel_uart_port** %3, align 8
  %10 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %4, align 8
  br label %12

12:                                               ; preds = %152, %151, %81, %1
  %13 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %14 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %17 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %160

20:                                               ; preds = %12
  %21 = call i32 (...) @smp_rmb()
  %22 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %23 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.atmel_uart_char*
  %26 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %27 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.atmel_uart_char, %struct.atmel_uart_char* %25, i64 %28
  %30 = bitcast %struct.atmel_uart_char* %7 to i8*
  %31 = bitcast %struct.atmel_uart_char* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load i32, i32* @ATMEL_SERIAL_RINGSIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %41 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds %struct.atmel_uart_char, %struct.atmel_uart_char* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ATMEL_US_PARE, align 4
  %52 = load i32, i32* @ATMEL_US_FRAME, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ATMEL_US_OVRE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %50, %57
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %145

61:                                               ; preds = %20
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load i32, i32* @ATMEL_US_PARE, align 4
  %68 = load i32, i32* @ATMEL_US_FRAME, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %79 = call i64 @uart_handle_break(%struct.uart_port* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %12

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @ATMEL_US_PARE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %90 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @ATMEL_US_FRAME, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %101 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @ATMEL_US_OVRE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %112 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %105
  %117 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %118 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @TTY_BREAK, align 4
  store i32 %127, i32* %5, align 4
  br label %144

128:                                              ; preds = %116
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @ATMEL_US_PARE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @TTY_PARITY, align 4
  store i32 %134, i32* %5, align 4
  br label %143

135:                                              ; preds = %128
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @ATMEL_US_FRAME, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @TTY_FRAME, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %135
  br label %143

143:                                              ; preds = %142, %133
  br label %144

144:                                              ; preds = %143, %126
  br label %145

145:                                              ; preds = %144, %20
  %146 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %147 = getelementptr inbounds %struct.atmel_uart_char, %struct.atmel_uart_char* %7, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %146, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %12

152:                                              ; preds = %145
  %153 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @ATMEL_US_OVRE, align 4
  %156 = getelementptr inbounds %struct.atmel_uart_char, %struct.atmel_uart_char* %7, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @uart_insert_char(%struct.uart_port* %153, i32 %154, i32 %155, i32 %157, i32 %158)
  br label %12

160:                                              ; preds = %12
  %161 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %162 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %161, i32 0, i32 1
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 2
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @tty_flip_buffer_push(i32 %169)
  %171 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %172 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %171, i32 0, i32 1
  %173 = call i32 @spin_lock(i32* %172)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @smp_rmb(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
