; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_turnaround_delay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_turnaround_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stir_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timeval = type { i64, i64 }

@USEC_PER_SEC = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stir_cb*, i64)* @turnaround_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnaround_delay(%struct.stir_cb* %0, i64 %1) #0 {
  %3 = alloca %struct.stir_cb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct.stir_cb* %0, %struct.stir_cb** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %53

10:                                               ; preds = %2
  %11 = call i32 @do_gettimeofday(%struct.timeval* %6)
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %15 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %13, %17
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load i64, i64* @USEC_PER_SEC, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %20, %10
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %28 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %26, %30
  %32 = load i64, i64* %4, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp slt i64 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %53

37:                                               ; preds = %24
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 1000000, %39
  %41 = sext i32 %40 to i64
  %42 = sdiv i64 %38, %41
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 1, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @schedule_timeout_interruptible(i32 %48)
  br label %53

50:                                               ; preds = %37
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @udelay(i64 %51)
  br label %53

53:                                               ; preds = %9, %36, %50, %45
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @udelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
