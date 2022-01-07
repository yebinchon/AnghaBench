; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_serial_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios* }
%struct.ktermios = type { i32 }
%struct.hso_serial = type { i32, i64 }

@.str = private unnamed_addr constant [46 x i8] c"Termios called with: cflags new[%d] - old[%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @hso_serial_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_serial_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.hso_serial*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = call %struct.hso_serial* @get_serial_by_tty(%struct.tty_struct* %7)
  store %struct.hso_serial* %8, %struct.hso_serial** %5, align 8
  %9 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %10 = icmp ne %struct.ktermios* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.ktermios*, %struct.ktermios** %13, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %18 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @D5(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %11, %2
  %22 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %23 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %27 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %33 = call i32 @_hso_serial_set_termios(%struct.tty_struct* %31, %struct.ktermios* %32)
  br label %38

34:                                               ; preds = %21
  %35 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 0
  store %struct.ktermios* %35, %struct.ktermios** %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.hso_serial*, %struct.hso_serial** %5, align 8
  %40 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.hso_serial* @get_serial_by_tty(%struct.tty_struct*) #1

declare dso_local i32 @D5(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_hso_serial_set_termios(%struct.tty_struct*, %struct.ktermios*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
