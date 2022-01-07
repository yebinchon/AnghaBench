; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_setup_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_sx_setup_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32, i32 }

@SX_BOARD_ACTIVE = common dso_local global i32 0, align 4
@SX_BOARD_IS_PCI = common dso_local global i32 0, align 4
@sx_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"specialix IO8+\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.specialix_board*)* @sx_setup_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_setup_board(%struct.specialix_board* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.specialix_board*, align 8
  %4 = alloca i32, align 4
  store %struct.specialix_board* %0, %struct.specialix_board** %3, align 8
  %5 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %6 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SX_BOARD_ACTIVE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %14 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SX_BOARD_IS_PCI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %21 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @sx_interrupt, align 4
  %24 = load i32, i32* @IRQF_DISABLED, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %28 = call i32 @request_irq(i32 %22, i32 %23, i32 %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.specialix_board* %27)
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %12
  %30 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %31 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @sx_interrupt, align 4
  %34 = load i32, i32* @IRQF_DISABLED, align 4
  %35 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %36 = call i32 @request_irq(i32 %32, i32 %33, i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.specialix_board* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %19
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %37
  %43 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %44 = call i32 @turn_ints_on(%struct.specialix_board* %43)
  %45 = load i32, i32* @SX_BOARD_ACTIVE, align 4
  %46 = load %struct.specialix_board*, %struct.specialix_board** %3, align 8
  %47 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %40, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.specialix_board*) #1

declare dso_local i32 @turn_ints_on(%struct.specialix_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
