; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i32, i32, i32, i32*, %struct.TYPE_5__, i32, %struct.platform_device* }
%struct.TYPE_5__ = type { i32, %struct.sh_cmt_priv*, i32, i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sh_timer_config* }
%struct.sh_timer_config = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing platform data\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get I/O memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"sh_cmt: failed to remap I/O memory\0A\00", align 1
@sh_cmt_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"sh_cmt: failed to request irq %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"sh_cmt: cannot get clock \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_cmt_priv*, %struct.platform_device*)* @sh_cmt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_cmt_setup(%struct.sh_cmt_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_cmt_priv*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_timer_config*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.sh_timer_config*, %struct.sh_timer_config** %12, align 8
  store %struct.sh_timer_config* %13, %struct.sh_timer_config** %6, align 8
  %14 = load i32, i32* @ENXIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %17 = call i32 @memset(%struct.sh_cmt_priv* %16, i32 0, i32 64)
  %18 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %19 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %20 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %19, i32 0, i32 6
  store %struct.platform_device* %18, %struct.platform_device** %20, align 8
  %21 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %22 = icmp ne %struct.sh_timer_config* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %25 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %24, i32 0, i32 6
  %26 = load %struct.platform_device*, %struct.platform_device** %25, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %171

29:                                               ; preds = %2
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.sh_cmt_priv* %31)
  %33 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %34 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %33, i32 0, i32 6
  %35 = load %struct.platform_device*, %struct.platform_device** %34, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %7, align 8
  %38 = load %struct.resource*, %struct.resource** %7, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %42 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %41, i32 0, i32 6
  %43 = load %struct.platform_device*, %struct.platform_device** %42, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_6__* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %171

46:                                               ; preds = %29
  %47 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %48 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %47, i32 0, i32 6
  %49 = load %struct.platform_device*, %struct.platform_device** %48, align 8
  %50 = call i32 @platform_get_irq(%struct.platform_device* %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %55 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %54, i32 0, i32 6
  %56 = load %struct.platform_device*, %struct.platform_device** %55, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = call i32 @dev_err(%struct.TYPE_6__* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %171

59:                                               ; preds = %46
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = call i32 @resource_size(%struct.resource* %63)
  %65 = call i32* @ioremap_nocache(i32 %62, i32 %64)
  %66 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %67 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %66, i32 0, i32 3
  store i32* %65, i32** %67, align 8
  %68 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %69 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %171

74:                                               ; preds = %59
  %75 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %76 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %79 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @sh_cmt_interrupt, align 4
  %82 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %83 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %86 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %87 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store %struct.sh_cmt_priv* %85, %struct.sh_cmt_priv** %88, align 8
  %89 = load i32, i32* @IRQF_DISABLED, align 4
  %90 = load i32, i32* @IRQF_TIMER, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @IRQF_IRQPOLL, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %95 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %99 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %98, i32 0, i32 4
  %100 = call i32 @setup_irq(i32 %97, %struct.TYPE_5__* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %74
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %166

106:                                              ; preds = %74
  %107 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %108 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %107, i32 0, i32 6
  %109 = load %struct.platform_device*, %struct.platform_device** %108, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %112 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @clk_get(%struct.TYPE_6__* %110, i32 %113)
  %115 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %116 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %118 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %106
  %123 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %124 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %128 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @PTR_ERR(i32 %129)
  store i32 %130, i32* %9, align 4
  br label %161

131:                                              ; preds = %106
  %132 = load %struct.resource*, %struct.resource** %7, align 8
  %133 = call i32 @resource_size(%struct.resource* %132)
  %134 = icmp eq i32 %133, 6
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %137 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %136, i32 0, i32 0
  store i32 16, i32* %137, align 8
  %138 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %139 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %138, i32 0, i32 1
  store i32 128, i32* %139, align 4
  %140 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %141 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %140, i32 0, i32 2
  store i32 -129, i32* %141, align 8
  br label %149

142:                                              ; preds = %131
  %143 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %144 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %143, i32 0, i32 0
  store i32 32, i32* %144, align 8
  %145 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %146 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %145, i32 0, i32 1
  store i32 32768, i32* %146, align 4
  %147 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %148 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %147, i32 0, i32 2
  store i32 -49153, i32* %148, align 8
  br label %149

149:                                              ; preds = %142, %135
  %150 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %151 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %152 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %155 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sh_timer_config*, %struct.sh_timer_config** %6, align 8
  %158 = getelementptr inbounds %struct.sh_timer_config, %struct.sh_timer_config* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @sh_cmt_register(%struct.sh_cmt_priv* %150, i32 %153, i32 %156, i32 %159)
  store i32 %160, i32* %3, align 4
  br label %173

161:                                              ; preds = %122
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %164 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %163, i32 0, i32 4
  %165 = call i32 @remove_irq(i32 %162, %struct.TYPE_5__* %164)
  br label %166

166:                                              ; preds = %161, %103
  %167 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %4, align 8
  %168 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @iounmap(i32* %169)
  br label %171

171:                                              ; preds = %166, %72, %53, %40, %23
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %149
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @memset(%struct.sh_cmt_priv*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sh_cmt_priv*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @setup_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @clk_get(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sh_cmt_register(%struct.sh_cmt_priv*, i32, i32, i32) #1

declare dso_local i32 @remove_irq(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
