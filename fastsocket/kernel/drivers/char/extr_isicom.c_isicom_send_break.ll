; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_send_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_send_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.isi_port* }
%struct.isi_port = type { i32, %struct.isi_board* }
%struct.isi_board = type { i64, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @isicom_send_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_send_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isi_port*, align 8
  %7 = alloca %struct.isi_board*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  store %struct.isi_port* %11, %struct.isi_port** %6, align 8
  %12 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %13 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %12, i32 0, i32 1
  %14 = load %struct.isi_board*, %struct.isi_board** %13, align 8
  store %struct.isi_board* %14, %struct.isi_board** %7, align 8
  %15 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %16 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %55

23:                                               ; preds = %2
  %24 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %25 = call i32 @lock_card(%struct.isi_board* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %55

30:                                               ; preds = %23
  %31 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %32 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %35 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %33, %36
  %38 = or i32 32768, %37
  %39 = or i32 %38, 3
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @outw(i32 %39, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 255
  %44 = shl i32 %43, 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @outw(i32 %44, i64 %45)
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 65280
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @outw(i32 %48, i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @InterruptTheCard(i64 %51)
  %53 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %54 = call i32 @unlock_card(%struct.isi_board* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %30, %27, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @lock_card(%struct.isi_board*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @InterruptTheCard(i64) #1

declare dso_local i32 @unlock_card(%struct.isi_board*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
