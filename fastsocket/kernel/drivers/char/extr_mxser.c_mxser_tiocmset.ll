; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.mxser_port* }
%struct.mxser_port = type { i32, i64, i32 }
%struct.file = type { i32 }

@MXSER_PORTS = common dso_local global i64 0, align 8
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @mxser_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxser_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mxser_port*, align 8
  %11 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 2
  %14 = load %struct.mxser_port*, %struct.mxser_port** %13, align 8
  store %struct.mxser_port* %14, %struct.mxser_port** %10, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MXSER_PORTS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOIOCTLCMD, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %96

23:                                               ; preds = %4
  %24 = load i32, i32* @TTY_IO_ERROR, align 4
  %25 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %96

32:                                               ; preds = %23
  %33 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %34 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %33, i32 0, i32 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TIOCM_RTS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @UART_MCR_RTS, align 4
  %43 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %44 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %32
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @TIOCM_DTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @UART_MCR_DTR, align 4
  %54 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %55 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @TIOCM_RTS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i32, i32* @UART_MCR_RTS, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %67 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @TIOCM_DTR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @UART_MCR_DTR, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %79 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %75, %70
  %83 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %84 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %87 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UART_MCR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb(i32 %85, i64 %90)
  %92 = load %struct.mxser_port*, %struct.mxser_port** %10, align 8
  %93 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %92, i32 0, i32 0
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %82, %29, %20
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
