; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_rbtx4939-flash.c_rbtx4939_flash_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_rbtx4939-flash.c_rbtx4939_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.rbtx4939_flash_data* }
%struct.rbtx4939_flash_data = type { i32, i32, i32 (%struct.TYPE_13__*)*, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32 }
%struct.rbtx4939_flash_info = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rbtx4939 platform flash device: %pR\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@rom_probe_types = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"map_probe failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@part_probe_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rbtx4939_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtx4939_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rbtx4939_flash_data*, align 8
  %5 = alloca %struct.rbtx4939_flash_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %12, align 8
  store %struct.rbtx4939_flash_data* %13, %struct.rbtx4939_flash_data** %4, align 8
  %14 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %15 = icmp ne %struct.rbtx4939_flash_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %171

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %171

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.rbtx4939_flash_info* @devm_kzalloc(%struct.TYPE_15__* %30, i32 48, i32 %31)
  store %struct.rbtx4939_flash_info* %32, %struct.rbtx4939_flash_info** %5, align 8
  %33 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %34 = icmp ne %struct.rbtx4939_flash_info* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %171

38:                                               ; preds = %28
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %41 = call i32 @platform_set_drvdata(%struct.platform_device* %39, %struct.rbtx4939_flash_info* %40)
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = call i64 @resource_size(%struct.resource* %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.resource* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_name(%struct.TYPE_15__* %53)
  %55 = call i32 @devm_request_mem_region(%struct.TYPE_15__* %47, i32 %50, i64 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %171

60:                                               ; preds = %38
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_name(%struct.TYPE_15__* %62)
  %64 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %65 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %71 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %75 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %78 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %81 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %86 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @devm_ioremap(%struct.TYPE_15__* %84, i32 %88, i64 %89)
  %91 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %92 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %95 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %60
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %171

102:                                              ; preds = %60
  %103 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %104 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %103, i32 0, i32 2
  %105 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %104, align 8
  %106 = icmp ne i32 (%struct.TYPE_13__*)* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load %struct.rbtx4939_flash_data*, %struct.rbtx4939_flash_data** %4, align 8
  %109 = getelementptr inbounds %struct.rbtx4939_flash_data, %struct.rbtx4939_flash_data* %108, i32 0, i32 2
  %110 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %109, align 8
  %111 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %112 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %111, i32 0, i32 3
  %113 = call i32 %110(%struct.TYPE_13__* %112)
  br label %118

114:                                              ; preds = %102
  %115 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %116 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %115, i32 0, i32 3
  %117 = call i32 @simple_map_init(%struct.TYPE_13__* %116)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i8**, i8*** @rom_probe_types, align 8
  store i8** %119, i8*** %7, align 8
  br label %120

120:                                              ; preds = %139, %118
  %121 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %122 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = icmp ne %struct.TYPE_14__* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i8**, i8*** %7, align 8
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br label %129

129:                                              ; preds = %125, %120
  %130 = phi i1 [ false, %120 ], [ %128, %125 ]
  br i1 %130, label %131, label %142

131:                                              ; preds = %129
  %132 = load i8**, i8*** %7, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %135 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %134, i32 0, i32 3
  %136 = call %struct.TYPE_14__* @do_map_probe(i8* %133, %struct.TYPE_13__* %135)
  %137 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %138 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %137, i32 0, i32 1
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %138, align 8
  br label %139

139:                                              ; preds = %131
  %140 = load i8**, i8*** %7, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i32 1
  store i8** %141, i8*** %7, align 8
  br label %120

142:                                              ; preds = %129
  %143 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %144 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %143, i32 0, i32 1
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = icmp ne %struct.TYPE_14__* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %142
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @dev_err(%struct.TYPE_15__* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* @ENXIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %167

153:                                              ; preds = %142
  %154 = load i32, i32* @THIS_MODULE, align 4
  %155 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %156 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %155, i32 0, i32 1
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  store i32 %154, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %167

162:                                              ; preds = %153
  %163 = load %struct.rbtx4939_flash_info*, %struct.rbtx4939_flash_info** %5, align 8
  %164 = getelementptr inbounds %struct.rbtx4939_flash_info, %struct.rbtx4939_flash_info* %163, i32 0, i32 1
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = call i32 @add_mtd_device(%struct.TYPE_14__* %165)
  store i32 0, i32* %2, align 4
  br label %171

167:                                              ; preds = %161, %147
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = call i32 @rbtx4939_flash_remove(%struct.platform_device* %168)
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %167, %162, %99, %57, %35, %25, %16
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.rbtx4939_flash_info* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rbtx4939_flash_info*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_15__*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @simple_map_init(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @do_map_probe(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @add_mtd_device(%struct.TYPE_14__*) #1

declare dso_local i32 @rbtx4939_flash_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
