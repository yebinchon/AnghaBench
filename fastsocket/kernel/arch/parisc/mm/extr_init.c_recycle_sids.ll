; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/mm/extr_init.c_recycle_sids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/mm/extr_init.c_recycle_sids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dirty_space_ids = common dso_local global i64 0, align 8
@SID_ARRAY_SIZE = common dso_local global i32 0, align 4
@dirty_space_id = common dso_local global i32* null, align 8
@space_id = common dso_local global i32* null, align 8
@free_space_ids = common dso_local global i32 0, align 4
@space_id_index = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @recycle_sids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recycle_sids() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @dirty_space_ids, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %34

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %25, %4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @SID_ARRAY_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i32*, i32** @dirty_space_id, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @space_id, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load i32*, i32** @dirty_space_id, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load i64, i64* @dirty_space_ids, align 8
  %30 = load i32, i32* @free_space_ids, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* @free_space_ids, align 4
  store i64 0, i64* @dirty_space_ids, align 8
  store i64 0, i64* @space_id_index, align 8
  br label %34

34:                                               ; preds = %28, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
