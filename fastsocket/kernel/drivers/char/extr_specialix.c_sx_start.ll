; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.specialix_port* }
%struct.specialix_port = type { i32, i32, i64, i64 }
%struct.specialix_board = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"sx_start\00", align 1
@IER_TXRDY = common dso_local global i32 0, align 4
@CD186x_CAR = common dso_local global i32 0, align 4
@CD186x_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @sx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_start(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.specialix_port*, align 8
  %4 = alloca %struct.specialix_board*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.specialix_port*, %struct.specialix_port** %7, align 8
  store %struct.specialix_port* %8, %struct.specialix_port** %3, align 8
  %9 = call i32 (...) @func_enter()
  %10 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @sx_paranoia_check(%struct.specialix_port* %10, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @func_exit()
  br label %70

18:                                               ; preds = %1
  %19 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %20 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %19)
  store %struct.specialix_board* %20, %struct.specialix_board** %4, align 8
  %21 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %22 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %26 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %18
  %30 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %31 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %36 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IER_TXRDY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @IER_TXRDY, align 4
  %43 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %44 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %48 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %47, i32 0, i32 0
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %51 = load i32, i32* @CD186x_CAR, align 4
  %52 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %53 = call i32 @port_No(%struct.specialix_port* %52)
  %54 = call i32 @sx_out(%struct.specialix_board* %50, i32 %51, i32 %53)
  %55 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %56 = load i32, i32* @CD186x_IER, align 4
  %57 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %58 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sx_out(%struct.specialix_board* %55, i32 %56, i32 %59)
  %61 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %62 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %41, %34, %29, %18
  %65 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %66 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %65, i32 0, i32 1
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = call i32 (...) @func_exit()
  br label %70

70:                                               ; preds = %64, %16
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i64 @sx_paranoia_check(%struct.specialix_port*, i32, i8*) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local %struct.specialix_board* @port_Board(%struct.specialix_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i32) #1

declare dso_local i32 @port_No(%struct.specialix_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
