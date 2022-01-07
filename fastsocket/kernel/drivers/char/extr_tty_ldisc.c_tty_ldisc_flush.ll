; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_ldisc_flush(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = call %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct* %4)
  store %struct.tty_ldisc* %5, %struct.tty_ldisc** %3, align 8
  %6 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %7 = icmp ne %struct.tty_ldisc* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %10 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %12, align 8
  %14 = icmp ne i32 (%struct.tty_struct*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %17 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %19, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %22 = call i32 %20(%struct.tty_struct* %21)
  br label %23

23:                                               ; preds = %15, %8
  %24 = load %struct.tty_ldisc*, %struct.tty_ldisc** %3, align 8
  %25 = call i32 @tty_ldisc_deref(%struct.tty_ldisc* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = call i32 @tty_buffer_flush(%struct.tty_struct* %27)
  ret void
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_ref(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_deref(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_buffer_flush(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
