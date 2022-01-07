; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_disable_gpu_turbo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_disable_gpu_turbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, %struct.TYPE_2__*, i32 (...)* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to disable graphis turbo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ips_driver*)* @ips_disable_gpu_turbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_disable_gpu_turbo(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %3 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %4 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %10 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %9, i32 0, i32 2
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %16 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %23

20:                                               ; preds = %8
  %21 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %22 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %7, %20, %14
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
