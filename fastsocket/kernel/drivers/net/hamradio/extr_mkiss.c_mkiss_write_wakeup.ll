; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_mkiss_write_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_mkiss.c_mkiss_write_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i32, i64)* }
%struct.mkiss = type { i64, i32, i32 }

@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mkiss_write_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mkiss_write_wakeup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.mkiss*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = call %struct.mkiss* @mkiss_get(%struct.tty_struct* %5)
  store %struct.mkiss* %6, %struct.mkiss** %3, align 8
  %7 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %8 = icmp ne %struct.mkiss* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %12 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 1
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %21 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_wake_queue(i32 %22)
  br label %49

24:                                               ; preds = %10
  %25 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tty_struct*, i32, i64)*, i32 (%struct.tty_struct*, i32, i64)** %28, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %32 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %35 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 %29(%struct.tty_struct* %30, i32 %33, i64 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %41 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, %39
  store i64 %43, i64* %41, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %46 = getelementptr inbounds %struct.mkiss, %struct.mkiss* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %24, %15
  %50 = load %struct.mkiss*, %struct.mkiss** %3, align 8
  %51 = call i32 @mkiss_put(%struct.mkiss* %50)
  br label %52

52:                                               ; preds = %49, %9
  ret void
}

declare dso_local %struct.mkiss* @mkiss_get(%struct.tty_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @mkiss_put(%struct.mkiss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
