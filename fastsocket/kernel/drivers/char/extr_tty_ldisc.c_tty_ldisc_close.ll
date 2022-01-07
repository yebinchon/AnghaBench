; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_ldisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@TTY_LDISC_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.tty_ldisc*)* @tty_ldisc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_ldisc_close(%struct.tty_struct* %0, %struct.tty_ldisc* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.tty_ldisc* %1, %struct.tty_ldisc** %4, align 8
  %5 = load i32, i32* @TTY_LDISC_OPEN, align 4
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* @TTY_LDISC_OPEN, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = call i32 @clear_bit(i32 %13, i32* %15)
  %17 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %18 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %20, align 8
  %22 = icmp ne i32 (%struct.tty_struct*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  %25 = getelementptr inbounds %struct.tty_ldisc, %struct.tty_ldisc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %27, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = call i32 %28(%struct.tty_struct* %29)
  br label %31

31:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
