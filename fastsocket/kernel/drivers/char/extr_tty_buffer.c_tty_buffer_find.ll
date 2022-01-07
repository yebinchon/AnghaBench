; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_buffer_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_buffer_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_buffer = type { i64, %struct.tty_buffer*, i64, i64, i64 }
%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.tty_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_buffer* (%struct.tty_struct*, i64)* @tty_buffer_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_buffer* @tty_buffer_find(%struct.tty_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.tty_buffer*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tty_buffer**, align 8
  %7 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.tty_buffer** %10, %struct.tty_buffer*** %6, align 8
  br label %11

11:                                               ; preds = %45, %2
  %12 = load %struct.tty_buffer**, %struct.tty_buffer*** %6, align 8
  %13 = load %struct.tty_buffer*, %struct.tty_buffer** %12, align 8
  %14 = icmp ne %struct.tty_buffer* %13, null
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load %struct.tty_buffer**, %struct.tty_buffer*** %6, align 8
  %17 = load %struct.tty_buffer*, %struct.tty_buffer** %16, align 8
  store %struct.tty_buffer* %17, %struct.tty_buffer** %7, align 8
  %18 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %19 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %15
  %24 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %25 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %24, i32 0, i32 1
  %26 = load %struct.tty_buffer*, %struct.tty_buffer** %25, align 8
  %27 = load %struct.tty_buffer**, %struct.tty_buffer*** %6, align 8
  store %struct.tty_buffer* %26, %struct.tty_buffer** %27, align 8
  %28 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %29 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %28, i32 0, i32 1
  store %struct.tty_buffer* null, %struct.tty_buffer** %29, align 8
  %30 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %31 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %33 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  %37 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %38
  store i64 %43, i64* %41, align 8
  %44 = load %struct.tty_buffer*, %struct.tty_buffer** %7, align 8
  store %struct.tty_buffer* %44, %struct.tty_buffer** %3, align 8
  br label %56

45:                                               ; preds = %15
  %46 = load %struct.tty_buffer**, %struct.tty_buffer*** %6, align 8
  %47 = load %struct.tty_buffer*, %struct.tty_buffer** %46, align 8
  %48 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %47, i32 0, i32 1
  store %struct.tty_buffer** %48, %struct.tty_buffer*** %6, align 8
  br label %11

49:                                               ; preds = %11
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 255
  %52 = and i64 %51, -256
  store i64 %52, i64* %5, align 8
  %53 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call %struct.tty_buffer* @tty_buffer_alloc(%struct.tty_struct* %53, i64 %54)
  store %struct.tty_buffer* %55, %struct.tty_buffer** %3, align 8
  br label %56

56:                                               ; preds = %49, %23
  %57 = load %struct.tty_buffer*, %struct.tty_buffer** %3, align 8
  ret %struct.tty_buffer* %57
}

declare dso_local %struct.tty_buffer* @tty_buffer_alloc(%struct.tty_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
