; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32* }
%struct.tty_ldisc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @tty_ldisc_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_ldisc_reinit(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.tty_ldisc* @tty_ldisc_get(i32 %7)
  store %struct.tty_ldisc* %8, %struct.tty_ldisc** %6, align 8
  %9 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %10 = call i64 @IS_ERR(%struct.tty_ldisc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @tty_ldisc_close(%struct.tty_struct* %14, i32* %17)
  %19 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @tty_ldisc_put(i32* %21)
  %23 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %27 = call i32 @tty_ldisc_assign(%struct.tty_struct* %25, %struct.tty_ldisc* %26)
  %28 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @tty_set_termios_ldisc(%struct.tty_struct* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %13, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.tty_ldisc* @tty_ldisc_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_close(%struct.tty_struct*, i32*) #1

declare dso_local i32 @tty_ldisc_put(i32*) #1

declare dso_local i32 @tty_ldisc_assign(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_set_termios_ldisc(%struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
