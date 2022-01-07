; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_termios_baud_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_termios_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktermios = type { i32, i32 }

@CBAUD = common dso_local global i32 0, align 4
@CBAUDEX = common dso_local global i32 0, align 4
@n_baud_table = common dso_local global i32 0, align 4
@baud_table = common dso_local global i32* null, align 8
@BOTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_termios_baud_rate(%struct.ktermios* %0) #0 {
  %2 = alloca %struct.ktermios*, align 8
  %3 = alloca i32, align 4
  store %struct.ktermios* %0, %struct.ktermios** %2, align 8
  %4 = load %struct.ktermios*, %struct.ktermios** %2, align 8
  %5 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CBAUD, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CBAUDEX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @CBAUDEX, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 15
  %23 = load i32, i32* @n_baud_table, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20, %13
  %26 = load i32, i32* @CBAUDEX, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ktermios*, %struct.ktermios** %2, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %35

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 15
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %25
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32*, i32** @baud_table, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
