; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_get_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_get_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.io_context* @get_io_context(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_context*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.io_context* null, %struct.io_context** %5, align 8
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.io_context* @current_io_context(i32 %7, i32 %8)
  store %struct.io_context* %9, %struct.io_context** %5, align 8
  %10 = load %struct.io_context*, %struct.io_context** %5, align 8
  %11 = icmp ne %struct.io_context* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %24

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.io_context*, %struct.io_context** %5, align 8
  %20 = getelementptr inbounds %struct.io_context, %struct.io_context* %19, i32 0, i32 0
  %21 = call i32 @atomic_long_inc_not_zero(i32* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %6, label %24

24:                                               ; preds = %18, %16
  %25 = load %struct.io_context*, %struct.io_context** %5, align 8
  ret %struct.io_context* %25
}

declare dso_local %struct.io_context* @current_io_context(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_long_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
