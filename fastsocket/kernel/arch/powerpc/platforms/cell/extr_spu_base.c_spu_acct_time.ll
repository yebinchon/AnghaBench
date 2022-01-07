; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c_spu_acct_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_spu_base.c_spu_acct_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32, i64 }
%struct.timespec = type { i32 }

@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.spu*, i32)* @spu_acct_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spu_acct_time(%struct.spu* %0, i32 %1) #0 {
  %3 = alloca %struct.spu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec, align 4
  %6 = alloca i64, align 8
  store %struct.spu* %0, %struct.spu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spu*, %struct.spu** %3, align 8
  %8 = getelementptr inbounds %struct.spu, %struct.spu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.spu*, %struct.spu** %3, align 8
  %16 = getelementptr inbounds %struct.spu, %struct.spu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = call i32 @ktime_get_ts(%struct.timespec* %5)
  %23 = call i64 @timespec_to_ns(%struct.timespec* %5)
  %24 = load %struct.spu*, %struct.spu** %3, align 8
  %25 = getelementptr inbounds %struct.spu, %struct.spu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %23, %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %21, %2
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @NSEC_PER_MSEC, align 8
  %34 = udiv i64 %32, %33
  ret i64 %34
}

declare dso_local i32 @ktime_get_ts(%struct.timespec*) #1

declare dso_local i64 @timespec_to_ns(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
