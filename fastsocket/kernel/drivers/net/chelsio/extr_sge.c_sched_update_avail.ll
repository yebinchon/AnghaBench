; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_sched_update_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_sched_update_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { %struct.sched* }
%struct.sched = type { i32, i32, %struct.sched_port* }
%struct.sched_port = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"sched_update_avail delta=%lld\0A\00", align 1
@MAX_NPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge*)* @sched_update_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_update_avail(%struct.sge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.sched*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sched_port*, align 8
  %9 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %3, align 8
  %10 = load %struct.sge*, %struct.sge** %3, align 8
  %11 = getelementptr inbounds %struct.sge, %struct.sge* %10, i32 0, i32 0
  %12 = load %struct.sched*, %struct.sched** %11, align 8
  store %struct.sched* %12, %struct.sched** %4, align 8
  %13 = call i32 (...) @get_clock()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.sched*, %struct.sched** %4, align 8
  %16 = getelementptr inbounds %struct.sched, %struct.sched* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ktime_sub(i32 %14, i32 %17)
  %19 = call i64 @ktime_to_ns(i32 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 15000
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

25:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MAX_NPORTS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %59

30:                                               ; preds = %26
  %31 = load %struct.sched*, %struct.sched** %4, align 8
  %32 = getelementptr inbounds %struct.sched, %struct.sched* %31, i32 0, i32 2
  %33 = load %struct.sched_port*, %struct.sched_port** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %33, i64 %35
  store %struct.sched_port* %36, %struct.sched_port** %8, align 8
  %37 = load %struct.sched_port*, %struct.sched_port** %8, align 8
  %38 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = mul nsw i64 %39, %40
  %42 = ashr i64 %41, 13
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.sched_port*, %struct.sched_port** %8, align 8
  %45 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.sched*, %struct.sched** %4, align 8
  %51 = getelementptr inbounds %struct.sched, %struct.sched* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @min(i64 %49, i32 %52)
  %54 = load %struct.sched_port*, %struct.sched_port** %8, align 8
  %55 = getelementptr inbounds %struct.sched_port, %struct.sched_port* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %30
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.sched*, %struct.sched** %4, align 8
  %62 = getelementptr inbounds %struct.sched, %struct.sched* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @get_clock(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
