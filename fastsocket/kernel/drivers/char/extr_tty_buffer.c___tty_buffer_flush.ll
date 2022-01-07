; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c___tty_buffer_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c___tty_buffer_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_buffer*, %struct.tty_buffer* }
%struct.tty_buffer = type { i32, i32, %struct.tty_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @__tty_buffer_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tty_buffer_flush(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.tty_buffer*, %struct.tty_buffer** %6, align 8
  %8 = icmp eq %struct.tty_buffer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %53

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %19, %10
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tty_buffer*, %struct.tty_buffer** %14, align 8
  %16 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %15, i32 0, i32 2
  %17 = load %struct.tty_buffer*, %struct.tty_buffer** %16, align 8
  store %struct.tty_buffer* %17, %struct.tty_buffer** %3, align 8
  %18 = icmp ne %struct.tty_buffer* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  %20 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %21 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.tty_buffer*, %struct.tty_buffer** %23, align 8
  %25 = call i32 @tty_buffer_free(%struct.tty_struct* %20, %struct.tty_buffer* %24)
  %26 = load %struct.tty_buffer*, %struct.tty_buffer** %3, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.tty_buffer* %26, %struct.tty_buffer** %29, align 8
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.tty_buffer*, %struct.tty_buffer** %33, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.tty_buffer*, %struct.tty_buffer** %37, align 8
  %39 = icmp ne %struct.tty_buffer* %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON(i32 %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.tty_buffer*, %struct.tty_buffer** %44, align 8
  %46 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.tty_buffer*, %struct.tty_buffer** %50, align 8
  %52 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %51, i32 0, i32 1
  store i32 %47, i32* %52, align 4
  br label %53

53:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @tty_buffer_free(%struct.tty_struct*, %struct.tty_buffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
