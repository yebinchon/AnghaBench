; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_sunhv_console_write_bychar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_sunhv_console_write_bychar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.console = type { i32 }

@sunhv_port = common dso_local global %struct.uart_port* null, align 8
@oops_in_progress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @sunhv_console_write_bychar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunhv_console_write_bychar(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.uart_port*, %struct.uart_port** @sunhv_port, align 8
  store %struct.uart_port* %11, %struct.uart_port** %7, align 8
  store i32 1, i32* %10, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %31

19:                                               ; preds = %3
  %20 = load i64, i64* @oops_in_progress, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = call i32 @spin_trylock(i32* %24)
  store i32 %25, i32* %10, align 4
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %18
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %43 = call i32 @sunhv_console_putchar(%struct.uart_port* %42, i8 signext 13)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  %48 = load i8, i8* %46, align 1
  %49 = call i32 @sunhv_console_putchar(%struct.uart_port* %45, i8 signext %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sunhv_console_putchar(%struct.uart_port*, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
