; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_audit.c_tty_audit_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.tty_audit_buf* }
%struct.tty_audit_buf = type { i32 }

@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_audit_exit() #0 {
  %1 = alloca %struct.tty_audit_buf*, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_irq(i32* %5)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %10, align 8
  store %struct.tty_audit_buf* %11, %struct.tty_audit_buf** %1, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_irq(i32* %19)
  %21 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %22 = icmp ne %struct.tty_audit_buf* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %0
  br label %35

24:                                               ; preds = %0
  %25 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %26 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %29 = call i32 @tty_audit_buf_push_current(%struct.tty_audit_buf* %28)
  %30 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %31 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  %34 = call i32 @tty_audit_buf_put(%struct.tty_audit_buf* %33)
  br label %35

35:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_audit_buf_push_current(%struct.tty_audit_buf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_audit_buf_put(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
