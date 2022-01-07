; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_prepare_flip_string_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_prepare_flip_string_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tty_buffer* }
%struct.tty_buffer = type { i8*, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_prepare_flip_string_flags(%struct.tty_struct* %0, i8** %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @__tty_buffer_request_room(%struct.tty_struct* %17, i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.tty_buffer*, %struct.tty_buffer** %22, align 8
  store %struct.tty_buffer* %23, %struct.tty_buffer** %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %4
  %28 = load %struct.tty_buffer*, %struct.tty_buffer** %11, align 8
  %29 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.tty_buffer*, %struct.tty_buffer** %11, align 8
  %32 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  %37 = load %struct.tty_buffer*, %struct.tty_buffer** %11, align 8
  %38 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.tty_buffer*, %struct.tty_buffer** %11, align 8
  %41 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i8**, i8*** %7, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.tty_buffer*, %struct.tty_buffer** %11, align 8
  %48 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %27, %4
  %52 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__tty_buffer_request_room(%struct.tty_struct*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
