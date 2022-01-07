; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_at_breakpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_at_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpt = type { i64, i64 }

@bpts = common dso_local global %struct.bpt* null, align 8
@NBPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpt* (i64)* @at_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpt* @at_breakpoint(i64 %0) #0 {
  %2 = alloca %struct.bpt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpt*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load %struct.bpt*, %struct.bpt** @bpts, align 8
  store %struct.bpt* %6, %struct.bpt** %5, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NBPTS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.bpt*, %struct.bpt** %5, align 8
  %13 = getelementptr inbounds %struct.bpt, %struct.bpt* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.bpt*, %struct.bpt** %5, align 8
  %19 = getelementptr inbounds %struct.bpt, %struct.bpt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.bpt*, %struct.bpt** %5, align 8
  store %struct.bpt* %23, %struct.bpt** %2, align 8
  br label %31

24:                                               ; preds = %16, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = load %struct.bpt*, %struct.bpt** %5, align 8
  %29 = getelementptr inbounds %struct.bpt, %struct.bpt* %28, i32 1
  store %struct.bpt* %29, %struct.bpt** %5, align 8
  br label %7

30:                                               ; preds = %7
  store %struct.bpt* null, %struct.bpt** %2, align 8
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.bpt*, %struct.bpt** %2, align 8
  ret %struct.bpt* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
