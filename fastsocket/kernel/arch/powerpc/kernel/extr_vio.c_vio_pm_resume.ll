; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vio.c_vio_pm_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vio.c_vio_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vio_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vio_pm_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_pm_ops*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %13, align 8
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi %struct.dev_pm_ops* [ %14, %9 ], [ null, %15 ]
  store %struct.dev_pm_ops* %17, %struct.dev_pm_ops** %4, align 8
  %18 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %4, align 8
  %19 = icmp ne %struct.dev_pm_ops* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %4, align 8
  %22 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.device*)**
  %24 = load i32 (%struct.device*)*, i32 (%struct.device*)** %23, align 8
  %25 = icmp ne i32 (%struct.device*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.dev_pm_ops*, %struct.dev_pm_ops** %4, align 8
  %28 = getelementptr inbounds %struct.dev_pm_ops, %struct.dev_pm_ops* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.device*)**
  %30 = load i32 (%struct.device*)*, i32 (%struct.device*)** %29, align 8
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 %30(%struct.device* %31)
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %20, %16
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
