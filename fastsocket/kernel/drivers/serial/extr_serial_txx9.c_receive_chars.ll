; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@TXX9_SIRFIFO = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@TXX9_SIDISR_RFDN_MASK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UBRK = common dso_local global i32 0, align 4
@TXX9_SIDISR_UPER = common dso_local global i32 0, align 4
@TXX9_SIDISR_UFER = common dso_local global i32 0, align 4
@TXX9_SIDISR_UOER = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TXX9_SIDISR = common dso_local global i32 0, align 4
@TXX9_SIDISR_UVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_txx9_port*, i32*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_txx9_port* %0, i32* %1) #0 {
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.uart_txx9_port* %0, %struct.uart_txx9_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  store %struct.tty_struct* %17, %struct.tty_struct** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  store i32 256, i32* %8, align 4
  br label %20

20:                                               ; preds = %178, %2
  %21 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %22 = load i32, i32* @TXX9_SIRFIFO, align 4
  %23 = call i8* @sio_in(%struct.uart_txx9_port* %21, i32 %22)
  %24 = ptrtoint i8* %23 to i8
  store i8 %24, i8* %6, align 1
  %25 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %25, i8* %9, align 1
  %26 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %27 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TXX9_SIDISR_RFDN_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %41 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %39, %46
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %145

50:                                               ; preds = %20
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %57 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %63 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %69 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %68, i32 0, i32 0
  %70 = call i64 @uart_handle_break(%struct.TYPE_10__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %160

73:                                               ; preds = %55
  br label %100

74:                                               ; preds = %50
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %81 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %99

86:                                               ; preds = %74
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %93 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %86
  br label %99

99:                                               ; preds = %98, %79
  br label %100

100:                                              ; preds = %99, %73
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %107 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @TXX9_SIDISR_RFDN_MASK, align 4
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %105, %100
  %116 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %117 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @TXX9_SIDISR_UBRK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %115
  %127 = load i8, i8* @TTY_BREAK, align 1
  store i8 %127, i8* %9, align 1
  br label %144

128:                                              ; preds = %115
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @TXX9_SIDISR_UPER, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i8, i8* @TTY_PARITY, align 1
  store i8 %134, i8* %9, align 1
  br label %143

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @TXX9_SIDISR_UFER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i8, i8* @TTY_FRAME, align 1
  store i8 %141, i8* %9, align 1
  br label %142

142:                                              ; preds = %140, %135
  br label %143

143:                                              ; preds = %142, %133
  br label %144

144:                                              ; preds = %143, %126
  br label %145

145:                                              ; preds = %144, %20
  %146 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %147 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %146, i32 0, i32 0
  %148 = load i8, i8* %6, align 1
  %149 = call i64 @uart_handle_sysrq_char(%struct.TYPE_10__* %147, i8 zeroext %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %160

152:                                              ; preds = %145
  %153 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %154 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %153, i32 0, i32 0
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @TXX9_SIDISR_UOER, align 4
  %157 = load i8, i8* %6, align 1
  %158 = load i8, i8* %9, align 1
  %159 = call i32 @uart_insert_char(%struct.TYPE_10__* %154, i32 %155, i32 %156, i8 zeroext %157, i8 signext %158)
  br label %160

160:                                              ; preds = %152, %151, %72
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %163 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %166 = load i32, i32* @TXX9_SIDISR, align 4
  %167 = call i8* @sio_in(%struct.uart_txx9_port* %165, i32 %166)
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @TXX9_SIDISR_UVALID, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %8, align 4
  %177 = icmp sgt i32 %175, 0
  br label %178

178:                                              ; preds = %174, %169
  %179 = phi i1 [ false, %169 ], [ %177, %174 ]
  br i1 %179, label %20, label %180

180:                                              ; preds = %178
  %181 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %182 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = call i32 @spin_unlock(i32* %183)
  %185 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %186 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %185)
  %187 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %188 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load i32, i32* %7, align 4
  %192 = load i32*, i32** %4, align 8
  store i32 %191, i32* %192, align 4
  ret void
}

declare dso_local i8* @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_10__*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_10__*, i32, i32, i8 zeroext, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
