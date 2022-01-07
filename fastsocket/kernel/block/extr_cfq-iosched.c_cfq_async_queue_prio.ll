; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_async_queue_prio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_async_queue_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_queue = type { i32 }
%struct.cfq_data = type { %struct.cfq_queue*, %struct.cfq_queue*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_queue** (%struct.cfq_data*, i32, i32)* @cfq_async_queue_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_queue** @cfq_async_queue_prio(%struct.cfq_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cfq_queue**, align 8
  %5 = alloca %struct.cfq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %30 [
    i32 128, label %9
    i32 130, label %18
    i32 129, label %27
  ]

9:                                                ; preds = %3
  %10 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %11 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %10, i32 0, i32 1
  %12 = load %struct.cfq_queue***, %struct.cfq_queue**** %11, align 8
  %13 = getelementptr inbounds %struct.cfq_queue**, %struct.cfq_queue*** %12, i64 0
  %14 = load %struct.cfq_queue**, %struct.cfq_queue*** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %14, i64 %16
  store %struct.cfq_queue** %17, %struct.cfq_queue*** %4, align 8
  br label %32

18:                                               ; preds = %3
  %19 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %20 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %19, i32 0, i32 1
  %21 = load %struct.cfq_queue***, %struct.cfq_queue**** %20, align 8
  %22 = getelementptr inbounds %struct.cfq_queue**, %struct.cfq_queue*** %21, i64 1
  %23 = load %struct.cfq_queue**, %struct.cfq_queue*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %23, i64 %25
  store %struct.cfq_queue** %26, %struct.cfq_queue*** %4, align 8
  br label %32

27:                                               ; preds = %3
  %28 = load %struct.cfq_data*, %struct.cfq_data** %5, align 8
  %29 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %28, i32 0, i32 0
  store %struct.cfq_queue** %29, %struct.cfq_queue*** %4, align 8
  br label %32

30:                                               ; preds = %3
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %9, %18, %27, %30
  %33 = load %struct.cfq_queue**, %struct.cfq_queue*** %4, align 8
  ret %struct.cfq_queue** %33
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
