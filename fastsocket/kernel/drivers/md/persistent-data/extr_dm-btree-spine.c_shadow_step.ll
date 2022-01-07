; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_shadow_step.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_shadow_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32, i32*, i32, i32 }
%struct.dm_btree_value_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shadow_step(%struct.shadow_spine* %0, i32 %1, %struct.dm_btree_value_type* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shadow_spine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_btree_value_type*, align 8
  %8 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %7, align 8
  %9 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %10 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %15 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %18 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @unlock_block(i32 %16, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %79

27:                                               ; preds = %13
  %28 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %29 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %34 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %38 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %27, %3
  %42 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %43 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %47 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %48 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %51 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = call i32 @bn_shadow(i32 %44, i32 %45, %struct.dm_btree_value_type* %46, i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %41
  %59 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %60 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %65 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dm_block_location(i32 %68)
  %70 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %71 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %63, %58
  %73 = load %struct.shadow_spine*, %struct.shadow_spine** %5, align 8
  %74 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %72, %41
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %25
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @unlock_block(i32, i32) #1

declare dso_local i32 @bn_shadow(i32, i32, %struct.dm_btree_value_type*, i32*) #1

declare dso_local i32 @dm_block_location(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
