; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.vpfe_device = type { i32 }

@numbuffers = common dso_local global i64 0, align 8
@config_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bufsize = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vpfe_device* ()* @vpfe_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vpfe_device* @vpfe_initialize() #0 {
  %1 = alloca %struct.vpfe_device*, align 8
  %2 = load i64, i64* @numbuffers, align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i64, i64* @numbuffers, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 0), align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 0), align 8
  store i64 %9, i64* @numbuffers, align 8
  br label %10

10:                                               ; preds = %8, %4, %0
  %11 = load i64, i64* @bufsize, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 1), align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 1), align 8
  store i64 %15, i64* @bufsize, align 8
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i64, i64* @numbuffers, align 8
  store i64 %17, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 3), align 8
  %18 = load i64, i64* @numbuffers, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @bufsize, align 8
  store i64 %21, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config_params, i32 0, i32 2), align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.vpfe_device* @kzalloc(i32 4, i32 %23)
  store %struct.vpfe_device* %24, %struct.vpfe_device** %1, align 8
  %25 = load %struct.vpfe_device*, %struct.vpfe_device** %1, align 8
  ret %struct.vpfe_device* %25
}

declare dso_local %struct.vpfe_device* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
