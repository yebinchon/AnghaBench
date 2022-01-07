; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_qe_uart_int_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_qe_uart_int_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_qe_port = type { %struct.qe_bd*, %struct.qe_bd*, %struct.uart_port }
%struct.qe_bd = type { i32, i32, i32 }
%struct.uart_port = type { i32, i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@BD_SC_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ucc-uart: no room in RX buffer\0A\00", align 1
@TTY_NORMAL = common dso_local global i32 0, align 4
@BD_SC_BR = common dso_local global i32 0, align 4
@BD_SC_FR = common dso_local global i32 0, align 4
@BD_SC_PR = common dso_local global i32 0, align 4
@BD_SC_OV = common dso_local global i32 0, align 4
@BD_SC_ID = common dso_local global i32 0, align 4
@BD_SC_WRAP = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_qe_port*)* @qe_uart_int_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_uart_int_rx(%struct.uart_qe_port* %0) #0 {
  %2 = alloca %struct.uart_qe_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca %struct.qe_bd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_qe_port* %0, %struct.uart_qe_port** %2, align 8
  %11 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %11, i32 0, i32 2
  store %struct.uart_port* %12, %struct.uart_port** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %7, align 8
  %19 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %20 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %19, i32 0, i32 0
  %21 = load %struct.qe_bd*, %struct.qe_bd** %20, align 8
  store %struct.qe_bd* %21, %struct.qe_bd** %8, align 8
  br label %22

22:                                               ; preds = %1, %118
  %23 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %24 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %23, i32 0, i32 0
  %25 = call i32 @in_be16(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BD_SC_EMPTY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %119

31:                                               ; preds = %22
  %32 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %33 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %32, i32 0, i32 2
  %34 = call i32 @in_be16(i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @tty_buffer_request_room(%struct.tty_struct* %35, i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %207

45:                                               ; preds = %31
  %46 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %47 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %50 = call i8* @qe2cpu_addr(i32 %48, %struct.uart_qe_port* %49)
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %86, %84, %45
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  %54 = icmp sgt i32 %52, 0
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %4, align 1
  %59 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @BD_SC_BR, align 4
  %70 = load i32, i32* @BD_SC_FR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @BD_SC_PR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @BD_SC_OV, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %68, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %125

79:                                               ; preds = %67, %55
  %80 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %81 = load i8, i8* %4, align 1
  %82 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %80, i8 zeroext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %51

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %206, %85
  %87 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %88 = load i8, i8* %4, align 1
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @tty_insert_flip_char(%struct.tty_struct* %87, i8 zeroext %88, i32 %89)
  br label %51

91:                                               ; preds = %51
  %92 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %93 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %92, i32 0, i32 0
  %94 = load i32, i32* @BD_SC_BR, align 4
  %95 = load i32, i32* @BD_SC_FR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @BD_SC_PR, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @BD_SC_OV, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @BD_SC_ID, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @BD_SC_EMPTY, align 4
  %104 = call i32 @clrsetbits_be16(i32* %93, i32 %102, i32 %103)
  %105 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %106 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %105, i32 0, i32 0
  %107 = call i32 @in_be16(i32* %106)
  %108 = load i32, i32* @BD_SC_WRAP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %91
  %112 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %113 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %112, i32 0, i32 1
  %114 = load %struct.qe_bd*, %struct.qe_bd** %113, align 8
  store %struct.qe_bd* %114, %struct.qe_bd** %8, align 8
  br label %118

115:                                              ; preds = %91
  %116 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %117 = getelementptr inbounds %struct.qe_bd, %struct.qe_bd* %116, i32 1
  store %struct.qe_bd* %117, %struct.qe_bd** %8, align 8
  br label %118

118:                                              ; preds = %115, %111
  br label %22

119:                                              ; preds = %30
  %120 = load %struct.qe_bd*, %struct.qe_bd** %8, align 8
  %121 = load %struct.uart_qe_port*, %struct.uart_qe_port** %2, align 8
  %122 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %121, i32 0, i32 0
  store %struct.qe_bd* %120, %struct.qe_bd** %122, align 8
  %123 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %124 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %123)
  br label %207

125:                                              ; preds = %78
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @BD_SC_BR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %130, %125
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @BD_SC_PR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %143 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %141, %136
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @BD_SC_FR, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %147
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @BD_SC_OV, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %158
  %170 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %171 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %9, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* @BD_SC_BR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* @TTY_BREAK, align 4
  store i32 %180, i32* %10, align 4
  br label %197

181:                                              ; preds = %169
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @BD_SC_PR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @TTY_PARITY, align 4
  store i32 %187, i32* %10, align 4
  br label %196

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @BD_SC_FR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* @TTY_FRAME, align 4
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %193, %188
  br label %196

196:                                              ; preds = %195, %186
  br label %197

197:                                              ; preds = %196, %179
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* @BD_SC_OV, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %204 = load i32, i32* @TTY_OVERRUN, align 4
  %205 = call i32 @tty_insert_flip_char(%struct.tty_struct* %203, i8 zeroext 0, i32 %204)
  br label %206

206:                                              ; preds = %202, %197
  br label %86

207:                                              ; preds = %119, %40
  ret void
}

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i8* @qe2cpu_addr(i32, %struct.uart_qe_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i32) #1

declare dso_local i32 @clrsetbits_be16(i32*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
