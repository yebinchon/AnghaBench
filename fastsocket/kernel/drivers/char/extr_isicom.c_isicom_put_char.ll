; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { i32, i32, %struct.TYPE_2__, %struct.isi_board* }
%struct.TYPE_2__ = type { i8* }
%struct.isi_board = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"isicom_put_char\00", align 1
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8)* @isicom_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isicom_put_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.isi_port*, align 8
  %7 = alloca %struct.isi_board*, align 8
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.isi_port*, %struct.isi_port** %10, align 8
  store %struct.isi_port* %11, %struct.isi_port** %6, align 8
  %12 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %13 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %12, i32 0, i32 3
  %14 = load %struct.isi_board*, %struct.isi_board** %13, align 8
  store %struct.isi_board* %14, %struct.isi_board** %7, align 8
  %15 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @isicom_paranoia_check(%struct.isi_port* %15, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %24 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %28 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sge i32 %29, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %35 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  store i32 0, i32* %3, align 4
  br label %64

38:                                               ; preds = %22
  %39 = load i8, i8* %5, align 1
  %40 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %41 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %45 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %43, i64 %48
  store i8 %39, i8* %49, align 1
  %50 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %53 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.isi_port*, %struct.isi_port** %6, align 8
  %57 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.isi_board*, %struct.isi_board** %7, align 8
  %61 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %38, %33, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
