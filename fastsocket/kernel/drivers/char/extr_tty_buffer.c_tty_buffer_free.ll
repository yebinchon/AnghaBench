; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_buffer_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_buffer.c_tty_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.tty_buffer* }
%struct.tty_buffer = type { i32, %struct.tty_buffer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.tty_buffer*)* @tty_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_buffer_free(%struct.tty_struct* %0, %struct.tty_buffer* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_buffer*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.tty_buffer* %1, %struct.tty_buffer** %4, align 8
  %5 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, %7
  store i32 %12, i32* %10, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 512
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %26 = call i32 @kfree(%struct.tty_buffer* %25)
  br label %38

27:                                               ; preds = %2
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.tty_buffer*, %struct.tty_buffer** %30, align 8
  %32 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.tty_buffer, %struct.tty_buffer* %32, i32 0, i32 1
  store %struct.tty_buffer* %31, %struct.tty_buffer** %33, align 8
  %34 = load %struct.tty_buffer*, %struct.tty_buffer** %4, align 8
  %35 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.tty_buffer* %34, %struct.tty_buffer** %37, align 8
  br label %38

38:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.tty_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
