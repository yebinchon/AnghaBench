; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.async_struct* }
%struct.async_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"rs_flush_buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_flush_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  store %struct.async_struct* %7, %struct.async_struct** %3, align 8
  %8 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @serial_paranoia_check(%struct.async_struct* %8, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %28

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %19 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %22 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @local_irq_restore(i64 %24)
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = call i32 @tty_wakeup(%struct.tty_struct* %26)
  br label %28

28:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.async_struct*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
