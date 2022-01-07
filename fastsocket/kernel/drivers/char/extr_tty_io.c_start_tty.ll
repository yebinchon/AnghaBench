; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_start_tty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_start_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.tty_struct*)* }
%struct.TYPE_3__ = type { i32, i64 }

@TIOCPKT_STOP = common dso_local global i32 0, align 4
@TIOCPKT_START = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_tty(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  br label %76

22:                                               ; preds = %12
  %23 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load i32, i32* @TIOCPKT_STOP, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @TIOCPKT_START, align 4
  %44 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* @POLLIN, align 4
  %53 = call i32 @wake_up_interruptible_poll(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %36, %29, %22
  %55 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 1
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %62, align 8
  %64 = icmp ne i32 (%struct.tty_struct*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %69, align 8
  %71 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %72 = call i32 %70(%struct.tty_struct* %71)
  br label %73

73:                                               ; preds = %65, %54
  %74 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %75 = call i32 @tty_wakeup(%struct.tty_struct* %74)
  br label %76

76:                                               ; preds = %73, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible_poll(i32*, i32) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
