; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_hook_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_hook_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@sh_mobile_i2c_isr = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @sh_mobile_i2c_hook_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %50, %2
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = load i32, i32* @IORESOURCE_IRQ, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %15, i32 %16, i32 %17)
  store %struct.resource* %18, %struct.resource** %6, align 8
  %19 = icmp ne %struct.resource* %18, null
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %47, %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.resource*, %struct.resource** %6, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @sh_mobile_i2c_isr, align 4
  %38 = load i32, i32* @IRQF_DISABLED, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_name(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = call i64 @request_irq(i32 %36, i32 %37, i32 %38, i32 %41, %struct.platform_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %68

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %24

50:                                               ; preds = %33
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %14

53:                                               ; preds = %14
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  br label %63

63:                                               ; preds = %60, %59
  %64 = phi i32 [ 0, %59 ], [ %62, %60 ]
  store i32 %64, i32* %3, align 4
  br label %102

65:                                               ; preds = %53
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %45
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %97, %68
  %71 = load i32, i32* %10, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %85, %73
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %84 = call i32 @free_irq(i32 %82, %struct.platform_device* %83)
  br label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %90 = load i32, i32* @IORESOURCE_IRQ, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call %struct.resource* @platform_get_resource(%struct.platform_device* %89, i32 %90, i32 %92)
  store %struct.resource* %93, %struct.resource** %6, align 8
  %94 = load %struct.resource*, %struct.resource** %6, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %10, align 4
  br label %70

100:                                              ; preds = %70
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %63
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
