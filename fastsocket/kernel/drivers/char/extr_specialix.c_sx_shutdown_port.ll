; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_shutdown_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_shutdown_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32, i32 }
%struct.specialix_port = type { %struct.TYPE_2__, i64, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@sx_debug = common dso_local global i32 0, align 4
@SX_DEBUG_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"sx%d: port %d: %ld overruns, FIFO hits [ \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"].\0A\00", align 1
@CD186x_CAR = common dso_local global i32 0, align 4
@CD186x_MSVDTR = common dso_local global i32 0, align 4
@CD186x_CCR = common dso_local global i32 0, align 4
@CCR_SOFTRESET = common dso_local global i64 0, align 8
@CD186x_IER = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.specialix_board*, %struct.specialix_port*)* @sx_shutdown_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_shutdown_port(%struct.specialix_board* %0, %struct.specialix_port* %1) #0 {
  %3 = alloca %struct.specialix_board*, align 8
  %4 = alloca %struct.specialix_port*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.specialix_board* %0, %struct.specialix_board** %3, align 8
  store %struct.specialix_port* %1, %struct.specialix_port** %4, align 8
  %8 = call i32 (...) @func_enter()
  %9 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %10 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 (...) @func_exit()
  br label %140

18:                                               ; preds = %2
  %19 = load i32, i32* @sx_debug, align 4
  %20 = load i32, i32* @SX_DEBUG_FIFO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %18
  %24 = load i32, i32* @SX_DEBUG_FIFO, align 4
  %25 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %26 = call i32 @board_No(%struct.specialix_board* %25)
  %27 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %28 = call i64 @port_No(%struct.specialix_port* %27)
  %29 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %30 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dprintk(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %28, i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %46, %23
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 10
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32, i32* @SX_DEBUG_FIFO, align 4
  %38 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %39 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dprintk(i32 %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load i32, i32* @SX_DEBUG_FIFO, align 4
  %51 = call i32 (i32, i8*, ...) @dprintk(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %18
  %53 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %54 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %59 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = call i32 @free_page(i64 %61)
  %63 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %64 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %67 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %66, i32 0, i32 1
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @spin_lock_irqsave(i32* %67, i64 %68)
  %70 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %71 = load i32, i32* @CD186x_CAR, align 4
  %72 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %73 = call i64 @port_No(%struct.specialix_port* %72)
  %74 = call i32 @sx_out(%struct.specialix_board* %70, i32 %71, i64 %73)
  %75 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %76 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.tty_struct*, %struct.tty_struct** %77, align 8
  store %struct.tty_struct* %78, %struct.tty_struct** %5, align 8
  %79 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %80 = icmp eq %struct.tty_struct* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %65
  %82 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %83 = call i64 @C_HUPCL(%struct.tty_struct* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %65
  %86 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %87 = load i32, i32* @CD186x_MSVDTR, align 4
  %88 = call i32 @sx_out(%struct.specialix_board* %86, i32 %87, i64 0)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %91 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %90, i32 0, i32 1
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %95 = call i32 @sx_wait_CCR(%struct.specialix_board* %94)
  %96 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %97 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %96, i32 0, i32 1
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_lock_irqsave(i32* %97, i64 %98)
  %100 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %101 = load i32, i32* @CD186x_CCR, align 4
  %102 = load i64, i64* @CCR_SOFTRESET, align 8
  %103 = call i32 @sx_out(%struct.specialix_board* %100, i32 %101, i64 %102)
  %104 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %105 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %107 = load i32, i32* @CD186x_IER, align 4
  %108 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %109 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @sx_out(%struct.specialix_board* %106, i32 %107, i64 %110)
  %112 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %113 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %112, i32 0, i32 1
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %117 = icmp ne %struct.tty_struct* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %89
  %119 = load i32, i32* @TTY_IO_ERROR, align 4
  %120 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %121 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %120, i32 0, i32 0
  %122 = call i32 @set_bit(i32 %119, i32* %121)
  br label %123

123:                                              ; preds = %118, %89
  %124 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.specialix_port*, %struct.specialix_port** %4, align 8
  %127 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 8
  %131 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %132 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %123
  %136 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %137 = call i32 @sx_shutdown_board(%struct.specialix_board* %136)
  br label %138

138:                                              ; preds = %135, %123
  %139 = call i32 (...) @func_exit()
  br label %140

140:                                              ; preds = %138, %16
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @board_No(%struct.specialix_board*) #1

declare dso_local i64 @port_No(%struct.specialix_port*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i64) #1

declare dso_local i64 @C_HUPCL(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sx_wait_CCR(%struct.specialix_board*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sx_shutdown_board(%struct.specialix_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
