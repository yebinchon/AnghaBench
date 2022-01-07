; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_group_service_tree_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c___cfq_group_service_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_rb_root = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.cfq_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_rb_root*, %struct.cfq_group*)* @__cfq_group_service_tree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfq_group_service_tree_add(%struct.cfq_rb_root* %0, %struct.cfq_group* %1) #0 {
  %3 = alloca %struct.cfq_rb_root*, align 8
  %4 = alloca %struct.cfq_group*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.cfq_group*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cfq_rb_root* %0, %struct.cfq_rb_root** %3, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %4, align 8
  %10 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %11 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.rb_node** %12, %struct.rb_node*** %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  %13 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %14 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %15 = call i64 @cfqg_key(%struct.cfq_rb_root* %13, %struct.cfq_group* %14)
  store i64 %15, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %16

16:                                               ; preds = %36, %2
  %17 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %18 = load %struct.rb_node*, %struct.rb_node** %17, align 8
  %19 = icmp ne %struct.rb_node* %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  store %struct.rb_node* %22, %struct.rb_node** %6, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = call %struct.cfq_group* @rb_entry_cfqg(%struct.rb_node* %23)
  store %struct.cfq_group* %24, %struct.cfq_group** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %27 = load %struct.cfq_group*, %struct.cfq_group** %7, align 8
  %28 = call i64 @cfqg_key(%struct.cfq_rb_root* %26, %struct.cfq_group* %27)
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %32 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %31, i32 0, i32 1
  store %struct.rb_node** %32, %struct.rb_node*** %5, align 8
  br label %36

33:                                               ; preds = %20
  %34 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %35 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i32 0, i32 0
  store %struct.rb_node** %35, %struct.rb_node*** %5, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %30
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %42 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %41, i32 0, i32 0
  %43 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %44 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %47 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %46, i32 0, i32 0
  %48 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %49 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %50 = call i32 @rb_link_node(i32* %47, %struct.rb_node* %48, %struct.rb_node** %49)
  %51 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %52 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %51, i32 0, i32 0
  %53 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %3, align 8
  %54 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %53, i32 0, i32 0
  %55 = call i32 @rb_insert_color(i32* %52, %struct.TYPE_2__* %54)
  ret void
}

declare dso_local i64 @cfqg_key(%struct.cfq_rb_root*, %struct.cfq_group*) #1

declare dso_local %struct.cfq_group* @rb_entry_cfqg(%struct.rb_node*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
