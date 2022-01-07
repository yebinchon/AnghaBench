; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_antic_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32, i32, i32, i32 }

@ANTIC_WAIT_REQ = common dso_local global i32 0, align 4
@ANTIC_WAIT_NEXT = common dso_local global i32 0, align 4
@ANTIC_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.as_data*)* @as_antic_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_antic_stop(%struct.as_data* %0) #0 {
  %2 = alloca %struct.as_data*, align 8
  %3 = alloca i32, align 4
  store %struct.as_data* %0, %struct.as_data** %2, align 8
  %4 = load %struct.as_data*, %struct.as_data** %2, align 8
  %5 = getelementptr inbounds %struct.as_data, %struct.as_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ANTIC_WAIT_REQ, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ANTIC_WAIT_NEXT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ANTIC_WAIT_NEXT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load %struct.as_data*, %struct.as_data** %2, align 8
  %20 = getelementptr inbounds %struct.as_data, %struct.as_data* %19, i32 0, i32 3
  %21 = call i32 @del_timer(i32* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @ANTIC_FINISHED, align 4
  %24 = load %struct.as_data*, %struct.as_data** %2, align 8
  %25 = getelementptr inbounds %struct.as_data, %struct.as_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.as_data*, %struct.as_data** %2, align 8
  %27 = getelementptr inbounds %struct.as_data, %struct.as_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.as_data*, %struct.as_data** %2, align 8
  %30 = getelementptr inbounds %struct.as_data, %struct.as_data* %29, i32 0, i32 1
  %31 = call i32 @kblockd_schedule_work(i32 %28, i32* %30)
  br label %32

32:                                               ; preds = %22, %10
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @kblockd_schedule_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
