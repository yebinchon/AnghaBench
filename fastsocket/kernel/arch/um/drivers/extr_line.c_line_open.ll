; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32, i32, i32, i32, %struct.tty_struct*, i32 }
%struct.tty_struct = type { i64, i32, %struct.TYPE_2__, %struct.line* }
%struct.TYPE_2__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@line_timer_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_open(%struct.line* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  store %struct.line* %0, %struct.line** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %8 = load %struct.line*, %struct.line** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.line, %struct.line* %8, i64 %11
  store %struct.line* %12, %struct.line** %6, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.line*, %struct.line** %6, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.line*, %struct.line** %6, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %72

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %24 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %72

29:                                               ; preds = %23
  %30 = load %struct.line*, %struct.line** %6, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.line*, %struct.line** %6, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 3
  store %struct.line* %33, %struct.line** %35, align 8
  %36 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %37 = load %struct.line*, %struct.line** %6, align 8
  %38 = getelementptr inbounds %struct.line, %struct.line* %37, i32 0, i32 4
  store %struct.tty_struct* %36, %struct.tty_struct** %38, align 8
  %39 = load %struct.line*, %struct.line** %6, align 8
  %40 = call i32 @enable_chan(%struct.line* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %77

45:                                               ; preds = %29
  %46 = load %struct.line*, %struct.line** %6, align 8
  %47 = getelementptr inbounds %struct.line, %struct.line* %46, i32 0, i32 3
  %48 = load i32, i32* @line_timer_cb, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.line*, %struct.line** %6, align 8
  %51 = getelementptr inbounds %struct.line, %struct.line* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %45
  %55 = load %struct.line*, %struct.line** %6, align 8
  %56 = getelementptr inbounds %struct.line, %struct.line* %55, i32 0, i32 2
  %57 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %58 = call i32 @chan_enable_winch(i32* %56, %struct.tty_struct* %57)
  %59 = load %struct.line*, %struct.line** %6, align 8
  %60 = getelementptr inbounds %struct.line, %struct.line* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %45
  %62 = load %struct.line*, %struct.line** %6, align 8
  %63 = getelementptr inbounds %struct.line, %struct.line* %62, i32 0, i32 2
  %64 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @chan_window_size(i32* %63, i32* %66, i32* %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %77

72:                                               ; preds = %28, %22
  %73 = load %struct.line*, %struct.line** %6, align 8
  %74 = getelementptr inbounds %struct.line, %struct.line* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %61, %43
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @enable_chan(%struct.line*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @chan_enable_winch(i32*, %struct.tty_struct*) #1

declare dso_local i32 @chan_window_size(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
