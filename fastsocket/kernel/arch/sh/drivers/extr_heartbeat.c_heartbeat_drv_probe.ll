; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_heartbeat.c_heartbeat_drv_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_heartbeat.c_heartbeat_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.heartbeat_data* }
%struct.heartbeat_data = type { i32, i32*, i32, i32, i32, i32 }
%struct.resource = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of resources\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@default_bit_pos = common dso_local global i32* null, align 8
@heartbeat_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @heartbeat_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heartbeat_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.heartbeat_data*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call i32 @dev_err(%struct.TYPE_2__* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %158

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %4, align 8
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = icmp eq %struct.resource* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 @dev_err(%struct.TYPE_2__* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %158

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.heartbeat_data*, %struct.heartbeat_data** %38, align 8
  %40 = icmp ne %struct.heartbeat_data* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.heartbeat_data*, %struct.heartbeat_data** %44, align 8
  store %struct.heartbeat_data* %45, %struct.heartbeat_data** %5, align 8
  br label %59

46:                                               ; preds = %35
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.heartbeat_data* @kzalloc(i32 32, i32 %47)
  store %struct.heartbeat_data* %48, %struct.heartbeat_data** %5, align 8
  %49 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %50 = icmp ne %struct.heartbeat_data* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %158

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.resource*, %struct.resource** %4, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.resource*, %struct.resource** %4, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.resource*, %struct.resource** %4, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = add nsw i64 %69, 1
  %71 = call i32 @ioremap_nocache(i64 %62, i64 %70)
  %72 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %73 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %75 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %59
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 1
  %85 = call i32 @dev_err(%struct.TYPE_2__* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.heartbeat_data*, %struct.heartbeat_data** %88, align 8
  %90 = icmp ne %struct.heartbeat_data* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %82
  %92 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %93 = call i32 @kfree(%struct.heartbeat_data* %92)
  br label %94

94:                                               ; preds = %91, %82
  %95 = load i32, i32* @ENXIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %158

97:                                               ; preds = %59
  %98 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %99 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** @default_bit_pos, align 8
  %104 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %105 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load i32*, i32** @default_bit_pos, align 8
  %107 = call i32 @ARRAY_SIZE(i32* %106)
  %108 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %109 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %102, %97
  %111 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %112 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %111, i32 0, i32 2
  store i32 0, i32* %112, align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %132, %110
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %116 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  %120 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %121 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 1, %126
  %128 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %129 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %119
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %113

135:                                              ; preds = %113
  %136 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %137 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %142 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %141, i32 0, i32 3
  store i32 8, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %145 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %144, i32 0, i32 4
  %146 = load i32, i32* @heartbeat_timer, align 4
  %147 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %148 = ptrtoint %struct.heartbeat_data* %147 to i64
  %149 = call i32 @setup_timer(i32* %145, i32 %146, i64 %148)
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.heartbeat_data* %151)
  %153 = load %struct.heartbeat_data*, %struct.heartbeat_data** %5, align 8
  %154 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %153, i32 0, i32 4
  %155 = load i64, i64* @jiffies, align 8
  %156 = add nsw i64 %155, 1
  %157 = call i32 @mod_timer(i32* %154, i64 %156)
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %143, %94, %55, %29, %14
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.heartbeat_data* @kzalloc(i32, i32) #1

declare dso_local i32 @ioremap_nocache(i64, i64) #1

declare dso_local i32 @kfree(%struct.heartbeat_data*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.heartbeat_data*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
