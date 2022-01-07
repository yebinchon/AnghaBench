; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_copy_io_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-ioc.c_copy_io_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_context = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_io_context(%struct.io_context** %0, %struct.io_context** %1) #0 {
  %3 = alloca %struct.io_context**, align 8
  %4 = alloca %struct.io_context**, align 8
  %5 = alloca %struct.io_context*, align 8
  %6 = alloca %struct.io_context*, align 8
  store %struct.io_context** %0, %struct.io_context*** %3, align 8
  store %struct.io_context** %1, %struct.io_context*** %4, align 8
  %7 = load %struct.io_context**, %struct.io_context*** %4, align 8
  %8 = load %struct.io_context*, %struct.io_context** %7, align 8
  store %struct.io_context* %8, %struct.io_context** %5, align 8
  %9 = load %struct.io_context**, %struct.io_context*** %3, align 8
  %10 = load %struct.io_context*, %struct.io_context** %9, align 8
  store %struct.io_context* %10, %struct.io_context** %6, align 8
  %11 = load %struct.io_context*, %struct.io_context** %5, align 8
  %12 = icmp ne %struct.io_context* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.io_context*, %struct.io_context** %5, align 8
  %15 = getelementptr inbounds %struct.io_context, %struct.io_context* %14, i32 0, i32 0
  %16 = call i64 @atomic_long_read(i32* %15)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.io_context*, %struct.io_context** %5, align 8
  %21 = getelementptr inbounds %struct.io_context, %struct.io_context* %20, i32 0, i32 0
  %22 = call i32 @atomic_long_inc(i32* %21)
  %23 = load %struct.io_context*, %struct.io_context** %6, align 8
  %24 = call i32 @put_io_context(%struct.io_context* %23)
  %25 = load %struct.io_context*, %struct.io_context** %5, align 8
  %26 = load %struct.io_context**, %struct.io_context*** %3, align 8
  store %struct.io_context* %25, %struct.io_context** %26, align 8
  br label %27

27:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @put_io_context(%struct.io_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
