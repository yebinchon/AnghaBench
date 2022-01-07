; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_rs_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.async_struct = type { i32, i32, i32*, i64, %struct.serial_state* }
%struct.serial_state = type { i64 }

@ASYNC_CLOSING = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca %struct.serial_state*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.async_struct*
  store %struct.async_struct* %8, %struct.async_struct** %3, align 8
  %9 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %10 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %9, i32 0, i32 4
  %11 = load %struct.serial_state*, %struct.serial_state** %10, align 8
  store %struct.serial_state* %11, %struct.serial_state** %4, align 8
  %12 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %13 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %12, i32 0, i32 4
  %14 = load %struct.serial_state*, %struct.serial_state** %13, align 8
  store %struct.serial_state* %14, %struct.serial_state** %4, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %16 = call i32 @rs_flush_buffer(%struct.tty_struct* %15)
  %17 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %18 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ASYNC_CLOSING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %26 = call i32 @shutdown(%struct.async_struct* %25)
  %27 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %28 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %30 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %34 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %38 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %40 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %39, i32 0, i32 1
  %41 = call i32 @wake_up_interruptible(i32* %40)
  br label %42

42:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @rs_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.async_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
