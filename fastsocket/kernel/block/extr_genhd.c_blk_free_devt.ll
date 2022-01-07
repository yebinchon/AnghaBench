; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_free_devt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_genhd.c_blk_free_devt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_EXT_MAJOR = common dso_local global i64 0, align 8
@ext_devt_mutex = common dso_local global i32 0, align 4
@ext_devt_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_free_devt(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @MKDEV(i32 0, i32 0)
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @MAJOR(i64 %9)
  %11 = load i64, i64* @BLOCK_EXT_MAJOR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = call i32 @mutex_lock(i32* @ext_devt_mutex)
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @MINOR(i64 %15)
  %17 = call i32 @blk_mangle_minor(i32 %16)
  %18 = call i32 @idr_remove(i32* @ext_devt_idr, i32 %17)
  %19 = call i32 @mutex_unlock(i32* @ext_devt_mutex)
  br label %20

20:                                               ; preds = %7, %13, %8
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i64 @MAJOR(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @blk_mangle_minor(i32) #1

declare dso_local i32 @MINOR(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
