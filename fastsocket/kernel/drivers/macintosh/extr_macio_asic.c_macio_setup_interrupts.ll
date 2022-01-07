; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_macio_asic.c_macio_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32, %struct.TYPE_2__, %struct.resource* }
%struct.TYPE_2__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32, i32, i32 }

@MACIO_DEV_COUNT_IRQS = common dso_local global i32 0, align 4
@NO_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macio_dev*)* @macio_setup_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macio_setup_interrupts(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %8 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %57, %51, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MACIO_DEV_COUNT_IRQS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %58

17:                                               ; preds = %12
  %18 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %19 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %18, i32 0, i32 2
  %20 = load %struct.resource*, %struct.resource** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %20, i64 %22
  store %struct.resource* %23, %struct.resource** %7, align 8
  %24 = load %struct.device_node*, %struct.device_node** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  %27 = call i32 @irq_of_parse_and_map(%struct.device_node* %24, i32 %25)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @NO_IRQ, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %58

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @IORESOURCE_IRQ, align 4
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %40 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_name(i32* %41)
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.device_node*, %struct.device_node** %3, align 8
  %46 = load %struct.resource*, %struct.resource** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i64 @macio_resource_quirks(%struct.device_node* %45, %struct.resource* %46, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %32
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = call i32 @memset(%struct.resource* %52, i32 0, i32 12)
  br label %12

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54
  br label %12

58:                                               ; preds = %31, %16
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %61 = getelementptr inbounds %struct.macio_dev, %struct.macio_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  ret void
}

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @macio_resource_quirks(%struct.device_node*, %struct.resource*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
