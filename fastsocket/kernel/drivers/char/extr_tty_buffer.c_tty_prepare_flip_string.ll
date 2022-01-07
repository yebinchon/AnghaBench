; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_prepare_flip_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_prepare_flip_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tty_buffer* }
%struct.tty_buffer = type { i8*, i32, i32 }

@TTY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_prepare_flip_string(%struct.tty_struct* %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @__tty_buffer_request_room(%struct.tty_struct* %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.tty_buffer*, %struct.tty_buffer** %20, align 8
  store %struct.tty_buffer* %21, %struct.tty_buffer** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %3
  %26 = load %struct.tty_buffer*, %struct.tty_buffer** %9, align 8
  %27 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.tty_buffer*, %struct.tty_buffer** %9, align 8
  %30 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = load i8**, i8*** %5, align 8
  store i8* %33, i8** %34, align 8
  %35 = load %struct.tty_buffer*, %struct.tty_buffer** %9, align 8
  %36 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tty_buffer*, %struct.tty_buffer** %9, align 8
  %39 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* @TTY_NORMAL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @memset(i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.tty_buffer*, %struct.tty_buffer** %9, align 8
  %47 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %25, %3
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__tty_buffer_request_room(%struct.tty_struct*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
