; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_verify_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_verify_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ips_driver*)* @verify_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_limits(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %3 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %4 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %7 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %5, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %14 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 35000
  br i1 %16, label %17, label %25

17:                                               ; preds = %12, %1
  %18 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %19 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %24 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %27 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %30 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %25
  %36 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %37 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %40 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %47 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 150
  br i1 %49, label %50, label %64

50:                                               ; preds = %45, %35, %25
  %51 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %52 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %57 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @min(i32 %55, i32 %60)
  %62 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %63 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %50, %45
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
