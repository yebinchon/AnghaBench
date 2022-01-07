; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_shutdown_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_shutdown_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32, i32 }

@SX_BOARD_ACTIVE = common dso_local global i32 0, align 4
@SX_DEBUG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Freeing IRQ%d for board %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.specialix_board*)* @sx_shutdown_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_shutdown_board(%struct.specialix_board* %0) #0 {
  %2 = alloca %struct.specialix_board*, align 8
  store %struct.specialix_board* %0, %struct.specialix_board** %2, align 8
  %3 = call i32 (...) @func_enter()
  %4 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %5 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SX_BOARD_ACTIVE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (...) @func_exit()
  br label %34

12:                                               ; preds = %1
  %13 = load i32, i32* @SX_BOARD_ACTIVE, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %16 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @SX_DEBUG_IRQ, align 4
  %20 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %21 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %24 = call i32 @board_No(%struct.specialix_board* %23)
  %25 = call i32 @dprintk(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %27 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %30 = call i32 @free_irq(i32 %28, %struct.specialix_board* %29)
  %31 = load %struct.specialix_board*, %struct.specialix_board** %2, align 8
  %32 = call i32 @turn_ints_off(%struct.specialix_board* %31)
  %33 = call i32 (...) @func_exit()
  br label %34

34:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @board_No(%struct.specialix_board*) #1

declare dso_local i32 @free_irq(i32, %struct.specialix_board*) #1

declare dso_local i32 @turn_ints_off(%struct.specialix_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
