; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_unthrottle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.line* }
%struct.line = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.line*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = load %struct.line*, %struct.line** %5, align 8
  store %struct.line* %6, %struct.line** %3, align 8
  %7 = load %struct.line*, %struct.line** %3, align 8
  %8 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.line*, %struct.line** %3, align 8
  %10 = getelementptr inbounds %struct.line, %struct.line* %9, i32 0, i32 1
  %11 = load %struct.line*, %struct.line** %3, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %11, i32 0, i32 3
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = load %struct.line*, %struct.line** %3, align 8
  %15 = getelementptr inbounds %struct.line, %struct.line* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @chan_interrupt(i32* %10, i32* %12, %struct.tty_struct* %13, i32 %18)
  %20 = load %struct.line*, %struct.line** %3, align 8
  %21 = getelementptr inbounds %struct.line, %struct.line* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %1
  %25 = load %struct.line*, %struct.line** %3, align 8
  %26 = getelementptr inbounds %struct.line, %struct.line* %25, i32 0, i32 1
  %27 = load %struct.line*, %struct.line** %3, align 8
  %28 = getelementptr inbounds %struct.line, %struct.line* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @reactivate_chan(i32* %26, i32 %31)
  br label %33

33:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @chan_interrupt(i32*, i32*, %struct.tty_struct*, i32) #1

declare dso_local i32 @reactivate_chan(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
