; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmap_64.c_mmap_rnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_mmap_64.c_mmap_rnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mmap_rnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_rnd() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PF_RANDOMIZE, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %0
  %9 = call i64 (...) @is_32bit_task()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = call i32 (...) @get_random_int()
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = sub nsw i32 22, %13
  %15 = shl i32 1, %14
  %16 = srem i32 %12, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %1, align 8
  br label %25

18:                                               ; preds = %8
  %19 = call i32 (...) @get_random_int()
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = sub nsw i32 29, %20
  %22 = shl i32 1, %21
  %23 = srem i32 %19, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %1, align 8
  br label %25

25:                                               ; preds = %18, %11
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i64, i64* %1, align 8
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 %27, %29
  %31 = mul i64 %30, 2
  ret i64 %31
}

declare dso_local i64 @is_32bit_task(...) #1

declare dso_local i32 @get_random_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
