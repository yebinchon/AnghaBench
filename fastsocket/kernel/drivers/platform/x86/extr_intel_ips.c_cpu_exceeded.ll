; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_cpu_exceeded.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_cpu_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"CPU power or thermal limit exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ips_driver*, i32)* @cpu_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_exceeded(%struct.ips_driver* %0, i32 %1) #0 {
  %3 = alloca %struct.ips_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %9 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %8, i32 0, i32 5
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %16 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %20 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %17, %14 ], [ %21, %18 ]
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %26 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %25, i32 0, i32 6
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 100
  %31 = icmp sgt i32 %24, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %35 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %38 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 100
  %41 = icmp sgt i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %45 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %44, i32 0, i32 5
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.ips_driver*, %struct.ips_driver** %3, align 8
  %52 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
