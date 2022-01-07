; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vtime.c_prepare_vtimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vtime.c_prepare_vtimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtimer_list = type { i64, i32, i32 }

@VTIMER_MAX_SLICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtimer_list*)* @prepare_vtimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_vtimer(%struct.vtimer_list* %0) #0 {
  %2 = alloca %struct.vtimer_list*, align 8
  store %struct.vtimer_list* %0, %struct.vtimer_list** %2, align 8
  %3 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %4 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %11 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %16 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VTIMER_MAX_SLICE, align 8
  %19 = icmp sgt i64 %17, %18
  br label %20

20:                                               ; preds = %14, %1
  %21 = phi i1 [ true, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %25 = call i32 @vtimer_pending(%struct.vtimer_list* %24)
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = call i32 (...) @get_cpu()
  %28 = load %struct.vtimer_list*, %struct.vtimer_list** %2, align 8
  %29 = getelementptr inbounds %struct.vtimer_list, %struct.vtimer_list* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vtimer_pending(%struct.vtimer_list*) #1

declare dso_local i32 @get_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
