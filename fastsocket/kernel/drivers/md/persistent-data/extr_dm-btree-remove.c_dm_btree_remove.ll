; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_dm_btree_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_dm_btree_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, i32)* }
%struct.dm_btree_info = type { i32, %struct.TYPE_5__ }
%struct.shadow_spine = type { i32 }
%struct.btree_node = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@le64_type = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_remove(%struct.dm_btree_info* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dm_btree_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.shadow_spine, align 4
  %14 = alloca %struct.btree_node*, align 8
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %16 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %20 = call i32 @init_shadow_spine(%struct.shadow_spine* %13, %struct.dm_btree_info* %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %95, %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %24 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %98

27:                                               ; preds = %21
  %28 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %34 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %33, i32 0, i32 1
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi %struct.TYPE_5__* [ %34, %32 ], [ @le64_type, %35 ]
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @remove_raw(%struct.shadow_spine* %13, %struct.dm_btree_info* %28, %struct.TYPE_5__* %37, i32 %38, i32 %43, i32* %11)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %98

48:                                               ; preds = %36
  %49 = call i32 @shadow_current(%struct.shadow_spine* %13)
  %50 = call %struct.btree_node* @dm_block_data(i32 %49)
  store %struct.btree_node* %50, %struct.btree_node** %14, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @value64(%struct.btree_node* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %95

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %64 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = icmp sge i32 %62, %67
  br label %69

69:                                               ; preds = %61, %58
  %70 = phi i1 [ true, %58 ], [ %68, %61 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %74 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %75, align 8
  %77 = icmp ne i32 (i32, i32)* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %80 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32 (i32, i32)*, i32 (i32, i32)** %81, align 8
  %83 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %84 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @value_ptr(%struct.btree_node* %87, i32 %88)
  %90 = call i32 %82(i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %78, %69
  %92 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @delete_at(%struct.btree_node* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %54
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %21

98:                                               ; preds = %47, %21
  %99 = call i32 @shadow_root(%struct.shadow_spine* %13)
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %101 = call i32 @exit_shadow_spine(%struct.shadow_spine* %13)
  %102 = load i32, i32* %12, align 4
  ret i32 %102
}

declare dso_local i32 @init_shadow_spine(%struct.shadow_spine*, %struct.dm_btree_info*) #1

declare dso_local i32 @remove_raw(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @delete_at(%struct.btree_node*, i32) #1

declare dso_local i32 @shadow_root(%struct.shadow_spine*) #1

declare dso_local i32 @exit_shadow_spine(%struct.shadow_spine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
