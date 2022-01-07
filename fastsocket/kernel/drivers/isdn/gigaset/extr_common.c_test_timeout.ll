; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_test_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_test_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, i32, i64 }

@DEBUG_MCMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"decreased timer of %p to %lu\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at_state_t*)* @test_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_timeout(%struct.at_state_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at_state_t*, align 8
  store %struct.at_state_t* %0, %struct.at_state_t** %3, align 8
  %4 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %5 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %11 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, i32* @DEBUG_MCMD, align 4
  %17 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %18 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %19 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @gig_dbg(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.at_state_t* %17, i64 %20)
  store i32 0, i32* %2, align 4
  br label %35

22:                                               ; preds = %9
  %23 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %24 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %27 = load i32, i32* @EV_TIMEOUT, align 4
  %28 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %29 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gigaset_add_event(i32 %25, %struct.at_state_t* %26, i32 %27, i32* null, i32 %30, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %22
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %15, %8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @gig_dbg(i32, i8*, %struct.at_state_t*, i64) #1

declare dso_local i32 @gigaset_add_event(i32, %struct.at_state_t*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
