; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_init_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_init_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.ktermios*, %struct.ktermios*, %struct.TYPE_2__* }
%struct.ktermios = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ktermios**, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_init_termios(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ktermios**, %struct.ktermios*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %13, i64 %15
  %17 = load %struct.ktermios*, %struct.ktermios** %16, align 8
  store %struct.ktermios* %17, %struct.ktermios** %4, align 8
  %18 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %19 = icmp eq %struct.ktermios* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ktermios* @kzalloc(i32 16, i32 %21)
  store %struct.ktermios* %22, %struct.ktermios** %4, align 8
  %23 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %24 = icmp eq %struct.ktermios* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %68

28:                                               ; preds = %20
  %29 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = call i32 @memcpy(%struct.ktermios* %29, i32* %33, i32 8)
  %35 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.ktermios**, %struct.ktermios*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ktermios*, %struct.ktermios** %40, i64 %42
  store %struct.ktermios* %35, %struct.ktermios** %43, align 8
  br label %44

44:                                               ; preds = %28, %1
  %45 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 1
  store %struct.ktermios* %45, %struct.ktermios** %47, align 8
  %48 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %49 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %48, i64 1
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 2
  store %struct.ktermios* %49, %struct.ktermios** %51, align 8
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 1
  %54 = load %struct.ktermios*, %struct.ktermios** %53, align 8
  %55 = call i32 @tty_termios_input_baud_rate(%struct.ktermios* %54)
  %56 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 1
  %58 = load %struct.ktermios*, %struct.ktermios** %57, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 1
  %62 = load %struct.ktermios*, %struct.ktermios** %61, align 8
  %63 = call i32 @tty_termios_baud_rate(%struct.ktermios* %62)
  %64 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 1
  %66 = load %struct.ktermios*, %struct.ktermios** %65, align 8
  %67 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %44, %25
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.ktermios* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ktermios*, i32*, i32) #1

declare dso_local i32 @tty_termios_input_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
