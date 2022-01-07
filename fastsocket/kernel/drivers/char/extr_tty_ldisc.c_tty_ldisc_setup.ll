; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty_ldisc* }
%struct.tty_ldisc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_ldisc_setup(%struct.tty_struct* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.tty_ldisc*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.tty_ldisc*, %struct.tty_ldisc** %9, align 8
  store %struct.tty_ldisc* %10, %struct.tty_ldisc** %6, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %13 = call i32 @tty_ldisc_open(%struct.tty_struct* %11, %struct.tty_ldisc* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %20 = icmp ne %struct.tty_struct* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %23 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %24 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %23, i32 0, i32 0
  %25 = load %struct.tty_ldisc*, %struct.tty_ldisc** %24, align 8
  %26 = call i32 @tty_ldisc_open(%struct.tty_struct* %22, %struct.tty_ldisc* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %32 = call i32 @tty_ldisc_close(%struct.tty_struct* %30, %struct.tty_ldisc* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %21
  %35 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %36 = call i32 @tty_ldisc_enable(%struct.tty_struct* %35)
  br label %37

37:                                               ; preds = %34, %18
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i32 @tty_ldisc_enable(%struct.tty_struct* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %29, %16
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @tty_ldisc_open(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_close(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_enable(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
