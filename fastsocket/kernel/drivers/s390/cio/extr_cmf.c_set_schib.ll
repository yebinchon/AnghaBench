; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_set_schib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cmf.c_set_schib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*, i32, i32, i64)* @set_schib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_schib(%struct.ccw_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ccw_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.subchannel*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %5, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.subchannel* @to_subchannel(i32 %13)
  store %struct.subchannel* %14, %struct.subchannel** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %17 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %21 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %28 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 %26, i64* %29, align 8
  br label %35

30:                                               ; preds = %4
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %33 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.subchannel*, %struct.subchannel** %9, align 8
  %37 = call i32 @cio_commit_config(%struct.subchannel* %36)
  ret i32 %37
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @cio_commit_config(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
