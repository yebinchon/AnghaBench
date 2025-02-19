; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_tsince_hr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_tsince_hr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.frame*)* @tsince_hr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsince_hr(%struct.frame* %0) #0 {
  %2 = alloca %struct.frame*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %2, align 8
  %5 = call i32 @do_gettimeofday(%struct.timeval* %3)
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.frame*, %struct.frame** %2, align 8
  %9 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %7, %11
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.frame*, %struct.frame** %2, align 8
  %16 = getelementptr inbounds %struct.frame, %struct.frame* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  %20 = load i32, i32* @USEC_PER_SEC, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @USEC_PER_SEC, align 4
  %32 = sdiv i32 %31, 4
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i64, i64* @jiffies, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.frame*, %struct.frame** %2, align 8
  %38 = getelementptr inbounds %struct.frame, %struct.frame* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* @USEC_PER_SEC, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = sdiv i32 %41, %42
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
