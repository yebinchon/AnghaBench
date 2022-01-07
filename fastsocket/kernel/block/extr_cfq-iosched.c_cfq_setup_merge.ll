; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_setup_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_setup_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { i32, %struct.cfq_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_queue*, %struct.cfq_queue*)* @cfq_setup_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_setup_merge(%struct.cfq_queue* %0, %struct.cfq_queue* %1) #0 {
  %3 = alloca %struct.cfq_queue*, align 8
  %4 = alloca %struct.cfq_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfq_queue*, align 8
  store %struct.cfq_queue* %0, %struct.cfq_queue** %3, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %4, align 8
  %8 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %9 = call i32 @cfqq_process_refs(%struct.cfq_queue* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %58

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %23, %12
  %14 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %15 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %14, i32 0, i32 1
  %16 = load %struct.cfq_queue*, %struct.cfq_queue** %15, align 8
  store %struct.cfq_queue* %16, %struct.cfq_queue** %7, align 8
  %17 = icmp ne %struct.cfq_queue* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  %20 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %21 = icmp eq %struct.cfq_queue* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %58

23:                                               ; preds = %18
  %24 = load %struct.cfq_queue*, %struct.cfq_queue** %7, align 8
  store %struct.cfq_queue* %24, %struct.cfq_queue** %4, align 8
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %27 = call i32 @cfqq_process_refs(%struct.cfq_queue* %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %29 = call i32 @cfqq_process_refs(%struct.cfq_queue* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %25
  br label %58

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %42 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %43 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %42, i32 0, i32 1
  store %struct.cfq_queue* %41, %struct.cfq_queue** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %46 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %58

49:                                               ; preds = %36
  %50 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %51 = load %struct.cfq_queue*, %struct.cfq_queue** %4, align 8
  %52 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %51, i32 0, i32 1
  store %struct.cfq_queue* %50, %struct.cfq_queue** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cfq_queue*, %struct.cfq_queue** %3, align 8
  %55 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %11, %22, %35, %49, %40
  ret void
}

declare dso_local i32 @cfqq_process_refs(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
