; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hostess_sv11.c_sv11_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hostess_sv11.c_sv11_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@dma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_dev*)* @sv11_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sv11_shutdown(%struct.z8530_dev* %0) #0 {
  %2 = alloca %struct.z8530_dev*, align 8
  store %struct.z8530_dev* %0, %struct.z8530_dev** %2, align 8
  %3 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %4 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @unregister_hdlc_device(i32 %6)
  %8 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %9 = call i32 @z8530_shutdown(%struct.z8530_dev* %8)
  %10 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %11 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %14 = call i32 @free_irq(i32 %12, %struct.z8530_dev* %13)
  %15 = load i32, i32* @dma, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @dma, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %22 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @free_dma(i32 %24)
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %28 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @free_dma(i32 %30)
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %34 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @release_region(i64 %37, i32 8)
  %39 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %40 = getelementptr inbounds %struct.z8530_dev, %struct.z8530_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @free_netdev(i32 %42)
  %44 = load %struct.z8530_dev*, %struct.z8530_dev** %2, align 8
  %45 = call i32 @kfree(%struct.z8530_dev* %44)
  ret void
}

declare dso_local i32 @unregister_hdlc_device(i32) #1

declare dso_local i32 @z8530_shutdown(%struct.z8530_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.z8530_dev*) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @free_netdev(i32) #1

declare dso_local i32 @kfree(%struct.z8530_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
