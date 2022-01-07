; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_start_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_start_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_board = type { i32, i64 }

@SX_CONFIG = common dso_local global i32 0, align 4
@SX_CONF_BUSEN = common dso_local global i32 0, align 4
@SI2_EISA_OFF = common dso_local global i32 0, align 4
@SI2_EISA_VAL = common dso_local global i32 0, align 4
@SI1_ISA_RESET_CLEAR = common dso_local global i32 0, align 4
@SI1_ISA_INTCL = common dso_local global i32 0, align 4
@SI2_ISA_RESET = common dso_local global i32 0, align 4
@SI2_ISA_RESET_CLEAR = common dso_local global i32 0, align 4
@SI2_ISA_INTCLEAR = common dso_local global i32 0, align 4
@SI2_ISA_INTCLEAR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sx_board*)* @sx_start_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx_start_board(%struct.sx_board* %0) #0 {
  %2 = alloca %struct.sx_board*, align 8
  store %struct.sx_board* %0, %struct.sx_board** %2, align 8
  %3 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %4 = call i64 @IS_SX_BOARD(%struct.sx_board* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %8 = load i32, i32* @SX_CONFIG, align 4
  %9 = load i32, i32* @SX_CONF_BUSEN, align 4
  %10 = call i32 @write_sx_byte(%struct.sx_board* %7, i32 %8, i32 %9)
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %13 = call i64 @IS_EISA_BOARD(%struct.sx_board* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %17 = load i32, i32* @SI2_EISA_OFF, align 4
  %18 = load i32, i32* @SI2_EISA_VAL, align 4
  %19 = call i32 @write_sx_byte(%struct.sx_board* %16, i32 %17, i32 %18)
  %20 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %21 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 4
  %24 = or i32 %23, 4
  %25 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %26 = getelementptr inbounds %struct.sx_board, %struct.sx_board* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 3074
  %29 = call i32 @outb(i32 %24, i64 %28)
  br label %51

30:                                               ; preds = %11
  %31 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %32 = call i64 @IS_SI1_BOARD(%struct.sx_board* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %36 = load i32, i32* @SI1_ISA_RESET_CLEAR, align 4
  %37 = call i32 @write_sx_byte(%struct.sx_board* %35, i32 %36, i32 0)
  %38 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %39 = load i32, i32* @SI1_ISA_INTCL, align 4
  %40 = call i32 @write_sx_byte(%struct.sx_board* %38, i32 %39, i32 0)
  br label %50

41:                                               ; preds = %30
  %42 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %43 = load i32, i32* @SI2_ISA_RESET, align 4
  %44 = load i32, i32* @SI2_ISA_RESET_CLEAR, align 4
  %45 = call i32 @write_sx_byte(%struct.sx_board* %42, i32 %43, i32 %44)
  %46 = load %struct.sx_board*, %struct.sx_board** %2, align 8
  %47 = load i32, i32* @SI2_ISA_INTCLEAR, align 4
  %48 = load i32, i32* @SI2_ISA_INTCLEAR_SET, align 4
  %49 = call i32 @write_sx_byte(%struct.sx_board* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %34
  br label %51

51:                                               ; preds = %50, %15
  br label %52

52:                                               ; preds = %51, %6
  ret i32 1
}

declare dso_local i64 @IS_SX_BOARD(%struct.sx_board*) #1

declare dso_local i32 @write_sx_byte(%struct.sx_board*, i32, i32) #1

declare dso_local i64 @IS_EISA_BOARD(%struct.sx_board*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @IS_SI1_BOARD(%struct.sx_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
