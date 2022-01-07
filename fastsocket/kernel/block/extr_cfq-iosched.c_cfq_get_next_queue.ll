; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_next_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_get_next_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { i32 }
%struct.cfq_data = type { i32, i32, i32, i32 }
%struct.cfq_rb_root = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue* (%struct.cfq_data*)* @cfq_get_next_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue* @cfq_get_next_queue(%struct.cfq_data* %0) #0 {
  %2 = alloca %struct.cfq_queue*, align 8
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_rb_root*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  %5 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %6 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %9 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %12 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cfq_rb_root* @service_tree_for(i32 %7, i32 %10, i32 %13)
  store %struct.cfq_rb_root* %14, %struct.cfq_rb_root** %4, align 8
  %15 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %16 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.cfq_queue* null, %struct.cfq_queue** %2, align 8
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %22 = icmp ne %struct.cfq_rb_root* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store %struct.cfq_queue* null, %struct.cfq_queue** %2, align 8
  br label %33

24:                                               ; preds = %20
  %25 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %26 = getelementptr inbounds %struct.cfq_rb_root, %struct.cfq_rb_root* %25, i32 0, i32 0
  %27 = call i64 @RB_EMPTY_ROOT(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.cfq_queue* null, %struct.cfq_queue** %2, align 8
  br label %33

30:                                               ; preds = %24
  %31 = load %struct.cfq_rb_root*, %struct.cfq_rb_root** %4, align 8
  %32 = call %struct.cfq_queue* @cfq_rb_first(%struct.cfq_rb_root* %31)
  store %struct.cfq_queue* %32, %struct.cfq_queue** %2, align 8
  br label %33

33:                                               ; preds = %30, %29, %23, %19
  %34 = load %struct.cfq_queue*, %struct.cfq_queue** %2, align 8
  ret %struct.cfq_queue* %34
}

declare dso_local %struct.cfq_rb_root* @service_tree_for(i32, i32, i32) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local %struct.cfq_queue* @cfq_rb_first(%struct.cfq_rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
