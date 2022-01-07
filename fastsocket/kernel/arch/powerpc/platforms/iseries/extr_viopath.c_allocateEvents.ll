; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_viopath.c_allocateEvents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_viopath.c_allocateEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_parms = type { i32, i32, i32, i32 }

@system_state = common dso_local global i64 0, align 8
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@HvLpEvent_Type_VirtualIo = common dso_local global i32 0, align 4
@viopath_donealloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @allocateEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocateEvents(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.alloc_parms, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @system_state, align 8
  %7 = load i64, i64* @SYSTEM_RUNNING, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 3
  %12 = call i32 @atomic_set(i32* %11, i32 1)
  br label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 2
  %16 = call i32 @init_completion(i32* %15)
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HvLpEvent_Type_VirtualIo, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @mf_allocate_lp_events(i32 %18, i32 %19, i32 250, i32 %20, i32* @viopath_donealloc, %struct.alloc_parms* %5)
  %22 = load i64, i64* @system_state, align 8
  %23 = load i64, i64* @SYSTEM_RUNNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %30, %25
  %27 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 3
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (...) @mb()
  br label %26

32:                                               ; preds = %26
  br label %36

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 2
  %35 = call i32 @wait_for_completion(i32* %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = getelementptr inbounds %struct.alloc_parms, %struct.alloc_parms* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  ret i32 %38
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mf_allocate_lp_events(i32, i32, i32, i32, i32*, %struct.alloc_parms*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
