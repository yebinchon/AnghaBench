; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_rs_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64 }
%struct.m68k_serial = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"rs_hangup\00", align 1
@S_NORMAL_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.m68k_serial*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.m68k_serial*
  store %struct.m68k_serial* %7, %struct.m68k_serial** %3, align 8
  %8 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @serial_paranoia_check(%struct.m68k_serial* %8, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = call i32 @rs_flush_buffer(%struct.tty_struct* %16)
  %18 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %19 = call i32 @shutdown(%struct.m68k_serial* %18)
  %20 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %21 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %23 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @S_NORMAL_ACTIVE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %27 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %31 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.m68k_serial*, %struct.m68k_serial** %3, align 8
  %34 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %33, i32 0, i32 0
  %35 = call i32 @wake_up_interruptible(i32* %34)
  br label %36

36:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.m68k_serial*, i32, i8*) #1

declare dso_local i32 @rs_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.m68k_serial*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
