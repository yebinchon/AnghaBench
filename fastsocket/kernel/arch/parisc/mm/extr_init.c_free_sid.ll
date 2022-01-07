; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/mm/extr_init.c_free_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/mm/extr_init.c_free_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPACEID_SHIFT = common dso_local global i64 0, align 8
@dirty_space_id = common dso_local global i64* null, align 8
@SHIFT_PER_LONG = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@sid_lock = common dso_local global i32 0, align 4
@dirty_space_ids = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_sid(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @SPACEID_SHIFT, align 8
  %7 = lshr i64 %5, %6
  store i64 %7, i64* %3, align 8
  %8 = load i64*, i64** @dirty_space_id, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @SHIFT_PER_LONG, align 8
  %11 = lshr i64 %9, %10
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  store i64* %12, i64** %4, align 8
  %13 = load i32, i32* @BITS_PER_LONG, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %3, align 8
  %17 = and i64 %16, %15
  store i64 %17, i64* %3, align 8
  %18 = call i32 @spin_lock(i32* @sid_lock)
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = shl i64 1, %21
  %23 = and i64 %20, %22
  %24 = call i32 @BUG_ON(i64 %23)
  %25 = load i64, i64* %3, align 8
  %26 = shl i64 1, %25
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %28, %26
  store i64 %29, i64* %27, align 8
  %30 = load i32, i32* @dirty_space_ids, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @dirty_space_ids, align 4
  %32 = call i32 @spin_unlock(i32* @sid_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
