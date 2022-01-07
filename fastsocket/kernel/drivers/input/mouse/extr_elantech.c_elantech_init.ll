; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.elantech_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.elantech_data = type { i32*, i8, i8, i32, i32, i32, i8, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ETP_FW_VERSION_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"elantech.c: failed to query firmware version.\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"elantech.c: assuming hardware version %d, firmware version %d.%d\0A\00", align 1
@ETP_CAPABILITIES_QUERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"elantech.c: failed to query capabilities.\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"elantech.c: Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"elantech.c: firmware version 2.34 detected, enabling jumpy cursor workaround\0A\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"elantech.c: failed to put touchpad into absolute mode.\0A\00", align 1
@elantech_attr_group = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"elantech.c: failed to create sysfs attributes, error: %d.\0A\00", align 1
@elantech_process_byte = common dso_local global i32 0, align 4
@elantech_disconnect = common dso_local global i32 0, align 4
@elantech_reconnect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elantech_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.elantech_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.elantech_data* @kzalloc(i32 32, i32 %8)
  store %struct.elantech_data* %9, %struct.elantech_data** %4, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 5
  store %struct.elantech_data* %9, %struct.elantech_data** %11, align 8
  %12 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %13 = icmp ne %struct.elantech_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %176

15:                                               ; preds = %1
  %16 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %17 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 1, i32* %19, align 4
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %41, %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 256
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %25 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %26, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, 1
  %35 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %36 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = load i32, i32* @ETP_FW_VERSION_QUERY, align 4
  %47 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %48 = call i64 @synaptics_send_cmd(%struct.psmouse* %45, i32 %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %173

52:                                               ; preds = %44
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %56 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %55, i32 0, i32 1
  store i8 %54, i8* %56, align 8
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %60 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %59, i32 0, i32 2
  store i8 %58, i8* %60, align 1
  %61 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %62 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %79

66:                                               ; preds = %52
  %67 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %68 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %67, i32 0, i32 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %70, 48
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %74 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %73, i32 0, i32 3
  store i32 2, i32* %74, align 4
  %75 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %76 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %75, i32 0, i32 4
  store i32 1, i32* %76, align 8
  %77 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %78 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %77, i32 0, i32 5
  store i32 0, i32* %78, align 4
  br label %84

79:                                               ; preds = %66, %52
  %80 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %81 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %83 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %82, i32 0, i32 5
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %86 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %89 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %88, i32 0, i32 1
  %90 = load i8, i8* %89, align 8
  %91 = zext i8 %90 to i32
  %92 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %93 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %92, i32 0, i32 2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %91, i32 %95)
  %97 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %98 = load i32, i32* @ETP_CAPABILITIES_QUERY, align 4
  %99 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %100 = call i64 @synaptics_send_cmd(%struct.psmouse* %97, i32 %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %84
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %173

104:                                              ; preds = %84
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %110, i32 %113)
  %115 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %118 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %117, i32 0, i32 6
  store i8 %116, i8* %118, align 8
  %119 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %120 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %119, i32 0, i32 1
  %121 = load i8, i8* %120, align 8
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %134

124:                                              ; preds = %104
  %125 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %126 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %125, i32 0, i32 2
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp eq i32 %128, 34
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0))
  %132 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %133 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %132, i32 0, i32 7
  store i32 1, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %124, %104
  %135 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %136 = call i64 @elantech_set_absolute_mode(%struct.psmouse* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %173

140:                                              ; preds = %134
  %141 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %142 = call i32 @elantech_set_input_params(%struct.psmouse* %141)
  %143 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %144 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = call i32 @sysfs_create_group(i32* %148, i32* @elantech_attr_group)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i32, i32* %6, align 4
  %154 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  br label %173

155:                                              ; preds = %140
  %156 = load i32, i32* @elantech_process_byte, align 4
  %157 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %158 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @elantech_disconnect, align 4
  %160 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %161 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @elantech_reconnect, align 4
  %163 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %164 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %166 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 6, i32 4
  %171 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %172 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  store i32 0, i32* %2, align 4
  br label %176

173:                                              ; preds = %152, %138, %102, %50
  %174 = load %struct.elantech_data*, %struct.elantech_data** %4, align 8
  %175 = call i32 @kfree(%struct.elantech_data* %174)
  store i32 -1, i32* %2, align 4
  br label %176

176:                                              ; preds = %173, %155, %14
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.elantech_data* @kzalloc(i32, i32) #1

declare dso_local i64 @synaptics_send_cmd(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i64 @elantech_set_absolute_mode(%struct.psmouse*) #1

declare dso_local i32 @elantech_set_input_params(%struct.psmouse*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.elantech_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
