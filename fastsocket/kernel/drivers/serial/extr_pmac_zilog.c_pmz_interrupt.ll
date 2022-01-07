; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_pmac_port = type { %struct.TYPE_2__, i32*, %struct.uart_pmac_port* }
%struct.TYPE_2__ = type { i32 }
%struct.tty_struct = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@R3 = common dso_local global i32 0, align 4
@CHAEXT = common dso_local global i32 0, align 4
@CHATxIP = common dso_local global i32 0, align 4
@CHARxIP = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@RES_H_IUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CHBEXT = common dso_local global i32 0, align 4
@CHBTxIP = common dso_local global i32 0, align 4
@CHBRxIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmz_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmz_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_pmac_port*, align 8
  %6 = alloca %struct.uart_pmac_port*, align 8
  %7 = alloca %struct.uart_pmac_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty_struct*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_pmac_port*
  store %struct.uart_pmac_port* %12, %struct.uart_pmac_port** %5, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %15 = call %struct.uart_pmac_port* @pmz_get_port_A(%struct.uart_pmac_port* %14)
  store %struct.uart_pmac_port* %15, %struct.uart_pmac_port** %6, align 8
  %16 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %17 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %16, i32 0, i32 2
  %18 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %17, align 8
  store %struct.uart_pmac_port* %18, %struct.uart_pmac_port** %7, align 8
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %20 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %24 = load i32, i32* @R3, align 4
  %25 = call i32 @read_zsreg(%struct.uart_pmac_port* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  store %struct.tty_struct* null, %struct.tty_struct** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @CHAEXT, align 4
  %28 = load i32, i32* @CHATxIP, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CHARxIP, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %2
  %35 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %36 = load i32, i32* @R0, align 4
  %37 = load i32, i32* @RES_H_IUS, align 4
  %38 = call i32 @write_zsreg(%struct.uart_pmac_port* %35, i32 %36, i32 %37)
  %39 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %40 = call i32 @zssync(%struct.uart_pmac_port* %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @CHAEXT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %47 = call i32 @pmz_status_handle(%struct.uart_pmac_port* %46)
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @CHARxIP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %55 = call %struct.tty_struct* @pmz_receive_chars(%struct.uart_pmac_port* %54)
  store %struct.tty_struct* %55, %struct.tty_struct** %9, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @CHATxIP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %63 = call i32 @pmz_transmit_chars(%struct.uart_pmac_port* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %2
  %67 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %6, align 8
  %68 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %72 = icmp ne %struct.tty_struct* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %75 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %78 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %138

82:                                               ; preds = %76
  %83 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %84 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @spin_lock(i32* %85)
  store %struct.tty_struct* null, %struct.tty_struct** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @CHBEXT, align 4
  %89 = load i32, i32* @CHBTxIP, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CHBRxIP, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %87, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %82
  %96 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %97 = load i32, i32* @R0, align 4
  %98 = load i32, i32* @RES_H_IUS, align 4
  %99 = call i32 @write_zsreg(%struct.uart_pmac_port* %96, i32 %97, i32 %98)
  %100 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %101 = call i32 @zssync(%struct.uart_pmac_port* %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @CHBEXT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %108 = call i32 @pmz_status_handle(%struct.uart_pmac_port* %107)
  br label %109

109:                                              ; preds = %106, %95
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @CHBRxIP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %116 = call %struct.tty_struct* @pmz_receive_chars(%struct.uart_pmac_port* %115)
  store %struct.tty_struct* %116, %struct.tty_struct** %9, align 8
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @CHBTxIP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %124 = call i32 @pmz_transmit_chars(%struct.uart_pmac_port* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %125, %82
  %128 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %7, align 8
  %129 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %133 = icmp ne %struct.tty_struct* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %136 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %135)
  br label %137

137:                                              ; preds = %134, %127
  br label %138

138:                                              ; preds = %137, %81
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local %struct.uart_pmac_port* @pmz_get_port_A(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_zsreg(%struct.uart_pmac_port*, i32) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i32, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_status_handle(%struct.uart_pmac_port*) #1

declare dso_local %struct.tty_struct* @pmz_receive_chars(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_transmit_chars(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
