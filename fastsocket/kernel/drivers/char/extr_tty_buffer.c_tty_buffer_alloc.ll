; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_buffer = type { i64, i8*, i8*, i64, i64, i64, i32*, i64 }
%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_buffer* (%struct.tty_struct*, i64)* @tty_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_buffer* @tty_buffer_alloc(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.tty_buffer*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = icmp ugt i64 %12, 65536
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.tty_buffer* null, %struct.tty_buffer** %3, align 8
  br label %57

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = mul i64 2, %16
  %18 = add i64 64, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.tty_buffer* @kmalloc(i32 %19, i32 %20)
  store %struct.tty_buffer* %21, %struct.tty_buffer** %6, align 8
  %22 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %23 = icmp eq %struct.tty_buffer* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store %struct.tty_buffer* null, %struct.tty_buffer** %3, align 8
  br label %57

25:                                               ; preds = %15
  %26 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %32 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %44 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %50
  store i64 %55, i64* %53, align 8
  %56 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  store %struct.tty_buffer* %56, %struct.tty_buffer** %3, align 8
  br label %57

57:                                               ; preds = %25, %24, %14
  %58 = load %struct.tty_buffer*, %struct.tty_buffer** %3, align 8
  ret %struct.tty_buffer* %58
}

declare dso_local %struct.tty_buffer* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
