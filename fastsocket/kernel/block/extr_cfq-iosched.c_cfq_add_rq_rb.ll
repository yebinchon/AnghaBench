; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_add_rq_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_add_rq_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.cfq_queue = type { %struct.request*, i32, i32*, %struct.cfq_data* }
%struct.cfq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @cfq_add_rq_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_add_rq_rb(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %6)
  store %struct.cfq_queue* %7, %struct.cfq_queue** %3, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %9 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %8, i32 0, i32 3
  %10 = load %struct.cfq_data*, %struct.cfq_data** %9, align 8
  store %struct.cfq_data* %10, %struct.cfq_data** %4, align 8
  %11 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %12 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = call i64 @rq_is_sync(%struct.request* %14)
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %20 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %19, i32 0, i32 1
  %21 = load %struct.request*, %struct.request** %2, align 8
  %22 = call i32 @elv_rb_add(i32* %20, %struct.request* %21)
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %24 = call i32 @cfq_cfqq_on_rr(%struct.cfq_queue* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %28 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %29 = call i32 @cfq_add_cfqq_rr(%struct.cfq_data* %27, %struct.cfq_queue* %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %32 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %31, i32 0, i32 0
  %33 = load %struct.request*, %struct.request** %32, align 8
  store %struct.request* %33, %struct.request** %5, align 8
  %34 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %35 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %36 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %35, i32 0, i32 0
  %37 = load %struct.request*, %struct.request** %36, align 8
  %38 = load %struct.request*, %struct.request** %2, align 8
  %39 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %40 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.request* @cfq_choose_req(%struct.cfq_data* %34, %struct.request* %37, %struct.request* %38, i32 %41)
  %43 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %44 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %43, i32 0, i32 0
  store %struct.request* %42, %struct.request** %44, align 8
  %45 = load %struct.request*, %struct.request** %5, align 8
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %47 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %46, i32 0, i32 0
  %48 = load %struct.request*, %struct.request** %47, align 8
  %49 = icmp ne %struct.request* %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %30
  %51 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %52 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %53 = call i32 @cfq_prio_tree_add(%struct.cfq_data* %51, %struct.cfq_queue* %52)
  br label %54

54:                                               ; preds = %50, %30
  %55 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %56 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %55, i32 0, i32 0
  %57 = load %struct.request*, %struct.request** %56, align 8
  %58 = icmp ne %struct.request* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i64 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @elv_rb_add(i32*, %struct.request*) #1

declare dso_local i32 @cfq_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_add_cfqq_rr(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local %struct.request* @cfq_choose_req(%struct.cfq_data*, %struct.request*, %struct.request*, i32) #1

declare dso_local i32 @cfq_prio_tree_add(%struct.cfq_data*, %struct.cfq_queue*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
