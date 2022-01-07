; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_epca.c_pc_flush_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_epca.c_pc_flush_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.channel = type { i32 }

@epca_lock = common dso_local global i32 0, align 4
@TXBUSY = common dso_local global i32 0, align 4
@EMPTYWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @pc_flush_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pc_flush_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = call %struct.channel* @verifyChannel(%struct.tty_struct* %5)
  store %struct.channel* %6, %struct.channel** %3, align 8
  %7 = load %struct.channel*, %struct.channel** %3, align 8
  %8 = icmp ne %struct.channel* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @epca_lock, i64 %10)
  %12 = load %struct.channel*, %struct.channel** %3, align 8
  %13 = getelementptr inbounds %struct.channel, %struct.channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TXBUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load %struct.channel*, %struct.channel** %3, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EMPTYWAIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = load %struct.channel*, %struct.channel** %3, align 8
  %28 = call i32 @setup_empty_event(%struct.tty_struct* %26, %struct.channel* %27)
  br label %29

29:                                               ; preds = %25, %18, %9
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @epca_lock, i64 %30)
  br label %32

32:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.channel* @verifyChannel(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @setup_empty_event(%struct.tty_struct*, %struct.channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
