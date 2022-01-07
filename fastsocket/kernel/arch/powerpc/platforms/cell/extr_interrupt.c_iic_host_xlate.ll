; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_interrupt.c_iic_host_xlate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_interrupt.c_iic_host_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_host = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"IBM,CBEA-Internal-Interrupt-Controller\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IIC_IRQ_NODE_SHIFT = common dso_local global i32 0, align 4
@IIC_UNIT_IIC = common dso_local global i32 0, align 4
@IIC_IRQ_TYPE_IOEXC = common dso_local global i32 0, align 4
@IIC_IRQ_TYPE_NORMAL = common dso_local global i32 0, align 4
@IIC_IRQ_CLASS_SHIFT = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_host*, %struct.device_node*, i32*, i32, i32*, i32*)* @iic_host_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iic_host_xlate(%struct.irq_host* %0, %struct.device_node* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.irq_host*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.irq_host* %0, %struct.irq_host** %8, align 8
  store %struct.device_node* %1, %struct.device_node** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.device_node*, %struct.device_node** %9, align 8
  %20 = call i32 @of_device_is_compatible(%struct.device_node* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %99

25:                                               ; preds = %6
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %99

31:                                               ; preds = %25
  %32 = load %struct.device_node*, %struct.device_node** %9, align 8
  %33 = call i32* @of_get_property(%struct.device_node* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %33, i32** %18, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %18, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %31
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %99

43:                                               ; preds = %36
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 24
  store i32 %47, i32* %14, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 255
  store i32 %57, i32* %17, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 255
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %99

67:                                               ; preds = %43
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @IIC_IRQ_NODE_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @IIC_UNIT_IIC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %67
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* @IIC_IRQ_TYPE_IOEXC, align 4
  %80 = load i32, i32* %15, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 4
  br label %96

85:                                               ; preds = %75, %67
  %86 = load i32, i32* @IIC_IRQ_TYPE_NORMAL, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @IIC_IRQ_CLASS_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load i32, i32* %16, align 4
  %92 = or i32 %90, %91
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %92
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %85, %78
  %97 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %98 = load i32*, i32** %13, align 8
  store i32 %97, i32* %98, align 4
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %96, %64, %40, %28, %22
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
