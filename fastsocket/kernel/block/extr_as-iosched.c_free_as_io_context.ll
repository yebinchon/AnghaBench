; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_free_as_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_free_as_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_io_context = type { i32 }

@as_ioc_count = common dso_local global i32 0, align 4
@ioc_gone = common dso_local global i32* null, align 8
@ioc_gone_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_io_context*)* @free_as_io_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_as_io_context(%struct.as_io_context* %0) #0 {
  %2 = alloca %struct.as_io_context*, align 8
  store %struct.as_io_context* %0, %struct.as_io_context** %2, align 8
  %3 = load %struct.as_io_context*, %struct.as_io_context** %2, align 8
  %4 = call i32 @kfree(%struct.as_io_context* %3)
  %5 = load i32, i32* @as_ioc_count, align 4
  %6 = call i32 @elv_ioc_count_dec(i32 %5)
  %7 = load i32*, i32** @ioc_gone, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = call i32 @spin_lock(i32* @ioc_gone_lock)
  %11 = load i32*, i32** @ioc_gone, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, i32* @as_ioc_count, align 4
  %15 = call i32 @elv_ioc_count_read(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** @ioc_gone, align 8
  %19 = call i32 @complete(i32* %18)
  store i32* null, i32** @ioc_gone, align 8
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = call i32 @spin_unlock(i32* @ioc_gone_lock)
  br label %22

22:                                               ; preds = %20, %1
  ret void
}

declare dso_local i32 @kfree(%struct.as_io_context*) #1

declare dso_local i32 @elv_ioc_count_dec(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @elv_ioc_count_read(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
