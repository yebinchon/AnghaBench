; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_esw_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_status.c_ccw_device_accumulate_esw_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_STCTL_INTER_STATUS = common dso_local global i32 0, align 4
@SCSW_ACTL_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irb*)* @ccw_device_accumulate_esw_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_accumulate_esw_valid(%struct.irb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irb*, align 8
  store %struct.irb* %0, %struct.irb** %3, align 8
  %4 = load %struct.irb*, %struct.irb** %3, align 8
  %5 = getelementptr inbounds %struct.irb, %struct.irb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.irb*, %struct.irb** %3, align 8
  %12 = getelementptr inbounds %struct.irb, %struct.irb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %40

19:                                               ; preds = %10, %1
  %20 = load %struct.irb*, %struct.irb** %3, align 8
  %21 = getelementptr inbounds %struct.irb, %struct.irb* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SCSW_STCTL_INTER_STATUS, align 4
  %26 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.irb*, %struct.irb** %3, align 8
  %31 = getelementptr inbounds %struct.irb, %struct.irb* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SCSW_ACTL_SUSPENDED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %29, %19
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
