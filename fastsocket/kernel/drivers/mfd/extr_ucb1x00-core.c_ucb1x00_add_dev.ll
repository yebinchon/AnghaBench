; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_add_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32 }
%struct.ucb1x00_driver = type { i32 (%struct.ucb1x00_dev*)*, i32 }
%struct.ucb1x00_dev = type opaque
%struct.ucb1x00_dev.0 = type { i32, i32, %struct.ucb1x00_driver*, %struct.ucb1x00* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00*, %struct.ucb1x00_driver*)* @ucb1x00_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_add_dev(%struct.ucb1x00* %0, %struct.ucb1x00_driver* %1) #0 {
  %3 = alloca %struct.ucb1x00*, align 8
  %4 = alloca %struct.ucb1x00_driver*, align 8
  %5 = alloca %struct.ucb1x00_dev.0*, align 8
  %6 = alloca i32, align 4
  store %struct.ucb1x00* %0, %struct.ucb1x00** %3, align 8
  store %struct.ucb1x00_driver* %1, %struct.ucb1x00_driver** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ucb1x00_dev.0* @kmalloc(i32 24, i32 %9)
  store %struct.ucb1x00_dev.0* %10, %struct.ucb1x00_dev.0** %5, align 8
  %11 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %12 = icmp ne %struct.ucb1x00_dev.0* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %2
  %14 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %15 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %16 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %15, i32 0, i32 3
  store %struct.ucb1x00* %14, %struct.ucb1x00** %16, align 8
  %17 = load %struct.ucb1x00_driver*, %struct.ucb1x00_driver** %4, align 8
  %18 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %19 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %18, i32 0, i32 2
  store %struct.ucb1x00_driver* %17, %struct.ucb1x00_driver** %19, align 8
  %20 = load %struct.ucb1x00_driver*, %struct.ucb1x00_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ucb1x00_driver, %struct.ucb1x00_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.ucb1x00_dev*)*, i32 (%struct.ucb1x00_dev*)** %21, align 8
  %23 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %24 = bitcast %struct.ucb1x00_dev.0* %23 to %struct.ucb1x00_dev*
  %25 = call i32 %22(%struct.ucb1x00_dev* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %13
  %29 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %30 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %29, i32 0, i32 1
  %31 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %32 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %31, i32 0, i32 0
  %33 = call i32 @list_add(i32* %30, i32* %32)
  %34 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %35 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %34, i32 0, i32 0
  %36 = load %struct.ucb1x00_driver*, %struct.ucb1x00_driver** %4, align 8
  %37 = getelementptr inbounds %struct.ucb1x00_driver, %struct.ucb1x00_driver* %36, i32 0, i32 1
  %38 = call i32 @list_add(i32* %35, i32* %37)
  br label %42

39:                                               ; preds = %13
  %40 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %5, align 8
  %41 = call i32 @kfree(%struct.ucb1x00_dev.0* %40)
  br label %42

42:                                               ; preds = %39, %28
  br label %43

43:                                               ; preds = %42, %2
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.ucb1x00_dev.0* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ucb1x00_dev.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
