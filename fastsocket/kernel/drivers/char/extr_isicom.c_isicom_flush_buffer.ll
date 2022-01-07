; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.isi_port* }
%struct.isi_port = type { i64, i64, i64, %struct.isi_board* }
%struct.isi_board = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"isicom_flush_buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @isicom_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_flush_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.isi_port*, align 8
  %4 = alloca %struct.isi_board*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.isi_port*, %struct.isi_port** %7, align 8
  store %struct.isi_port* %8, %struct.isi_port** %3, align 8
  %9 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %10 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %9, i32 0, i32 3
  %11 = load %struct.isi_board*, %struct.isi_board** %10, align 8
  store %struct.isi_board* %11, %struct.isi_board** %4, align 8
  %12 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @isicom_paranoia_check(%struct.isi_port* %12, i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %21 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %25 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %27 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %29 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %31 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %35 = call i32 @tty_wakeup(%struct.tty_struct* %34)
  br label %36

36:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @isicom_paranoia_check(%struct.isi_port*, i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
