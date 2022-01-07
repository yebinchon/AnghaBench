; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/mm/extr_init.c_alloc_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/mm/extr_init.c_alloc_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sid_lock = common dso_local global i32 0, align 4
@free_space_ids = common dso_local global i64 0, align 8
@dirty_space_ids = common dso_local global i64 0, align 8
@space_id = common dso_local global i64* null, align 8
@NR_SPACE_IDS = common dso_local global i32 0, align 4
@space_id_index = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@SHIFT_PER_LONG = common dso_local global i64 0, align 8
@SPACEID_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @alloc_sid() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @spin_lock(i32* @sid_lock)
  %3 = load i64, i64* @free_space_ids, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load i64, i64* @dirty_space_ids, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = call i32 @spin_unlock(i32* @sid_lock)
  %10 = call i32 (...) @flush_tlb_all()
  %11 = call i32 @spin_lock(i32* @sid_lock)
  br label %12

12:                                               ; preds = %8, %5
  %13 = load i64, i64* @free_space_ids, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  br label %17

17:                                               ; preds = %12, %0
  %18 = load i64, i64* @free_space_ids, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* @free_space_ids, align 8
  %20 = load i64*, i64** @space_id, align 8
  %21 = load i32, i32* @NR_SPACE_IDS, align 4
  %22 = load i64, i64* @space_id_index, align 8
  %23 = call i64 @find_next_zero_bit(i64* %20, i32 %21, i64 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i32, i32* @BITS_PER_LONG, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = and i64 %24, %27
  %29 = shl i64 1, %28
  %30 = load i64*, i64** @space_id, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @SHIFT_PER_LONG, align 8
  %33 = lshr i64 %31, %32
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = or i64 %35, %29
  store i64 %36, i64* %34, align 8
  %37 = load i64, i64* %1, align 8
  store i64 %37, i64* @space_id_index, align 8
  %38 = call i32 @spin_unlock(i32* @sid_lock)
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @SPACEID_SHIFT, align 8
  %41 = shl i64 %39, %40
  ret i64 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @find_next_zero_bit(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
