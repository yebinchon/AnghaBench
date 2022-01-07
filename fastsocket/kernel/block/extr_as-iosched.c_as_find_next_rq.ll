; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_find_next_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_find_next_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32* }
%struct.request = type { %struct.rb_node }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.as_data*, %struct.request*)* @as_find_next_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @as_find_next_rq(%struct.as_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.as_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.as_data* %0, %struct.as_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = call %struct.rb_node* @rb_next(%struct.rb_node* %11)
  store %struct.rb_node* %12, %struct.rb_node** %5, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 0
  %15 = call %struct.rb_node* @rb_prev(%struct.rb_node* %14)
  store %struct.rb_node* %15, %struct.rb_node** %6, align 8
  store %struct.request* null, %struct.request** %7, align 8
  store %struct.request* null, %struct.request** %8, align 8
  %16 = load %struct.request*, %struct.request** %4, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 0
  %18 = call i32 @RB_EMPTY_NODE(%struct.rb_node* %17)
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %21 = icmp ne %struct.rb_node* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = call %struct.request* @rb_entry_rq(%struct.rb_node* %23)
  store %struct.request* %24, %struct.request** %8, align 8
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %27 = icmp ne %struct.rb_node* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %30 = call %struct.request* @rb_entry_rq(%struct.rb_node* %29)
  store %struct.request* %30, %struct.request** %7, align 8
  br label %52

31:                                               ; preds = %25
  %32 = load %struct.request*, %struct.request** %4, align 8
  %33 = call i32 @rq_is_sync(%struct.request* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.as_data*, %struct.as_data** %3, align 8
  %35 = getelementptr inbounds %struct.as_data, %struct.as_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call %struct.rb_node* @rb_first(i32* %39)
  store %struct.rb_node* %40, %struct.rb_node** %5, align 8
  %41 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %42 = icmp ne %struct.rb_node* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 0
  %47 = icmp ne %struct.rb_node* %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %50 = call %struct.request* @rb_entry_rq(%struct.rb_node* %49)
  store %struct.request* %50, %struct.request** %7, align 8
  br label %51

51:                                               ; preds = %48, %43, %31
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.as_data*, %struct.as_data** %3, align 8
  %54 = load %struct.request*, %struct.request** %7, align 8
  %55 = load %struct.request*, %struct.request** %8, align 8
  %56 = call %struct.request* @as_choose_req(%struct.as_data* %53, %struct.request* %54, %struct.request* %55)
  ret %struct.request* %56
}

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_prev(%struct.rb_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(%struct.rb_node*) #1

declare dso_local %struct.request* @rb_entry_rq(%struct.rb_node*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.request* @as_choose_req(%struct.as_data*, %struct.request*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
