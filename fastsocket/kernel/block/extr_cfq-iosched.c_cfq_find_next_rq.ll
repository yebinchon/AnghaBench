; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_find_next_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_find_next_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i32 }
%struct.request = type { %struct.rb_node }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.cfq_data*, %struct.cfq_queue*, %struct.request*)* @cfq_find_next_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @cfq_find_next_rq(%struct.cfq_data* %0, %struct.cfq_queue* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.request*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = call %struct.rb_node* @rb_next(%struct.rb_node* %12)
  store %struct.rb_node* %13, %struct.rb_node** %7, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = call %struct.rb_node* @rb_prev(%struct.rb_node* %15)
  store %struct.rb_node* %16, %struct.rb_node** %8, align 8
  store %struct.request* null, %struct.request** %9, align 8
  store %struct.request* null, %struct.request** %10, align 8
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = call i32 @RB_EMPTY_NODE(%struct.rb_node* %18)
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %22 = icmp ne %struct.rb_node* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %25 = call %struct.request* @rb_entry_rq(%struct.rb_node* %24)
  store %struct.request* %25, %struct.request** %10, align 8
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %28 = icmp ne %struct.rb_node* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %31 = call %struct.request* @rb_entry_rq(%struct.rb_node* %30)
  store %struct.request* %31, %struct.request** %9, align 8
  br label %47

32:                                               ; preds = %26
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %34 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %33, i32 0, i32 0
  %35 = call %struct.rb_node* @rb_first(i32* %34)
  store %struct.rb_node* %35, %struct.rb_node** %7, align 8
  %36 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %37 = icmp ne %struct.rb_node* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = getelementptr inbounds %struct.request, %struct.request* %40, i32 0, i32 0
  %42 = icmp ne %struct.rb_node* %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %45 = call %struct.request* @rb_entry_rq(%struct.rb_node* %44)
  store %struct.request* %45, %struct.request** %9, align 8
  br label %46

46:                                               ; preds = %43, %38, %32
  br label %47

47:                                               ; preds = %46, %29
  %48 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %49 = load %struct.request*, %struct.request** %9, align 8
  %50 = load %struct.request*, %struct.request** %10, align 8
  %51 = load %struct.request*, %struct.request** %6, align 8
  %52 = call i32 @blk_rq_pos(%struct.request* %51)
  %53 = call %struct.request* @cfq_choose_req(%struct.cfq_data* %48, %struct.request* %49, %struct.request* %50, i32 %52)
  ret %struct.request* %53
}

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(%struct.rb_node*) #1

declare dso_local %struct.request* @rb_entry_rq(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.request* @cfq_choose_req(%struct.cfq_data*, %struct.request*, %struct.request*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
