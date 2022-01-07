; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ip22zilog.c_ip22zilog_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_ip22zilog_port = type { %struct.uart_ip22zilog_port*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.zilog_channel = type { i32 }
%struct.tty_struct = type { i32 }

@R3 = common dso_local global i32 0, align 4
@CHAEXT = common dso_local global i8 0, align 1
@CHATxIP = common dso_local global i8 0, align 1
@CHARxIP = common dso_local global i8 0, align 1
@RES_H_IUS = common dso_local global i32 0, align 4
@CHBEXT = common dso_local global i8 0, align 1
@CHBTxIP = common dso_local global i8 0, align 1
@CHBRxIP = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ip22zilog_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip22zilog_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_ip22zilog_port*, align 8
  %6 = alloca %struct.zilog_channel*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_ip22zilog_port*
  store %struct.uart_ip22zilog_port* %10, %struct.uart_ip22zilog_port** %5, align 8
  br label %11

11:                                               ; preds = %162, %2
  %12 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %13 = icmp ne %struct.uart_ip22zilog_port* %12, null
  br i1 %13, label %14, label %166

14:                                               ; preds = %11
  %15 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %16 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %15, i32 0, i32 1
  %17 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.TYPE_2__* %16)
  store %struct.zilog_channel* %17, %struct.zilog_channel** %6, align 8
  %18 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %23 = load i32, i32* @R3, align 4
  %24 = call zeroext i8 @read_zsreg(%struct.zilog_channel* %22, i32 %23)
  store i8 %24, i8* %8, align 1
  store %struct.tty_struct* null, %struct.tty_struct** %7, align 8
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @CHAEXT, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @CHATxIP, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* @CHARxIP, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = and i32 %26, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %14
  %38 = load i32, i32* @RES_H_IUS, align 4
  %39 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %40 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %39, i32 0, i32 0
  %41 = call i32 @writeb(i32 %38, i32* %40)
  %42 = call i32 (...) @ZSDELAY()
  %43 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %44 = call i32 @ZS_WSYNC(%struct.zilog_channel* %43)
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @CHARxIP, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %53 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %54 = call %struct.tty_struct* @ip22zilog_receive_chars(%struct.uart_ip22zilog_port* %52, %struct.zilog_channel* %53)
  store %struct.tty_struct* %54, %struct.tty_struct** %7, align 8
  br label %55

55:                                               ; preds = %51, %37
  %56 = load i8, i8* %8, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @CHAEXT, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %64 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %65 = call i32 @ip22zilog_status_handle(%struct.uart_ip22zilog_port* %63, %struct.zilog_channel* %64)
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @CHATxIP, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %75 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %76 = call i32 @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port* %74, %struct.zilog_channel* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %77, %14
  %79 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %80 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %84 = icmp ne %struct.tty_struct* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %87 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %86)
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %90 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %89, i32 0, i32 0
  %91 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %90, align 8
  store %struct.uart_ip22zilog_port* %91, %struct.uart_ip22zilog_port** %5, align 8
  %92 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %93 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %92, i32 0, i32 1
  %94 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.TYPE_2__* %93)
  store %struct.zilog_channel* %94, %struct.zilog_channel** %6, align 8
  %95 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %96 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @spin_lock(i32* %97)
  store %struct.tty_struct* null, %struct.tty_struct** %7, align 8
  %99 = load i8, i8* %8, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @CHBEXT, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8, i8* @CHBTxIP, align 1
  %104 = zext i8 %103 to i32
  %105 = or i32 %102, %104
  %106 = load i8, i8* @CHBRxIP, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %105, %107
  %109 = and i32 %100, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %152

111:                                              ; preds = %88
  %112 = load i32, i32* @RES_H_IUS, align 4
  %113 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %114 = getelementptr inbounds %struct.zilog_channel, %struct.zilog_channel* %113, i32 0, i32 0
  %115 = call i32 @writeb(i32 %112, i32* %114)
  %116 = call i32 (...) @ZSDELAY()
  %117 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %118 = call i32 @ZS_WSYNC(%struct.zilog_channel* %117)
  %119 = load i8, i8* %8, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @CHBRxIP, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %111
  %126 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %127 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %128 = call %struct.tty_struct* @ip22zilog_receive_chars(%struct.uart_ip22zilog_port* %126, %struct.zilog_channel* %127)
  store %struct.tty_struct* %128, %struct.tty_struct** %7, align 8
  br label %129

129:                                              ; preds = %125, %111
  %130 = load i8, i8* %8, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8, i8* @CHBEXT, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %138 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %139 = call i32 @ip22zilog_status_handle(%struct.uart_ip22zilog_port* %137, %struct.zilog_channel* %138)
  br label %140

140:                                              ; preds = %136, %129
  %141 = load i8, i8* %8, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* @CHBTxIP, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %142, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %149 = load %struct.zilog_channel*, %struct.zilog_channel** %6, align 8
  %150 = call i32 @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port* %148, %struct.zilog_channel* %149)
  br label %151

151:                                              ; preds = %147, %140
  br label %152

152:                                              ; preds = %151, %88
  %153 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %154 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock(i32* %155)
  %157 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %158 = icmp ne %struct.tty_struct* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %161 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %160)
  br label %162

162:                                              ; preds = %159, %152
  %163 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %5, align 8
  %164 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %163, i32 0, i32 0
  %165 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %164, align 8
  store %struct.uart_ip22zilog_port* %165, %struct.uart_ip22zilog_port** %5, align 8
  br label %11

166:                                              ; preds = %11
  %167 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %167
}

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @read_zsreg(%struct.zilog_channel*, i32) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @ZSDELAY(...) #1

declare dso_local i32 @ZS_WSYNC(%struct.zilog_channel*) #1

declare dso_local %struct.tty_struct* @ip22zilog_receive_chars(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @ip22zilog_status_handle(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @ip22zilog_transmit_chars(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
