; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_termios_copy_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_termios_copy_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktermios = type { i32, i32, i32 }

@HUPCL = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_termios_copy_hw(%struct.ktermios* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.ktermios*, align 8
  %4 = alloca %struct.ktermios*, align 8
  store %struct.ktermios* %0, %struct.ktermios** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %5 = load i32, i32* @HUPCL, align 4
  %6 = load i32, i32* @CREAD, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CLOCAL, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %11 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HUPCL, align 4
  %18 = load i32, i32* @CREAD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CLOCAL, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %16, %22
  %24 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %25 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %29 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %34 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ktermios*, %struct.ktermios** %3, align 8
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
