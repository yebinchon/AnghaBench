; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_update_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i64, i32* }
%struct.request = type { i32 }

@ANTIC_WAIT_REQ = common dso_local global i64 0, align 8
@ANTIC_WAIT_NEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*, %struct.request*)* @as_update_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_update_rq(%struct.as_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.as_data*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.as_data* %0, %struct.as_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i32 @rq_is_sync(%struct.request* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.as_data*, %struct.as_data** %3, align 8
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = load %struct.as_data*, %struct.as_data** %3, align 8
  %11 = getelementptr inbounds %struct.as_data, %struct.as_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @as_choose_req(%struct.as_data* %8, %struct.request* %9, i32 %16)
  %18 = load %struct.as_data*, %struct.as_data** %3, align 8
  %19 = getelementptr inbounds %struct.as_data, %struct.as_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load %struct.as_data*, %struct.as_data** %3, align 8
  %25 = getelementptr inbounds %struct.as_data, %struct.as_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ANTIC_WAIT_REQ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.as_data*, %struct.as_data** %3, align 8
  %31 = getelementptr inbounds %struct.as_data, %struct.as_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ANTIC_WAIT_NEXT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29, %2
  %36 = load %struct.as_data*, %struct.as_data** %3, align 8
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = call i64 @as_can_break_anticipation(%struct.as_data* %36, %struct.request* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.as_data*, %struct.as_data** %3, align 8
  %42 = call i32 @as_antic_stop(%struct.as_data* %41)
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %29
  ret void
}

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @as_choose_req(%struct.as_data*, %struct.request*, i32) #1

declare dso_local i64 @as_can_break_anticipation(%struct.as_data*, %struct.request*) #1

declare dso_local i32 @as_antic_stop(%struct.as_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
