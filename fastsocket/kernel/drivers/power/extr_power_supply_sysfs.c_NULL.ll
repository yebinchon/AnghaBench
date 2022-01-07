; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_sysfs.c_NULL.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_sysfs.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.power_supply = type { i32, i64*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"uevent\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"No power supply yet\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"POWER_SUPPLY_NAME=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"POWER_SUPPLY_NAME=%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@power_supply_static_attrs = common dso_local global %struct.device_attribute* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"Static prop %s=%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"POWER_SUPPLY_%s=%s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%zd dynamic props\0A\00", align 1
@power_supply_attrs = common dso_local global %struct.device_attribute* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"prop %s=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.device_attribute*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.device_attribute*, align 8
  %14 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %15)
  store %struct.power_supply* %16, %struct.power_supply** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %20 = icmp ne %struct.power_supply* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %23 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %189

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %33 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %37 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %38 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (%struct.kobj_uevent_env*, i8*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %189

47:                                               ; preds = %30
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i64 @get_zeroed_page(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %189

56:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %108, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.device_attribute*, %struct.device_attribute** @power_supply_static_attrs, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.device_attribute* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %57
  %63 = load %struct.device_attribute*, %struct.device_attribute** @power_supply_static_attrs, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %63, i64 %65
  store %struct.device_attribute* %66, %struct.device_attribute** %11, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.device_attribute*, %struct.device_attribute** %11, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @power_supply_show_static_attrs(%struct.device* %67, %struct.device_attribute* %68, i8* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %184

74:                                               ; preds = %62
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 10)
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i8*, i8** %12, align 8
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %79, %74
  %82 = load %struct.device_attribute*, %struct.device_attribute** %11, align 8
  %83 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i8* @kstruprdup(i32 %85, i32 %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %184

93:                                               ; preds = %81
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %95, i8* %96)
  %98 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 (%struct.kobj_uevent_env*, i8*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %98, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %99, i8* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @kfree(i8* %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %184

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %57

111:                                              ; preds = %57
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %114 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %180, %111
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %120 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %183

123:                                              ; preds = %117
  %124 = load %struct.device_attribute*, %struct.device_attribute** @power_supply_attrs, align 8
  %125 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %126 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %124, i64 %131
  store %struct.device_attribute* %132, %struct.device_attribute** %13, align 8
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load %struct.device_attribute*, %struct.device_attribute** %13, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @power_supply_show_property(%struct.device* %133, %struct.device_attribute* %134, i8* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @ENODEV, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %123
  store i32 0, i32* %7, align 4
  br label %180

142:                                              ; preds = %123
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %184

146:                                              ; preds = %142
  %147 = load i8*, i8** %9, align 8
  %148 = call i8* @strchr(i8* %147, i8 signext 10)
  store i8* %148, i8** %14, align 8
  %149 = load i8*, i8** %14, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load i8*, i8** %14, align 8
  store i8 0, i8* %152, align 1
  br label %153

153:                                              ; preds = %151, %146
  %154 = load %struct.device_attribute*, %struct.device_attribute** %13, align 8
  %155 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i8* @kstruprdup(i32 %157, i32 %158)
  store i8* %159, i8** %10, align 8
  %160 = load i8*, i8** %10, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %153
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %7, align 4
  br label %184

165:                                              ; preds = %153
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %167, i8* %168)
  %170 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 (%struct.kobj_uevent_env*, i8*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %171, i8* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i8*, i8** %10, align 8
  %175 = call i32 @kfree(i8* %174)
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  br label %184

179:                                              ; preds = %165
  br label %180

180:                                              ; preds = %179, %141
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %117

183:                                              ; preds = %117
  br label %184

184:                                              ; preds = %183, %178, %162, %145, %106, %90, %73
  %185 = load i8*, i8** %9, align 8
  %186 = ptrtoint i8* %185 to i64
  %187 = call i32 @free_page(i64 %186)
  %188 = load i32, i32* %7, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %184, %53, %45, %26
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*, ...) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.device_attribute*) #1

declare dso_local i32 @power_supply_show_static_attrs(%struct.device*, %struct.device_attribute*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @kstruprdup(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @power_supply_show_property(%struct.device*, %struct.device_attribute*, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
