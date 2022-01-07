; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_notify_queue_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_group_notify_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { %struct.cfq_rb_root }
%struct.cfq_rb_root = type { i64, i32 }
%struct.cfq_group = type { i64, i32, i32 }
%struct.rb_node = type { i32 }

@CFQ_IDLE_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_group*)* @cfq_group_notify_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_group_notify_queue_add(%struct.cfq_data* %0, %struct.cfq_group* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_group*, align 8
  %5 = alloca %struct.cfq_rb_root*, align 8
  %6 = alloca %struct.cfq_group*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_group* %1, %struct.cfq_group** %4, align 8
  %8 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %9 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %8, i32 0, i32 0
  store %struct.cfq_rb_root* %9, %struct.cfq_rb_root** %5, align 8
  %10 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %11 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %15 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %14, i32 0, i32 1
  %16 = call i32 @RB_EMPTY_NODE(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %45

19:                                               ; preds = %2
  %20 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %5, align 8
  %21 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %20, i32 0, i32 1
  %22 = call %struct.rb_node* @rb_last(i32* %21)
  store %struct.rb_node* %22, %struct.rb_node** %7, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %24 = icmp ne %struct.rb_node* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %27 = call %struct.cfq_group* @rb_entry_cfqg(%struct.rb_node* %26)
  store %struct.cfq_group* %27, %struct.cfq_group** %6, align 8
  %28 = load %struct.cfq_group*, %struct.cfq_group** %6, align 8
  %29 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CFQ_IDLE_DELAY, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %34 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %41

35:                                               ; preds = %19
  %36 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %5, align 8
  %37 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %40 = getelementptr inbounds %struct.cfq_group, %struct.cfq_group* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %35, %25
  %42 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %5, align 8
  %43 = load %struct.cfq_group*, %struct.cfq_group** %4, align 8
  %44 = call i32 @cfq_group_service_tree_add(%struct.cfq_rb_root* %42, %struct.cfq_group* %43)
  br label %45

45:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local %struct.rb_node* @rb_last(i32*) #1

declare dso_local %struct.cfq_group* @rb_entry_cfqg(%struct.rb_node*) #1

declare dso_local i32 @cfq_group_service_tree_add(%struct.cfq_rb_root*, %struct.cfq_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
