; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_DR = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART01x_RSR = common dso_local global i64 0, align 8
@UART_DUMMY_RSR_RX = common dso_local global i32 0, align 4
@UART01x_RSR_ANY = common dso_local global i32 0, align 4
@UART01x_ECR = common dso_local global i64 0, align 8
@UART01x_RSR_BE = common dso_local global i32 0, align 4
@UART01x_RSR_FE = common dso_local global i32 0, align 4
@UART01x_RSR_PE = common dso_local global i32 0, align 4
@UART01x_RSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl010_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_rx_chars(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  %9 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %3, align 8
  store i32 256, i32* %8, align 4
  %16 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %17 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UART01x_FR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readb(i64 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %176, %1
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @UART_RX_DATA(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %28, 0
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %184

33:                                               ; preds = %31
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UART01x_DR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readb(i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UART01x_RSR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readb(i64 %53)
  %55 = load i32, i32* @UART_DUMMY_RSR_RX, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @UART01x_RSR_ANY, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %161

62:                                               ; preds = %33
  %63 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UART01x_ECR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 0, i64 %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @UART01x_RSR_BE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %62
  %75 = load i32, i32* @UART01x_RSR_FE, align 4
  %76 = load i32, i32* @UART01x_RSR_PE, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %88 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %87, i32 0, i32 0
  %89 = call i64 @uart_handle_break(%struct.TYPE_10__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %176

92:                                               ; preds = %74
  br label %119

93:                                               ; preds = %62
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @UART01x_RSR_PE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %100 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  br label %118

105:                                              ; preds = %93
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @UART01x_RSR_FE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %112 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %105
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %92
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @UART01x_RSR_OE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %126 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %124, %119
  %132 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %133 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @UART01x_RSR_BE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i32, i32* @TTY_BREAK, align 4
  store i32 %143, i32* %6, align 4
  br label %160

144:                                              ; preds = %131
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @UART01x_RSR_PE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @TTY_PARITY, align 4
  store i32 %150, i32* %6, align 4
  br label %159

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @UART01x_RSR_FE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = load i32, i32* @TTY_FRAME, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %151
  br label %159

159:                                              ; preds = %158, %149
  br label %160

160:                                              ; preds = %159, %142
  br label %161

161:                                              ; preds = %160, %33
  %162 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %163 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %162, i32 0, i32 0
  %164 = load i32, i32* %5, align 4
  %165 = call i64 @uart_handle_sysrq_char(%struct.TYPE_10__* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %176

168:                                              ; preds = %161
  %169 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %170 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %169, i32 0, i32 0
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @UART01x_RSR_OE, align 4
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @uart_insert_char(%struct.TYPE_10__* %170, i32 %171, i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %167, %91
  %177 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %178 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @UART01x_FR, align 8
  %182 = add nsw i64 %180, %181
  %183 = call i32 @readb(i64 %182)
  store i32 %183, i32* %4, align 4
  br label %23

184:                                              ; preds = %31
  %185 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %186 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = call i32 @spin_unlock(i32* %187)
  %189 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %190 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %189)
  %191 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %192 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = call i32 @spin_lock(i32* %193)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @UART_RX_DATA(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
