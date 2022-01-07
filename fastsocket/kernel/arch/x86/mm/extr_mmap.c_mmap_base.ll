; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_mmap.c_mmap_base.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_mmap.c_mmap_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@RLIMIT_STACK = common dso_local global i64 0, align 8
@MIN_GAP = common dso_local global i64 0, align 8
@MAX_GAP = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mmap_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_base() #0 {
  %1 = alloca i64, align 8
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = load i64, i64* @RLIMIT_STACK, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @MIN_GAP, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i64, i64* @MIN_GAP, align 8
  store i64 %15, i64* %1, align 8
  br label %23

16:                                               ; preds = %0
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @MAX_GAP, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @MAX_GAP, align 8
  store i64 %21, i64* %1, align 8
  br label %22

22:                                               ; preds = %20, %16
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i64, i64* @TASK_SIZE, align 8
  %25 = load i64, i64* %1, align 8
  %26 = sub i64 %24, %25
  %27 = call i64 (...) @mmap_rnd()
  %28 = sub i64 %26, %27
  %29 = call i64 @PAGE_ALIGN(i64 %28)
  ret i64 %29
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @mmap_rnd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
