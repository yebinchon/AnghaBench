; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_qe_uart_tx_pump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_qe_uart_tx_pump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_qe_port = type { i32, %struct.qe_bd*, %struct.qe_bd*, %struct.qe_bd*, %struct.uart_port }
%struct.qe_bd = type { i32, i32, i32 }
%struct.uart_port = type { i8, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i32* }

@BD_SC_READY = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_qe_port*)* @qe_uart_tx_pump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qe_uart_tx_pump(%struct.uart_qe_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_qe_port*, align 8
  %4 = alloca %struct.qe_bd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.circ_buf*, align 8
  store %struct.uart_qe_port* %0, %struct.uart_qe_port** %3, align 8
  %9 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %9, i32 0, i32 4
  store %struct.uart_port* %10, %struct.uart_port** %7, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %8, align 8
  %15 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %15, i32 0, i32 3
  %17 = load %struct.qe_bd*, %struct.qe_bd** %16, align 8
  store %struct.qe_bd* %17, %struct.qe_bd** %4, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %67

22:                                               ; preds = %1
  %23 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %23, i32 0, i32 1
  %25 = load %struct.qe_bd*, %struct.qe_bd** %24, align 8
  store %struct.qe_bd* %25, %struct.qe_bd** %4, align 8
  %26 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %27 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %30 = call i8* @qe2cpu_addr(i32 %28, %struct.uart_qe_port* %29)
  store i8* %30, i8** %5, align 8
  %31 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  %36 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %37 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %36, i32 0, i32 1
  %38 = call i32 @out_be16(i32* %37, i32 1)
  %39 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %40 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %39, i32 0, i32 0
  %41 = load i32, i32* @BD_SC_READY, align 4
  %42 = call i32 @setbits16(i32* %40, i32 %41)
  %43 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %44 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %43, i32 0, i32 0
  %45 = call i32 @in_be16(i32* %44)
  %46 = load i32, i32* @BD_SC_WRAP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %22
  %50 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %51 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %50, i32 0, i32 2
  %52 = load %struct.qe_bd*, %struct.qe_bd** %51, align 8
  store %struct.qe_bd* %52, %struct.qe_bd** %4, align 8
  br label %56

53:                                               ; preds = %22
  %54 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %55 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %54, i32 1
  store %struct.qe_bd* %55, %struct.qe_bd** %4, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %58 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %58, i32 0, i32 1
  store %struct.qe_bd* %57, %struct.qe_bd** %59, align 8
  %60 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  store i8 0, i8* %66, align 8
  store i32 1, i32* %2, align 4
  br label %191

67:                                               ; preds = %1
  %68 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %69 = call i64 @uart_circ_empty(%struct.circ_buf* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %73 = call i64 @uart_tx_stopped(%struct.uart_port* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67
  %76 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %77 = call i32 @qe_uart_stop_tx(%struct.uart_port* %76)
  store i32 0, i32* %2, align 4
  br label %191

78:                                               ; preds = %71
  %79 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %79, i32 0, i32 1
  %81 = load %struct.qe_bd*, %struct.qe_bd** %80, align 8
  store %struct.qe_bd* %81, %struct.qe_bd** %4, align 8
  br label %82

82:                                               ; preds = %171, %78
  %83 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %84 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %83, i32 0, i32 0
  %85 = call i32 @in_be16(i32* %84)
  %86 = load i32, i32* @BD_SC_READY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %82
  %90 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %91 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %94 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br label %97

97:                                               ; preds = %89, %82
  %98 = phi i1 [ false, %82 ], [ %96, %89 ]
  br i1 %98, label %99, label %172

99:                                               ; preds = %97
  store i32 0, i32* %6, align 4
  %100 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %101 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %104 = call i8* @qe2cpu_addr(i32 %102, %struct.uart_qe_port* %103)
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %148, %99
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %108 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %149

111:                                              ; preds = %105
  %112 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %113 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %116 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %5, align 8
  store i8 %120, i8* %121, align 1
  %123 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %124 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  %127 = load i32, i32* @UART_XMIT_SIZE, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = and i64 %126, %129
  %131 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %132 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %134 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* %6, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %6, align 4
  %140 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %141 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %144 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %111
  br label %149

148:                                              ; preds = %111
  br label %105

149:                                              ; preds = %147, %105
  %150 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %151 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %150, i32 0, i32 1
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @out_be16(i32* %151, i32 %152)
  %154 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %155 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %154, i32 0, i32 0
  %156 = load i32, i32* @BD_SC_READY, align 4
  %157 = call i32 @setbits16(i32* %155, i32 %156)
  %158 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %159 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %158, i32 0, i32 0
  %160 = call i32 @in_be16(i32* %159)
  %161 = load i32, i32* @BD_SC_WRAP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %149
  %165 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %166 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %165, i32 0, i32 2
  %167 = load %struct.qe_bd*, %struct.qe_bd** %166, align 8
  store %struct.qe_bd* %167, %struct.qe_bd** %4, align 8
  br label %171

168:                                              ; preds = %149
  %169 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %170 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %169, i32 1
  store %struct.qe_bd* %170, %struct.qe_bd** %4, align 8
  br label %171

171:                                              ; preds = %168, %164
  br label %82

172:                                              ; preds = %97
  %173 = load %struct.qe_bd*, %struct.qe_bd** %4, align 8
  %174 = load %struct.uart_qe_port*, %struct.uart_qe_port** %3, align 8
  %175 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %174, i32 0, i32 1
  store %struct.qe_bd* %173, %struct.qe_bd** %175, align 8
  %176 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %177 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %176)
  %178 = load i64, i64* @WAKEUP_CHARS, align 8
  %179 = icmp slt i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %182 = call i32 @uart_write_wakeup(%struct.uart_port* %181)
  br label %183

183:                                              ; preds = %180, %172
  %184 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %185 = call i64 @uart_circ_empty(%struct.circ_buf* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %189 = call i32 @qe_uart_stop_tx(%struct.uart_port* %188)
  store i32 0, i32* %2, align 4
  br label %191

190:                                              ; preds = %183
  store i32 1, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %187, %75, %56
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i8* @qe2cpu_addr(i32, %struct.uart_qe_port*) #1

declare dso_local i32 @out_be16(i32*, i32) #1

declare dso_local i32 @setbits16(i32*, i32) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @qe_uart_stop_tx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
