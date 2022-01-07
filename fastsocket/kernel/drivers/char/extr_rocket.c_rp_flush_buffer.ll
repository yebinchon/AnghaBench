; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_rp_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.r_port* }
%struct.r_port = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"rp_flush_buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rp_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rp_flush_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.r_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.r_port*, %struct.r_port** %7, align 8
  store %struct.r_port* %8, %struct.r_port** %3, align 8
  %9 = load %struct.r_port*, %struct.r_port** %3, align 8
  %10 = call i64 @rocket_paranoia_check(%struct.r_port* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load %struct.r_port*, %struct.r_port** %3, align 8
  %15 = getelementptr inbounds %struct.r_port, %struct.r_port* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.r_port*, %struct.r_port** %3, align 8
  %19 = getelementptr inbounds %struct.r_port, %struct.r_port* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.r_port*, %struct.r_port** %3, align 8
  %21 = getelementptr inbounds %struct.r_port, %struct.r_port* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.r_port*, %struct.r_port** %3, align 8
  %23 = getelementptr inbounds %struct.r_port, %struct.r_port* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.r_port*, %struct.r_port** %3, align 8
  %25 = getelementptr inbounds %struct.r_port, %struct.r_port* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %29 = call i32 @tty_wakeup(%struct.tty_struct* %28)
  %30 = load %struct.r_port*, %struct.r_port** %3, align 8
  %31 = getelementptr inbounds %struct.r_port, %struct.r_port* %30, i32 0, i32 0
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @sFlushTxFIFO(i32* %32)
  br label %34

34:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @rocket_paranoia_check(%struct.r_port*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i32 @sFlushTxFIFO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
