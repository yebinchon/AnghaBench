; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_del_cfqq_rr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_del_cfqq_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i32, i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"del_from_rr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*)* @cfq_del_cfqq_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_del_cfqq_rr(%struct.cfq_data* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_data*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %5 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %6 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %7 = call i32 @cfq_log_cfqq(%struct.cfq_data* %5, %struct.cfq_queue* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %9 = call i32 @cfq_cfqq_on_rr(%struct.cfq_queue* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %15 = call i32 @cfq_clear_cfqq_on_rr(%struct.cfq_queue* %14)
  %16 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %17 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %16, i32 0, i32 4
  %18 = call i32 @RB_EMPTY_NODE(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %22 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %21, i32 0, i32 4
  %23 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %24 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @cfq_rb_erase(i32* %22, i32* %25)
  %27 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %28 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %31 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %36 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %35, i32 0, i32 2
  %37 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %38 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @rb_erase(i32* %36, i32* %39)
  %41 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %42 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %34, %29
  %44 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %45 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %46 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cfq_group_notify_queue_del(%struct.cfq_data* %44, i32 %47)
  %49 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %50 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.cfq_data*, %struct.cfq_data** %3, align 8
  %57 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  ret void
}

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfq_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @cfq_rb_erase(i32*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @cfq_group_notify_queue_del(%struct.cfq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
