; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_find_highest_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_find_highest_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.ro_spine = type { i32 }

@ENODATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_find_highest_key(%struct.dm_btree_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dm_btree_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ro_spine, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %12 = call i32 @init_ro_spine(%struct.ro_spine* %10, %struct.dm_btree_info* %11)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %16 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %27 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %33

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i32* [ null, %31 ], [ %5, %32 ]
  %35 = call i32 @find_highest_key(%struct.ro_spine* %10, i32 %20, i32* %24, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ENODATA, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %52

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %52

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %13

52:                                               ; preds = %44, %40, %13
  %53 = call i32 @exit_ro_spine(%struct.ro_spine* %10)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  ret i32 %61
}

declare dso_local i32 @init_ro_spine(%struct.ro_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @find_highest_key(%struct.ro_spine*, i32, i32*, i32*) #1

declare dso_local i32 @exit_ro_spine(%struct.ro_spine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
