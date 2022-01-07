; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.e100_serial = type { i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i32* }

@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.e100_serial*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.e100_serial*
  store %struct.e100_serial* %7, %struct.e100_serial** %3, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = call i32 @rs_flush_buffer(%struct.tty_struct* %8)
  %10 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %11 = call i32 @shutdown(%struct.e100_serial* %10)
  %12 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %13 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %15 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %23 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %26 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %25, i32 0, i32 0
  %27 = call i32 @wake_up_interruptible(i32* %26)
  ret void
}

declare dso_local i32 @rs_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.e100_serial*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
