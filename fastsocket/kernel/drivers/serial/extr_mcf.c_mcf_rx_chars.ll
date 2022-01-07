; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mcf.c_mcf_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mcf.c_mcf_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcf_uart = type { %struct.uart_port }
%struct.uart_port = type { i8, %struct.TYPE_6__*, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@MCFUART_USR = common dso_local global i64 0, align 8
@MCFUART_USR_RXREADY = common dso_local global i8 0, align 1
@MCFUART_URB = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i8 0, align 1
@MCFUART_USR_RXERR = common dso_local global i8 0, align 1
@MCFUART_UCR_CMDRESETERR = common dso_local global i32 0, align 4
@MCFUART_UCR = common dso_local global i64 0, align 8
@MCFUART_USR_RXBREAK = common dso_local global i8 0, align 1
@MCFUART_USR_RXPARITY = common dso_local global i8 0, align 1
@MCFUART_USR_RXOVERRUN = common dso_local global i8 0, align 1
@MCFUART_USR_RXFRAMING = common dso_local global i8 0, align 1
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcf_uart*)* @mcf_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcf_rx_chars(%struct.mcf_uart* %0) #0 {
  %2 = alloca %struct.mcf_uart*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.mcf_uart* %0, %struct.mcf_uart** %2, align 8
  %7 = load %struct.mcf_uart*, %struct.mcf_uart** %2, align 8
  %8 = getelementptr inbounds %struct.mcf_uart, %struct.mcf_uart* %7, i32 0, i32 0
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  br label %9

9:                                                ; preds = %151, %150, %63, %1
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MCFUART_USR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call zeroext i8 @readb(i64 %14)
  store i8 %15, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @MCFUART_USR_RXREADY, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %158

21:                                               ; preds = %9
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MCFUART_URB, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i8 @readb(i64 %26)
  store i8 %27, i8* %5, align 1
  %28 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %28, i8* %6, align 1
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @MCFUART_USR_RXERR, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %145

40:                                               ; preds = %21
  %41 = load i32, i32* @MCFUART_UCR_CMDRESETERR, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MCFUART_UCR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writeb(i32 %41, i64 %46)
  %48 = load i8, i8* %4, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @MCFUART_USR_RXBREAK, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %40
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %61 = call i64 @uart_handle_break(%struct.uart_port* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %9

64:                                               ; preds = %54
  br label %107

65:                                               ; preds = %40
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @MCFUART_USR_RXPARITY, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %106

78:                                               ; preds = %65
  %79 = load i8, i8* %4, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @MCFUART_USR_RXOVERRUN, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %105

91:                                               ; preds = %78
  %92 = load i8, i8* %4, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @MCFUART_USR_RXFRAMING, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %91
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %72
  br label %107

107:                                              ; preds = %106, %64
  %108 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 8
  %111 = zext i8 %110 to i32
  %112 = load i8, i8* %4, align 1
  %113 = zext i8 %112 to i32
  %114 = and i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %4, align 1
  %116 = load i8, i8* %4, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8, i8* @MCFUART_USR_RXBREAK, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %107
  %123 = load i8, i8* @TTY_BREAK, align 1
  store i8 %123, i8* %6, align 1
  br label %144

124:                                              ; preds = %107
  %125 = load i8, i8* %4, align 1
  %126 = zext i8 %125 to i32
  %127 = load i8, i8* @MCFUART_USR_RXPARITY, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %126, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i8, i8* @TTY_PARITY, align 1
  store i8 %132, i8* %6, align 1
  br label %143

133:                                              ; preds = %124
  %134 = load i8, i8* %4, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8, i8* @MCFUART_USR_RXFRAMING, align 1
  %137 = zext i8 %136 to i32
  %138 = and i32 %135, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i8, i8* @TTY_FRAME, align 1
  store i8 %141, i8* %6, align 1
  br label %142

142:                                              ; preds = %140, %133
  br label %143

143:                                              ; preds = %142, %131
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144, %21
  %146 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %147 = load i8, i8* %5, align 1
  %148 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %146, i8 zeroext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %9

151:                                              ; preds = %145
  %152 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %153 = load i8, i8* %4, align 1
  %154 = load i8, i8* @MCFUART_USR_RXOVERRUN, align 1
  %155 = load i8, i8* %5, align 1
  %156 = load i8, i8* %6, align 1
  %157 = call i32 @uart_insert_char(%struct.uart_port* %152, i8 zeroext %153, i8 zeroext %154, i8 zeroext %155, i8 zeroext %156)
  br label %9

158:                                              ; preds = %9
  %159 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @tty_flip_buffer_push(i32 %164)
  ret void
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i8 zeroext) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @tty_flip_buffer_push(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
