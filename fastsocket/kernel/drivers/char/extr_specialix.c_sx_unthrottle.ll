; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_unthrottle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.specialix_port* }
%struct.specialix_port = type { i32, i32 }
%struct.specialix_board = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"sx_unthrottle\00", align 1
@MSVR_DTR = common dso_local global i32 0, align 4
@CD186x_CAR = common dso_local global i32 0, align 4
@CD186x_CCR = common dso_local global i32 0, align 4
@CCR_SSCH1 = common dso_local global i32 0, align 4
@CD186x_MSVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @sx_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_unthrottle(%struct.tty_struct* %0) #0 {
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
  %14 = call i64 @sx_paranoia_check(%struct.specialix_port* %10, i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (...) @func_exit()
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %20 = call %struct.specialix_board* @port_Board(%struct.specialix_port* %19)
  store %struct.specialix_board* %20, %struct.specialix_board** %4, align 8
  %21 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %22 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %26 = call i64 @sx_crtscts(%struct.tty_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* @MSVR_DTR, align 4
  %30 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %31 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %36 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %39 = load i32, i32* @CD186x_CAR, align 4
  %40 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %41 = call i32 @port_No(%struct.specialix_port* %40)
  %42 = call i32 @sx_out(%struct.specialix_board* %38, i32 %39, i32 %41)
  %43 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %44 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %47 = call i64 @I_IXOFF(%struct.tty_struct* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %34
  %50 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %51 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %55 = call i32 @sx_wait_CCR(%struct.specialix_board* %54)
  %56 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %57 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %56, i32 0, i32 0
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_lock_irqsave(i32* %57, i64 %58)
  %60 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %61 = load i32, i32* @CD186x_CCR, align 4
  %62 = load i32, i32* @CCR_SSCH1, align 4
  %63 = call i32 @sx_out(%struct.specialix_board* %60, i32 %61, i32 %62)
  %64 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %65 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %64, i32 0, i32 0
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %69 = call i32 @sx_wait_CCR(%struct.specialix_board* %68)
  %70 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %71 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %70, i32 0, i32 0
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %49, %34
  %75 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %76 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %79 = load i32, i32* @CD186x_MSVR, align 4
  %80 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %81 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sx_out(%struct.specialix_board* %78, i32 %79, i32 %82)
  %84 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %85 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock(i32* %85)
  %87 = load %struct.specialix_port*, %struct.specialix_port** %3, align 8
  %88 = getelementptr inbounds %struct.specialix_port, %struct.specialix_port* %87, i32 0, i32 0
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  %91 = call i32 (...) @func_exit()
  br label %92

92:                                               ; preds = %74, %16
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i64 @sx_paranoia_check(%struct.specialix_port*, i32, i8*) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local %struct.specialix_board* @port_Board(%struct.specialix_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sx_crtscts(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sx_out(%struct.specialix_board*, i32, i32) #1

declare dso_local i32 @port_No(%struct.specialix_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sx_wait_CCR(%struct.specialix_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
