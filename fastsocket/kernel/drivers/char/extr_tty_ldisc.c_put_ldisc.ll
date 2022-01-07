; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_put_ldisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_put_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, i32 }
%struct.tty_ldisc_ops = type { i32, i32 }

@tty_ldisc_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_ldisc*)* @put_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_ldisc(%struct.tty_ldisc* %0) #0 {
  %2 = alloca %struct.tty_ldisc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tty_ldisc_ops*, align 8
  store %struct.tty_ldisc* %0, %struct.tty_ldisc** %2, align 8
  %5 = load %struct.tty_ldisc*, %struct.tty_ldisc** %2, align 8
  %6 = icmp ne %struct.tty_ldisc* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON_ONCE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %38

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.tty_ldisc*, %struct.tty_ldisc** %2, align 8
  %16 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %15, i32 0, i32 1
  %17 = call i64 @atomic_dec_and_lock(i32* %16, i32* @tty_ldisc_lock)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.tty_ldisc*, %struct.tty_ldisc** %2, align 8
  %21 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %20, i32 0, i32 0
  %22 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %21, align 8
  store %struct.tty_ldisc_ops* %22, %struct.tty_ldisc_ops** %4, align 8
  %23 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %4, align 8
  %24 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.tty_ldisc_ops*, %struct.tty_ldisc_ops** %4, align 8
  %28 = getelementptr inbounds %struct.tty_ldisc_ops, %struct.tty_ldisc_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @module_put(i32 %29)
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @tty_ldisc_lock, i64 %31)
  %33 = load %struct.tty_ldisc*, %struct.tty_ldisc** %2, align 8
  %34 = call i32 @kfree(%struct.tty_ldisc* %33)
  br label %38

35:                                               ; preds = %12
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  br label %38

38:                                               ; preds = %35, %19, %11
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.tty_ldisc*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
