; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_service_tree_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-throttle.c_tg_service_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_rb_root = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.throtl_grp = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_rb_root*, %struct.throtl_grp*)* @tg_service_tree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_service_tree_add(%struct.throtl_rb_root* %0, %struct.throtl_grp* %1) #0 {
  %3 = alloca %struct.throtl_rb_root*, align 8
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.throtl_grp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.throtl_rb_root* %0, %struct.throtl_rb_root** %3, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %4, align 8
  %10 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %11 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rb_node** %12, %struct.rb_node*** %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  %13 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %14 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  %19 = icmp ne %struct.rb_node* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  store %struct.rb_node* %22, %struct.rb_node** %6, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = call %struct.throtl_grp* @rb_entry_tg(%struct.rb_node* %23)
  store %struct.throtl_grp* %24, %struct.throtl_grp** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %7, align 8
  %27 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @time_before(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 1
  store %struct.rb_node** %33, %struct.rb_node*** %5, align 8
  br label %37

34:                                               ; preds = %20
  %35 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %36 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %35, i32 0, i32 0
  store %struct.rb_node** %36, %struct.rb_node*** %5, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %16

38:                                               ; preds = %16
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %43 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %42, i32 0, i32 1
  %44 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %45 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %44, i32 0, i32 1
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %41, %38
  %47 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %48 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %47, i32 0, i32 1
  %49 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %50 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %51 = call i32 @rb_link_node(i32* %48, %struct.rb_node* %49, %struct.rb_node** %50)
  %52 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %53 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %52, i32 0, i32 1
  %54 = load %struct.throtl_rb_root*, %struct.throtl_rb_root** %3, align 8
  %55 = getelementptr inbounds %struct.throtl_rb_root, %struct.throtl_rb_root* %54, i32 0, i32 0
  %56 = call i32 @rb_insert_color(i32* %53, %struct.TYPE_2__* %55)
  ret void
}

declare dso_local %struct.throtl_grp* @rb_entry_tg(%struct.rb_node*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
