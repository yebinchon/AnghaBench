; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_del_rq_rb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_del_rq_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.cfq_queue = type { i32*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @cfq_del_rq_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_del_rq_rb(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = call %struct.cfq_queue* @RQ_CFQQ(%struct.request* %5)
  store %struct.cfq_queue* %6, %struct.cfq_queue** %3, align 8
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = call i32 @rq_is_sync(%struct.request* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %10 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %21 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %29 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %28, i32 0, i32 2
  %30 = load %struct.request*, %struct.request** %2, align 8
  %31 = call i32 @elv_rb_del(i32* %29, %struct.request* %30)
  %32 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %33 = call i64 @cfq_cfqq_on_rr(%struct.cfq_queue* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %1
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %37 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %36, i32 0, i32 2
  %38 = call i64 @RB_EMPTY_ROOT(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %42 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %47 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %46, i32 0, i32 1
  %48 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %49 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @rb_erase(i32* %47, i32* %50)
  %52 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %53 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %45, %40
  br label %55

55:                                               ; preds = %54, %35, %1
  ret void
}

declare dso_local %struct.cfq_queue* @RQ_CFQQ(%struct.request*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @elv_rb_del(i32*, %struct.request*) #1

declare dso_local i64 @cfq_cfqq_on_rr(%struct.cfq_queue*) #1

declare dso_local i64 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
