; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.uart_port = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }

@SR = common dso_local global i32 0, align 4
@SR_RXRDY = common dso_local global i32 0, align 4
@RHR = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@SR_BREAK = common dso_local global i32 0, align 4
@SR_FRAME = common dso_local global i32 0, align 4
@SR_PARITY = common dso_local global i32 0, align 4
@SR_OVERRUN = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.uart_port*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %3, align 8
  store i32 10000, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %3, align 8
  br label %19

19:                                               ; preds = %12, %1
  br label %20

20:                                               ; preds = %156, %155, %147, %76, %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %161

24:                                               ; preds = %20
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = load i32, i32* @SR, align 4
  %27 = call i8* @READ_SC_PORT(%struct.uart_port* %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SR_RXRDY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %161

34:                                               ; preds = %24
  %35 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %36 = load i32, i32* @RHR, align 4
  %37 = call i8* @READ_SC_PORT(%struct.uart_port* %35, i32 %36)
  %38 = ptrtoint i8* %37 to i8
  store i8 %38, i8* %5, align 1
  %39 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %39, i8* %6, align 1
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SR_BREAK, align 4
  %47 = load i32, i32* @SR_FRAME, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SR_PARITY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SR_OVERRUN, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %45, %52
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %142

56:                                               ; preds = %34
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SR_BREAK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i32, i32* @SR_PARITY, align 4
  %63 = load i32, i32* @SR_FRAME, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %69 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = call i64 @uart_handle_break(%struct.uart_port* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  br label %20

77:                                               ; preds = %61
  br label %102

78:                                               ; preds = %56
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SR_PARITY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %101

89:                                               ; preds = %78
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @SR_FRAME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %96 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %101, %77
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SR_OVERRUN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %115 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @SR_BREAK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i8, i8* @TTY_BREAK, align 1
  store i8 %124, i8* %6, align 1
  br label %141

125:                                              ; preds = %113
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @SR_PARITY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i8, i8* @TTY_PARITY, align 1
  store i8 %131, i8* %6, align 1
  br label %140

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @SR_FRAME, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i8, i8* @TTY_FRAME, align 1
  store i8 %138, i8* %6, align 1
  br label %139

139:                                              ; preds = %137, %132
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %34
  %143 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %144 = load i8, i8* %5, align 1
  %145 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %143, i8 zeroext %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %20

148:                                              ; preds = %142
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %151 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %149, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %20

156:                                              ; preds = %148
  %157 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %158 = load i8, i8* %5, align 1
  %159 = load i8, i8* %6, align 1
  %160 = call i32 @tty_insert_flip_char(%struct.tty_struct* %157, i8 zeroext %158, i8 signext %159)
  br label %20

161:                                              ; preds = %33, %20
  %162 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  ret %struct.tty_struct* %162
}

declare dso_local i8* @READ_SC_PORT(%struct.uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
