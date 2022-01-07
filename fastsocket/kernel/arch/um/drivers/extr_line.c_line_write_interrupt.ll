; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_write_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_write_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { %struct.line* }
%struct.line = type { i32, i32, i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @line_write_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_write_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.chan*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca %struct.tty_struct*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.chan*
  store %struct.chan* %11, %struct.chan** %6, align 8
  %12 = load %struct.chan*, %struct.chan** %6, align 8
  %13 = getelementptr inbounds %struct.chan, %struct.chan* %12, i32 0, i32 0
  %14 = load %struct.line*, %struct.line** %13, align 8
  store %struct.line* %14, %struct.line** %7, align 8
  %15 = load %struct.line*, %struct.line** %7, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 4
  %17 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  store %struct.tty_struct* %17, %struct.tty_struct** %8, align 8
  %18 = load %struct.line*, %struct.line** %7, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.line*, %struct.line** %7, align 8
  %22 = call i32 @flush_buffer(%struct.line* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %54

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.line*, %struct.line** %7, align 8
  %32 = getelementptr inbounds %struct.line, %struct.line* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.line*, %struct.line** %7, align 8
  %35 = getelementptr inbounds %struct.line, %struct.line* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.line*, %struct.line** %7, align 8
  %37 = getelementptr inbounds %struct.line, %struct.line* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.line*, %struct.line** %7, align 8
  %40 = getelementptr inbounds %struct.line, %struct.line* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %30, %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.line*, %struct.line** %7, align 8
  %44 = getelementptr inbounds %struct.line, %struct.line* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %47 = icmp eq %struct.tty_struct* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @IRQ_NONE, align 4
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %52 = call i32 @tty_wakeup(%struct.tty_struct* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %48, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @flush_buffer(%struct.line*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
