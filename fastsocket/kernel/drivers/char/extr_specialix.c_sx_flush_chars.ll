; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_flush_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_flush_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i64, i32, %struct.specialix_port* }
%struct.specialix_port = type { i64, i32, i32 }
%struct.specialix_board = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"sx_flush_chars\00", align 1
@IER_TXRDY = common dso_local global i32 0, align 4
@CD186x_CAR = common dso_local global i32 0, align 4
@CD186x_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @sx_flush_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_flush_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.specialix_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.specialix_board*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 3
  %8 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  store %struct.specialix_port* %8, %struct.specialix_port** %3, align 8
  %9 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %10 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %9)
  store %struct.specialix_board* %10, %struct.specialix_board** %5, align 8
  %11 = call i32 (...) @func_enter()
  %12 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @sx_paranoia_check(%struct.specialix_port* %12, i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 (...) @func_exit()
  br label %70

20:                                               ; preds = %1
  %21 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %22 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %37 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %35, %30, %25, %20
  %41 = call i32 (...) @func_exit()
  br label %70

42:                                               ; preds = %35
  %43 = load %struct.specialix_board*, %struct.specialix_board** %5, align 8
  %44 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %43, i32 0, i32 0
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load i32, i32* @IER_TXRDY, align 4
  %48 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %49 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %53 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %52)
  %54 = load i32, i32* @CD186x_CAR, align 4
  %55 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %56 = call i32 @port_No(%struct.specialix_port* %55)
  %57 = call i32 @sx_out(%struct.specialix_board* %53, i32 %54, i32 %56)
  %58 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %59 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %58)
  %60 = load i32, i32* @CD186x_IER, align 4
  %61 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %62 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sx_out(%struct.specialix_board* %59, i32 %60, i32 %63)
  %65 = load %struct.specialix_board*, %struct.specialix_board** %5, align 8
  %66 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %65, i32 0, i32 0
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = call i32 (...) @func_exit()
  br label %70

70:                                               ; preds = %42, %40, %18
  ret void
}

declare dso_local %struct.specialix_board* @port_Board(%struct.specialix_port*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i64 @sx_paranoia_check(%struct.specialix_port*, i32, i8*) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i32) #1

declare dso_local i32 @port_No(%struct.specialix_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
