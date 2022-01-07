; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_rxint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_netx-serial.c_netx_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i8, %struct.TYPE_6__, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_FR = common dso_local global i64 0, align 8
@FR_RXFE = common dso_local global i8 0, align 1
@UART_DR = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_SR = common dso_local global i64 0, align 8
@SR_BE = common dso_local global i8 0, align 1
@SR_FE = common dso_local global i8 0, align 1
@SR_PE = common dso_local global i8 0, align 1
@SR_OE = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @netx_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netx_rxint(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.tty_struct*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  store %struct.tty_struct* %12, %struct.tty_struct** %6, align 8
  br label %13

13:                                               ; preds = %162, %161, %61, %1
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UART_FR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call zeroext i8 @readl(i64 %18)
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @FR_RXFE, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %169

26:                                               ; preds = %13
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UART_DR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call zeroext i8 @readl(i64 %31)
  store i8 %32, i8* %3, align 1
  %33 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %33, i8* %4, align 1
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UART_SR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call zeroext i8 @readl(i64 %43)
  store i8 %44, i8* %5, align 1
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @SR_BE, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %26
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UART_SR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %59 = call i64 @uart_handle_break(%struct.uart_port* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %13

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i8, i8* %5, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @SR_FE, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @SR_PE, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %67, %69
  %71 = load i8, i8* @SR_OE, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %70, %72
  %74 = and i32 %65, %73
  %75 = trunc i32 %74 to i8
  %76 = call i64 @unlikely(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %156

78:                                               ; preds = %63
  %79 = load i8, i8* %5, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @SR_PE, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %105

91:                                               ; preds = %78
  %92 = load i8, i8* %5, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @SR_FE, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %91
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i8, i8* %5, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @SR_OE, align 1
  %109 = zext i8 %108 to i32
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %114 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %105
  %119 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 0
  %121 = load i8, i8* %120, align 8
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* %5, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, %122
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %5, align 1
  %127 = load i8, i8* %5, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @SR_BE, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %118
  %134 = load i8, i8* @TTY_BREAK, align 1
  store i8 %134, i8* %4, align 1
  br label %155

135:                                              ; preds = %118
  %136 = load i8, i8* %5, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* @SR_PE, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i8, i8* @TTY_PARITY, align 1
  store i8 %143, i8* %4, align 1
  br label %154

144:                                              ; preds = %135
  %145 = load i8, i8* %5, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8, i8* @SR_FE, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i8, i8* @TTY_FRAME, align 1
  store i8 %152, i8* %4, align 1
  br label %153

153:                                              ; preds = %151, %144
  br label %154

154:                                              ; preds = %153, %142
  br label %155

155:                                              ; preds = %154, %133
  br label %156

156:                                              ; preds = %155, %63
  %157 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %158 = load i8, i8* %3, align 1
  %159 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %157, i8 zeroext %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %13

162:                                              ; preds = %156
  %163 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %164 = load i8, i8* %5, align 1
  %165 = load i8, i8* @SR_OE, align 1
  %166 = load i8, i8* %3, align 1
  %167 = load i8, i8* %4, align 1
  %168 = call i32 @uart_insert_char(%struct.uart_port* %163, i8 zeroext %164, i8 zeroext %165, i8 zeroext %166, i8 zeroext %167)
  br label %13

169:                                              ; preds = %13
  %170 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %171 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %170)
  ret void
}

declare dso_local zeroext i8 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @unlikely(i8 zeroext) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
