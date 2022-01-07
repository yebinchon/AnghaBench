; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_nop_do.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_nop_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.ccw_request }
%struct.ccw_request = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.subchannel = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*)* @nop_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nop_do(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.ccw_request*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.subchannel* @to_subchannel(i32 %8)
  store %struct.subchannel* %9, %struct.subchannel** %3, align 8
  %10 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %11 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  store %struct.ccw_request* %13, %struct.ccw_request** %4, align 8
  %14 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %21, %24
  %26 = call i32 @lpm_adjust(i32 %16, i32 %25)
  %27 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %28 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ccw_request*, %struct.ccw_request** %4, align 8
  %30 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %36 = call i32 @nop_build_cp(%struct.ccw_device* %35)
  %37 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %38 = call i32 @ccw_request_start(%struct.ccw_device* %37)
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %41 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %42 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  %51 = call i32 @verify_done(%struct.ccw_device* %40, i32 %50)
  br label %52

52:                                               ; preds = %49, %34
  ret void
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local i32 @lpm_adjust(i32, i32) #1

declare dso_local i32 @nop_build_cp(%struct.ccw_device*) #1

declare dso_local i32 @ccw_request_start(%struct.ccw_device*) #1

declare dso_local i32 @verify_done(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
