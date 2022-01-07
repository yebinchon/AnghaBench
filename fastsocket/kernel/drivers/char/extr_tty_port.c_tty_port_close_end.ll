; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_close_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_port.c_tty_port_close_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32, i32, i32, i32, i64, i64 }
%struct.tty_struct = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HUPCL = common dso_local global i32 0, align 4
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@ASYNC_CLOSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_port_close_end(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_port* %0, %struct.tty_port** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = call i32 @tty_ldisc_flush(%struct.tty_struct* %6)
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HUPCL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %18 = call i32 @tty_port_lower_dtr_rts(%struct.tty_port* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %21 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %27 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %19
  %31 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %32 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %31, i32 0, i32 1
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %36 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %41 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @jiffies_to_msecs(i64 %42)
  %44 = call i32 @msleep_interruptible(i32 %43)
  br label %45

45:                                               ; preds = %39, %30
  %46 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %47 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %46, i32 0, i32 1
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %51 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %50, i32 0, i32 3
  %52 = call i32 @wake_up_interruptible(i32* %51)
  br label %53

53:                                               ; preds = %45, %19
  %54 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %55 = load i32, i32* @ASYNC_CLOSING, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %59 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %63 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %62, i32 0, i32 2
  %64 = call i32 @wake_up_interruptible(i32* %63)
  %65 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %66 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %65, i32 0, i32 1
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  ret void
}

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @tty_port_lower_dtr_rts(%struct.tty_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
