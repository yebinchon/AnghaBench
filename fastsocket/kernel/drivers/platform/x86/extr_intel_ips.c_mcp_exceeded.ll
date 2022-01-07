; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_mcp_exceeded.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_mcp_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"MCP limit exceeded: \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%sAvg temp %u, limit %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%sAvg power %u, limit %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ips_driver*)* @mcp_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_exceeded(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  store i32 0, i32* %4, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %9 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %8, i32 0, i32 5
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %13 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 100
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %17 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %1
  %22 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %23 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %28 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %29, i32 %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %21, %1
  %33 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %34 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %37 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %42 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %32
  %46 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %47 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %53 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51, i32 %54)
  store i32 1, i32* %4, align 4
  br label %56

56:                                               ; preds = %45, %32
  %57 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %58 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %57, i32 0, i32 5
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
