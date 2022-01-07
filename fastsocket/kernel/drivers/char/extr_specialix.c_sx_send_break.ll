; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_send_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_send_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.specialix_port* }
%struct.specialix_port = type { i32, i32, i32, i32 }
%struct.specialix_board = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SPECIALIX_TPS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@COR2_ETC = common dso_local global i32 0, align 4
@IER_TXRDY = common dso_local global i32 0, align 4
@CD186x_CAR = common dso_local global i32 0, align 4
@CD186x_COR2 = common dso_local global i32 0, align 4
@CD186x_IER = common dso_local global i32 0, align 4
@CD186x_CCR = common dso_local global i32 0, align 4
@CCR_CORCHG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @sx_send_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_send_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.specialix_port*, align 8
  %7 = alloca %struct.specialix_board*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.specialix_port*, %struct.specialix_port** %10, align 8
  store %struct.specialix_port* %11, %struct.specialix_port** %6, align 8
  %12 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %13 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %12)
  store %struct.specialix_board* %13, %struct.specialix_board** %7, align 8
  %14 = call i32 (...) @func_enter()
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %89

23:                                               ; preds = %17
  %24 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %25 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %24, i32 0, i32 1
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* @SPECIALIX_TPS, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %34 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @COR2_ETC, align 4
  %36 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %37 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @IER_TXRDY, align 4
  %41 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %42 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %46 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %49 = load i32, i32* @CD186x_CAR, align 4
  %50 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %51 = call i32 @port_No(%struct.specialix_port* %50)
  %52 = call i32 @sx_out(%struct.specialix_board* %48, i32 %49, i32 %51)
  %53 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %54 = load i32, i32* @CD186x_COR2, align 4
  %55 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %56 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sx_out(%struct.specialix_board* %53, i32 %54, i32 %57)
  %59 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %60 = load i32, i32* @CD186x_IER, align 4
  %61 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %62 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sx_out(%struct.specialix_board* %59, i32 %60, i32 %63)
  %65 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %66 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.specialix_port*, %struct.specialix_port** %6, align 8
  %69 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %68, i32 0, i32 1
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %73 = call i32 @sx_wait_CCR(%struct.specialix_board* %72)
  %74 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %75 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %74, i32 0, i32 0
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @spin_lock_irqsave(i32* %75, i64 %76)
  %78 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %79 = load i32, i32* @CD186x_CCR, align 4
  %80 = load i32, i32* @CCR_CORCHG2, align 4
  %81 = call i32 @sx_out(%struct.specialix_board* %78, i32 %79, i32 %80)
  %82 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %83 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %82, i32 0, i32 0
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.specialix_board*, %struct.specialix_board** %7, align 8
  %87 = call i32 @sx_wait_CCR(%struct.specialix_board* %86)
  %88 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %23, %20
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.specialix_board* @port_Board(%struct.specialix_port*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i32) #1

declare dso_local i32 @port_No(%struct.specialix_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sx_wait_CCR(%struct.specialix_board*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
