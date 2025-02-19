; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { %struct.line* }
%struct.line = type { i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @line_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.chan*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.chan*
  store %struct.chan* %9, %struct.chan** %5, align 8
  %10 = load %struct.chan*, %struct.chan** %5, align 8
  %11 = getelementptr inbounds %struct.chan, %struct.chan* %10, i32 0, i32 0
  %12 = load %struct.line*, %struct.line** %11, align 8
  store %struct.line* %12, %struct.line** %6, align 8
  %13 = load %struct.line*, %struct.line** %6, align 8
  %14 = getelementptr inbounds %struct.line, %struct.line* %13, i32 0, i32 2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %14, align 8
  store %struct.tty_struct* %15, %struct.tty_struct** %7, align 8
  %16 = load %struct.line*, %struct.line** %6, align 8
  %17 = icmp ne %struct.line* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.line*, %struct.line** %6, align 8
  %20 = getelementptr inbounds %struct.line, %struct.line* %19, i32 0, i32 1
  %21 = load %struct.line*, %struct.line** %6, align 8
  %22 = getelementptr inbounds %struct.line, %struct.line* %21, i32 0, i32 0
  %23 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @chan_interrupt(i32* %20, i32* %22, %struct.tty_struct* %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %27
}

declare dso_local i32 @chan_interrupt(i32*, i32*, %struct.tty_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
