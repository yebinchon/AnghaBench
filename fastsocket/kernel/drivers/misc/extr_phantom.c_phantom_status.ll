; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_phantom.c_phantom_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_phantom.c_phantom_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phantom_device = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"phantom_status %lx %lx\0A\00", align 1
@PHB_RUNNING = common dso_local global i64 0, align 8
@PHN_CTL_IRQ = common dso_local global i32 0, align 4
@PHN_CONTROL = common dso_local global i64 0, align 8
@PHN_IRQCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phantom_device*, i64)* @phantom_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phantom_status(%struct.phantom_device* %0, i64 %1) #0 {
  %3 = alloca %struct.phantom_device*, align 8
  %4 = alloca i64, align 8
  store %struct.phantom_device* %0, %struct.phantom_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %6 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8)
  %10 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %11 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PHB_RUNNING, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PHB_RUNNING, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %23 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %22, i32 0, i32 3
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  %25 = load i32, i32* @PHN_CTL_IRQ, align 4
  %26 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %27 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PHN_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 %25, i64 %30)
  %32 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %33 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PHN_IRQCTL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @iowrite32(i32 67, i64 %36)
  %38 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %39 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PHN_IRQCTL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @ioread32(i64 %42)
  br label %70

44:                                               ; preds = %16, %2
  %45 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %46 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PHB_RUNNING, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @PHB_RUNNING, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %51
  %57 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %58 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PHN_IRQCTL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32(i32 0, i64 %61)
  %63 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %64 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PHN_IRQCTL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @ioread32(i64 %67)
  br label %69

69:                                               ; preds = %56, %51, %44
  br label %70

70:                                               ; preds = %69, %21
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %73 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
