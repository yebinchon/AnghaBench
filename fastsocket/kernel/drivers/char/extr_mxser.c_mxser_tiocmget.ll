; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_tiocmget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_tiocmget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.mxser_port* }
%struct.mxser_port = type { i8, i32, i64 }
%struct.file = type { i32 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_ANY_DELTA = common dso_local global i8 0, align 1
@UART_MCR_RTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i8 0, align 1
@TIOCM_CAR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i8 0, align 1
@TIOCM_RNG = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @mxser_tiocmget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_tiocmget(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mxser_port*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.mxser_port*, %struct.mxser_port** %11, align 8
  store %struct.mxser_port* %12, %struct.mxser_port** %6, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MXSER_PORTS, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOIOCTLCMD, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %131

21:                                               ; preds = %2
  %22 = load i32, i32* @TTY_IO_ERROR, align 4
  %23 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %131

30:                                               ; preds = %21
  %31 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %32 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  store i8 %33, i8* %7, align 1
  %34 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %35 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %34, i32 0, i32 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %39 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UART_MSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call zeroext i8 @inb(i64 %42)
  store i8 %43, i8* %8, align 1
  %44 = load i8, i8* %8, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @UART_MSR_ANY_DELTA, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %30
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %53 = load i8, i8* %8, align 1
  %54 = call i32 @mxser_check_modem_status(%struct.tty_struct* %51, %struct.mxser_port* %52, i8 zeroext %53)
  br label %55

55:                                               ; preds = %50, %30
  %56 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  %57 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %56, i32 0, i32 1
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @UART_MCR_RTS, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %55
  %67 = load i32, i32* @TIOCM_RTS, align 4
  br label %69

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = load i8, i8* %7, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @UART_MCR_DTR, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @TIOCM_DTR, align 4
  br label %80

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = or i32 %70, %81
  %83 = load i8, i8* %8, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @UART_MSR_DCD, align 1
  %86 = zext i8 %85 to i32
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @TIOCM_CAR, align 4
  br label %92

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = or i32 %82, %93
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @UART_MSR_RI, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %96, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @TIOCM_RNG, align 4
  br label %104

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  %106 = or i32 %94, %105
  %107 = load i8, i8* %8, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8, i8* @UART_MSR_DSR, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @TIOCM_DSR, align 4
  br label %116

115:                                              ; preds = %104
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  %118 = or i32 %106, %117
  %119 = load i8, i8* %8, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @UART_MSR_CTS, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @TIOCM_CTS, align 4
  br label %128

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  %130 = or i32 %118, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %27, %18
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @mxser_check_modem_status(%struct.tty_struct*, %struct.mxser_port*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
