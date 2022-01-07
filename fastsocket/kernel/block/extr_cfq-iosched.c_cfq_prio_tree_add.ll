; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_prio_tree_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_prio_tree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32* }
%struct.cfq_queue = type { i64, i32*, i32, i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_prio_tree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_prio_tree_add(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %9 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %14 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %13, i32 0, i32 2
  %15 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %16 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @rb_erase(i32* %14, i32* %17)
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %20 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %23 = call i64 @cfq_class_idle(%struct.cfq_queue* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %68

26:                                               ; preds = %21
  %27 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %28 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %68

32:                                               ; preds = %26
  %33 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %34 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %37 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %41 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %44 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %47 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @blk_rq_pos(i32 %48)
  %50 = call %struct.cfq_queue* @cfq_prio_tree_lookup(%struct.cfq_data* %42, i32* %45, i32 %49, %struct.rb_node** %6, %struct.rb_node*** %5)
  store %struct.cfq_queue* %50, %struct.cfq_queue** %7, align 8
  %51 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %52 = icmp ne %struct.cfq_queue* %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %32
  %54 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %55 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %54, i32 0, i32 2
  %56 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %57 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %58 = call i32 @rb_link_node(i32* %55, %struct.rb_node* %56, %struct.rb_node** %57)
  %59 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %60 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %59, i32 0, i32 2
  %61 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %62 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @rb_insert_color(i32* %60, i32* %63)
  br label %68

65:                                               ; preds = %32
  %66 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %67 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %25, %31, %65, %53
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i64 @cfq_class_idle(%struct.cfq_queue*) #1

declare dso_local %struct.cfq_queue* @cfq_prio_tree_lookup(%struct.cfq_data*, i32*, i32, %struct.rb_node**, %struct.rb_node***) #1

declare dso_local i32 @blk_rq_pos(i32) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
