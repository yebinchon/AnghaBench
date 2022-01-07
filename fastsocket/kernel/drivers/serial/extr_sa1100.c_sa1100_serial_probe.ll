; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_serial_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sa1100.c_sa1100_serial_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.platform_device = type { i32, i32, %struct.resource* }
%struct.resource = type { i32, i64 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@NR_PORTS = common dso_local global i32 0, align 4
@sa1100_ports = common dso_local global %struct.TYPE_5__* null, align 8
@sa1100_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100_serial_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_serial_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 2
  %7 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %7, %struct.resource** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.resource*, %struct.resource** %3, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %28

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.resource*, %struct.resource** %3, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 1
  store %struct.resource* %27, %struct.resource** %3, align 8
  br label %8

28:                                               ; preds = %21, %8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %73, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NR_PORTS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sa1100_ports, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.resource*, %struct.resource** %3, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %73

52:                                               ; preds = %39
  %53 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sa1100_ports, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32* %54, i32** %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sa1100_ports, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @uart_add_one_port(i32* @sa1100_reg, %struct.TYPE_4__* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sa1100_ports, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %67, %struct.TYPE_5__* %71)
  br label %76

73:                                               ; preds = %51
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %35

76:                                               ; preds = %52, %35
  br label %77

77:                                               ; preds = %76, %28
  ret i32 0
}

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
