; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32, i32, i32 }
%struct.ktermios = type { i32, i32 }

@CREAD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN5 = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN6 = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN7 = common dso_local global i32 0, align 4
@UBRLCR_WRDLEN8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UBRLCR_XSTOP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UBRLCR_PRTEN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UBRLCR_EVENPRT = common dso_local global i32 0, align 4
@UBRLCR_FIFOEN = common dso_local global i32 0, align 4
@UARTDR_OVERR = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@UARTDR_PARERR = common dso_local global i32 0, align 4
@UARTDR_FRMERR = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @clps711xuart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clps711xuart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %11 = load i32, i32* @CREAD, align 4
  %12 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %13 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %18 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 16
  %23 = call i32 @uart_get_baud_rate(%struct.uart_port* %16, %struct.ktermios* %17, %struct.ktermios* %18, i32 0, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @uart_get_divisor(%struct.uart_port* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CSIZE, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 129, label %34
    i32 128, label %36
  ]

32:                                               ; preds = %3
  %33 = load i32, i32* @UBRLCR_WRDLEN5, align 4
  store i32 %33, i32* %7, align 4
  br label %40

34:                                               ; preds = %3
  %35 = load i32, i32* @UBRLCR_WRDLEN6, align 4
  store i32 %35, i32* %7, align 4
  br label %40

36:                                               ; preds = %3
  %37 = load i32, i32* @UBRLCR_WRDLEN7, align 4
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @UBRLCR_WRDLEN8, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %36, %34, %32
  %41 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %42 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @UBRLCR_XSTOP, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %53 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PARENB, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load i32, i32* @UBRLCR_PRTEN, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %63 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PARODD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @UBRLCR_EVENPRT, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %58
  br label %73

73:                                               ; preds = %72, %51
  %74 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @UBRLCR_FIFOEN, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %83, i32 0, i32 4
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %88 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %89 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @uart_update_timeout(%struct.uart_port* %87, i32 %90, i32 %91)
  %93 = load i32, i32* @UARTDR_OVERR, align 4
  %94 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %95 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %97 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @INPCK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %82
  %103 = load i32, i32* @UARTDR_PARERR, align 4
  %104 = load i32, i32* @UARTDR_FRMERR, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %82
  %111 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %112 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  %113 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %114 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IGNPAR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load i32, i32* @UARTDR_FRMERR, align 4
  %121 = load i32, i32* @UARTDR_PARERR, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %124 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %119, %110
  %128 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %129 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IGNBRK, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %127
  %135 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %136 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IGNPAR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load i32, i32* @UARTDR_OVERR, align 4
  %143 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %144 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %141, %134
  br label %148

148:                                              ; preds = %147, %127
  %149 = load i32, i32* %9, align 4
  %150 = sub i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %155 = call i32 @UBRLCR(%struct.uart_port* %154)
  %156 = call i32 @clps_writel(i32 %153, i32 %155)
  %157 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %158 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %157, i32 0, i32 4
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @clps_writel(i32, i32) #1

declare dso_local i32 @UBRLCR(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
