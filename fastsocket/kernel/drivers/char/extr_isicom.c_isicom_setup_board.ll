; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_setup_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_setup_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isi_board = type { i32, i32, i32, %struct.isi_port* }
%struct.isi_port = type { i32 }

@BOARD_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isi_board*)* @isicom_setup_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_setup_board(%struct.isi_board* %0) #0 {
  %2 = alloca %struct.isi_board*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.isi_port*, align 8
  %5 = alloca i64, align 8
  store %struct.isi_board* %0, %struct.isi_board** %2, align 8
  %6 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %7 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %11 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BOARD_ACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %18 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %17, i32 0, i32 2
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %23 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %22, i32 0, i32 3
  %24 = load %struct.isi_port*, %struct.isi_port** %23, align 8
  store %struct.isi_port* %24, %struct.isi_port** %4, align 8
  %25 = load i32, i32* @BOARD_ACTIVE, align 4
  %26 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %27 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %39, %21
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %33 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %38 = call i32 @drop_dtr_rts(%struct.isi_port* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  %42 = load %struct.isi_port*, %struct.isi_port** %4, align 8
  %43 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %42, i32 1
  store %struct.isi_port* %43, %struct.isi_port** %4, align 8
  br label %30

44:                                               ; preds = %30
  %45 = load %struct.isi_board*, %struct.isi_board** %2, align 8
  %46 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %45, i32 0, i32 2
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %16
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @drop_dtr_rts(%struct.isi_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
