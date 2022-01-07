; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c___tty_buffer_request_room.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c___tty_buffer_request_room.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_buffer*, %struct.tty_buffer* }
%struct.tty_buffer = type { i32, i32, i32, %struct.tty_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i64)* @__tty_buffer_request_room to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tty_buffer_request_room(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tty_buffer*, align 8
  %6 = alloca %struct.tty_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tty_buffer*, %struct.tty_buffer** %10, align 8
  store %struct.tty_buffer* %11, %struct.tty_buffer** %5, align 8
  %12 = icmp ne %struct.tty_buffer* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.tty_buffer*, %struct.tty_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tty_buffer*, %struct.tty_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call %struct.tty_buffer* @tty_buffer_find(%struct.tty_struct* %28, i64 %29)
  store %struct.tty_buffer* %30, %struct.tty_buffer** %6, align 8
  %31 = icmp ne %struct.tty_buffer* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load %struct.tty_buffer*, %struct.tty_buffer** %5, align 8
  %34 = icmp ne %struct.tty_buffer* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %37 = load %struct.tty_buffer*, %struct.tty_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %37, i32 0, i32 3
  store %struct.tty_buffer* %36, %struct.tty_buffer** %38, align 8
  %39 = load %struct.tty_buffer*, %struct.tty_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tty_buffer*, %struct.tty_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %49

44:                                               ; preds = %32
  %45 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %46 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.tty_buffer* %45, %struct.tty_buffer** %48, align 8
  br label %49

49:                                               ; preds = %44, %35
  %50 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.tty_buffer* %50, %struct.tty_buffer** %53, align 8
  br label %57

54:                                               ; preds = %27
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %22
  %59 = load i64, i64* %4, align 8
  %60 = trunc i64 %59 to i32
  ret i32 %60
}

declare dso_local %struct.tty_buffer* @tty_buffer_find(%struct.tty_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
