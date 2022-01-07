; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt8231.c_vt8231_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_vt8231.c_vt8231_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.resource = type { i64, i64 }
%struct.vt8231_data = type { i8*, i32, i32, i32, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@VT8231_EXTENT = common dso_local global i32 0, align 4
@vt8231_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vt8231\00", align 1
@vt8231_group = common dso_local global i32 0, align 4
@VT8231_REG_UCH_CONFIG = common dso_local global i32 0, align 4
@vt8231_group_temps = common dso_local global i32* null, align 8
@vt8231_group_volts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vt8231_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8231_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.vt8231_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_IO, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %4, align 8
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @VT8231_EXTENT, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @vt8231_driver, i32 0, i32 0, i32 0), align 4
  %16 = call i32 @request_region(i64 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %4, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.resource*, %struct.resource** %4, align 8
  %25 = getelementptr inbounds %struct.resource, %struct.resource* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_err(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %192

30:                                               ; preds = %1
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.vt8231_data* @kzalloc(i32 32, i32 %31)
  store %struct.vt8231_data* %32, %struct.vt8231_data** %5, align 8
  %33 = icmp ne %struct.vt8231_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %185

37:                                               ; preds = %30
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %40 = call i32 @platform_set_drvdata(%struct.platform_device* %38, %struct.vt8231_data* %39)
  %41 = load %struct.resource*, %struct.resource** %4, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %45 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %47 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %47, align 8
  %48 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %49 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %48, i32 0, i32 3
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %52 = call i32 @vt8231_init_device(%struct.vt8231_data* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @sysfs_create_group(i32* %55, i32* @vt8231_group)
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %180

59:                                               ; preds = %37
  %60 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %61 = load i32, i32* @VT8231_REG_UCH_CONFIG, align 4
  %62 = call i32 @vt8231_read_value(%struct.vt8231_data* %60, i32 %61)
  %63 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %64 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %90, %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** @vt8231_group_temps, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %73 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ISTEMP(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32*, i32** @vt8231_group_temps, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @sysfs_create_group(i32* %80, i32* %84)
  store i32 %85, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %139

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %65

93:                                               ; preds = %65
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %119, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i32*, i32** @vt8231_group_volts, align 8
  %97 = call i32 @ARRAY_SIZE(i32* %96)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %102 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ISVOLT(i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %99
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32*, i32** @vt8231_group_volts, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @sysfs_create_group(i32* %109, i32* %113)
  store i32 %114, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %139

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %94

122:                                              ; preds = %94
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @hwmon_device_register(%struct.TYPE_7__* %124)
  %126 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %127 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %129 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @IS_ERR(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %122
  %134 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %135 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PTR_ERR(i32 %136)
  store i32 %137, i32* %6, align 4
  br label %139

138:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %192

139:                                              ; preds = %133, %116, %87
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %154, %139
  %141 = load i32, i32* %7, align 4
  %142 = load i32*, i32** @vt8231_group_volts, align 8
  %143 = call i32 @ARRAY_SIZE(i32* %142)
  %144 = icmp slt i32 %141, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %140
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32*, i32** @vt8231_group_volts, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @sysfs_remove_group(i32* %148, i32* %152)
  br label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %140

157:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %158

158:                                              ; preds = %172, %157
  %159 = load i32, i32* %7, align 4
  %160 = load i32*, i32** @vt8231_group_temps, align 8
  %161 = call i32 @ARRAY_SIZE(i32* %160)
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %158
  %164 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %165 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32*, i32** @vt8231_group_temps, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = call i32 @sysfs_remove_group(i32* %166, i32* %170)
  br label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %158

175:                                              ; preds = %158
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = call i32 @sysfs_remove_group(i32* %178, i32* @vt8231_group)
  br label %180

180:                                              ; preds = %175, %58
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = call i32 @platform_set_drvdata(%struct.platform_device* %181, %struct.vt8231_data* null)
  %183 = load %struct.vt8231_data*, %struct.vt8231_data** %5, align 8
  %184 = call i32 @kfree(%struct.vt8231_data* %183)
  br label %185

185:                                              ; preds = %180, %34
  %186 = load %struct.resource*, %struct.resource** %4, align 8
  %187 = getelementptr inbounds %struct.resource, %struct.resource* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @VT8231_EXTENT, align 4
  %190 = call i32 @release_region(i64 %188, i32 %189)
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %185, %138, %18
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i64, i64) #1

declare dso_local %struct.vt8231_data* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vt8231_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vt8231_init_device(%struct.vt8231_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @vt8231_read_value(%struct.vt8231_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @ISTEMP(i32, i32) #1

declare dso_local i64 @ISVOLT(i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.vt8231_data*) #1

declare dso_local i32 @release_region(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
