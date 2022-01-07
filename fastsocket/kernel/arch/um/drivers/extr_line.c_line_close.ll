; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_line.c_line_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.line* }
%struct.line = type { i32, i64, i32*, i32 }
%struct.file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @line_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.line*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.line*, %struct.line** %7, align 8
  store %struct.line* %8, %struct.line** %5, align 8
  %9 = load %struct.line*, %struct.line** %5, align 8
  %10 = icmp eq %struct.line* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = load %struct.line*, %struct.line** %5, align 8
  %14 = call i32 @flush_buffer(%struct.line* %13)
  %15 = load %struct.line*, %struct.line** %5, align 8
  %16 = getelementptr inbounds %struct.line, %struct.line* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.line*, %struct.line** %5, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %47

23:                                               ; preds = %12
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %47

29:                                               ; preds = %23
  %30 = load %struct.line*, %struct.line** %5, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.line*, %struct.line** %5, align 8
  %34 = getelementptr inbounds %struct.line, %struct.line* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 1
  store %struct.line* null, %struct.line** %36, align 8
  %37 = load %struct.line*, %struct.line** %5, align 8
  %38 = getelementptr inbounds %struct.line, %struct.line* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %43 = call i32 @unregister_winch(%struct.tty_struct* %42)
  %44 = load %struct.line*, %struct.line** %5, align 8
  %45 = getelementptr inbounds %struct.line, %struct.line* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %29
  br label %51

47:                                               ; preds = %28, %22
  %48 = load %struct.line*, %struct.line** %5, align 8
  %49 = getelementptr inbounds %struct.line, %struct.line* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %46, %11
  ret void
}

declare dso_local i32 @flush_buffer(%struct.line*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @unregister_winch(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
