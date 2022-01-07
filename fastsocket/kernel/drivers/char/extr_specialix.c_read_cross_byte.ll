; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_read_cross_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_specialix.c_read_cross_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.specialix_board = type { i32 }

@CD186x_CAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.specialix_board*, i32, i32)* @read_cross_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cross_byte(%struct.specialix_board* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.specialix_board*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.specialix_board* %0, %struct.specialix_board** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %11 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %10, i32 0, i32 0
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %34, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %19 = load i32, i32* @CD186x_CAR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @sx_out_off(%struct.specialix_board* %18, i32 %19, i32 %20)
  %22 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sx_in_off(%struct.specialix_board* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %28, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load %struct.specialix_board*, %struct.specialix_board** %4, align 8
  %39 = getelementptr inbounds %struct.specialix_board, %struct.specialix_board* %38, i32 0, i32 0
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sx_out_off(%struct.specialix_board*, i32, i32) #1

declare dso_local i32 @sx_in_off(%struct.specialix_board*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
