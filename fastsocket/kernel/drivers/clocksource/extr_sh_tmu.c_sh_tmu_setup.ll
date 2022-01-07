; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_tmu.c_sh_tmu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_priv = type { i32*, i32, %struct.platform_device*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.sh_tmu_priv*, i32, i32 }
%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sh_timer_config* }
%struct.sh_timer_config = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"sh_tmu: failed to remap I/O memory\0A\00", align 1
@sh_tmu_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"sh_tmu: cannot get clock \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_priv*, %struct.platform_device*)* @sh_tmu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_setup(%struct.sh_tmu_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_tmu_priv*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_timer_config*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sh_tmu_priv* %0, %struct.sh_tmu_priv** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.sh_timer_config*, %struct.sh_timer_config** %12, align 8
  store %struct.sh_timer_config* %13, %struct.sh_timer_config** %6, align 8
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %17 = call i32 @memset(%struct.sh_tmu_priv* %16, i32 0, i32 48)
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %20 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %19, i32 0, i32 2
  store %struct.platform_device* %18, %struct.platform_device** %20, align 8
  %21 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %22 = icmp ne %struct.sh_timer_config* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %24, i32 0, i32 2
  %26 = load %struct.platform_device*, %struct.platform_device** %25, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %142

29:                                               ; preds = %2
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.sh_tmu_priv* %31)
  %33 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %34 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %33, i32 0, i32 2
  %35 = load %struct.platform_device*, %struct.platform_device** %34, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %42 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %41, i32 0, i32 2
  %43 = load %struct.platform_device*, %struct.platform_device** %42, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_5__* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %142

46:                                               ; preds = %29
  %47 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %48 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %47, i32 0, i32 2
  %49 = load %struct.platform_device*, %struct.platform_device** %48, align 8
  %50 = call i32 @platform_get_irq(%struct.platform_device* %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %55 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %54, i32 0, i32 2
  %56 = load %struct.platform_device*, %struct.platform_device** %55, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %142

59:                                               ; preds = %46
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = call i32 @resource_size(%struct.resource* %63)
  %65 = call i32* @ioremap_nocache(i32 %62, i32 %64)
  %66 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %67 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %69 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %142

74:                                               ; preds = %59
  %75 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %76 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %79 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @sh_tmu_interrupt, align 4
  %82 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %83 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  store i32 %81, i32* %84, align 8
  %85 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %86 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %87 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store %struct.sh_tmu_priv* %85, %struct.sh_tmu_priv** %88, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %91 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @IRQF_DISABLED, align 4
  %94 = load i32, i32* @IRQF_TIMER, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @IRQF_IRQPOLL, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %99 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %102 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %101, i32 0, i32 2
  %103 = load %struct.platform_device*, %struct.platform_device** %102, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %106 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @clk_get(%struct.TYPE_5__* %104, i32 %107)
  %109 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %110 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %112 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @IS_ERR(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %74
  %117 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %118 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %119)
  %121 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %122 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @PTR_ERR(i32 %123)
  store i32 %124, i32* %9, align 4
  br label %137

125:                                              ; preds = %74
  %126 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %127 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %128 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %131 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %134 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @sh_tmu_register(%struct.sh_tmu_priv* %126, i32 %129, i32 %132, i32 %135)
  store i32 %136, i32* %3, align 4
  br label %144

137:                                              ; preds = %116
  %138 = load %struct.sh_tmu_priv*, %struct.sh_tmu_priv** %4, align 8
  %139 = getelementptr inbounds %struct.sh_tmu_priv, %struct.sh_tmu_priv* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @iounmap(i32* %140)
  br label %142

142:                                              ; preds = %137, %72, %53, %40, %23
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %125
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @memset(%struct.sh_tmu_priv*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_tmu_priv*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @clk_get(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sh_tmu_register(%struct.sh_tmu_priv*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
