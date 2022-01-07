; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_psmouse-base.c_psmouse_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, %struct.TYPE_4__, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.serio_driver = type { i32 }
%struct.psmouse = type { i32 (%struct.psmouse*)*, %struct.input_dev*, i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.input_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@psmouse_mutex = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@psmouse_resync = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@psmouse_rate = common dso_local global i32 0, align 4
@psmouse_resolution = common dso_local global i32 0, align 4
@psmouse_resetafter = common dso_local global i32 0, align 4
@psmouse_resync_time = common dso_local global i32 0, align 4
@psmouse_smartscroll = common dso_local global i32 0, align 4
@PSMOUSE_CMD_MODE = common dso_local global i32 0, align 4
@psmouse_attribute_group = common dso_local global i32 0, align 4
@PSMOUSE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @psmouse_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psmouse_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca %struct.serio_driver*, align 8
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %3, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %4, align 8
  store %struct.psmouse* null, %struct.psmouse** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %13 = load %struct.serio*, %struct.serio** %3, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.serio*, %struct.serio** %3, align 8
  %19 = getelementptr inbounds %struct.serio, %struct.serio* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.serio*, %struct.serio** %3, align 8
  %26 = getelementptr inbounds %struct.serio, %struct.serio* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.psmouse* @serio_get_drvdata(i64 %27)
  store %struct.psmouse* %28, %struct.psmouse** %6, align 8
  %29 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %30 = call i32 @psmouse_deactivate(%struct.psmouse* %29)
  br label %31

31:                                               ; preds = %24, %17, %2
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.psmouse* @kzalloc(i32 64, i32 %32)
  store %struct.psmouse* %33, %struct.psmouse** %5, align 8
  %34 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %34, %struct.input_dev** %7, align 8
  %35 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %36 = icmp ne %struct.psmouse* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %39 = icmp ne %struct.input_dev* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %31
  br label %189

41:                                               ; preds = %37
  %42 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 11
  %44 = load %struct.serio*, %struct.serio** %3, align 8
  %45 = call i32 @ps2_init(i32* %43, %struct.serio* %44)
  %46 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %47 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %46, i32 0, i32 10
  %48 = load i32, i32* @psmouse_resync, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %52 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %51, i32 0, i32 1
  store %struct.input_dev* %50, %struct.input_dev** %52, align 8
  %53 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.serio*, %struct.serio** %3, align 8
  %57 = getelementptr inbounds %struct.serio, %struct.serio* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @snprintf(i32 %55, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %61 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %62 = call i32 @psmouse_set_state(%struct.psmouse* %60, i32 %61)
  %63 = load %struct.serio*, %struct.serio** %3, align 8
  %64 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %65 = call i32 @serio_set_drvdata(%struct.serio* %63, %struct.psmouse* %64)
  %66 = load %struct.serio*, %struct.serio** %3, align 8
  %67 = load %struct.serio_driver*, %struct.serio_driver** %4, align 8
  %68 = call i32 @serio_open(%struct.serio* %66, %struct.serio_driver* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %186

72:                                               ; preds = %41
  %73 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %74 = call i64 @psmouse_probe(%struct.psmouse* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %183

79:                                               ; preds = %72
  %80 = load i32, i32* @psmouse_rate, align 4
  %81 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %82 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @psmouse_resolution, align 4
  %84 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %85 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @psmouse_resetafter, align 4
  %87 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %90 = icmp ne %struct.psmouse* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %94

92:                                               ; preds = %79
  %93 = load i32, i32* @psmouse_resync_time, align 4
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i32 [ 0, %91 ], [ %93, %92 ]
  %96 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %97 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @psmouse_smartscroll, align 4
  %99 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %100 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %102 = call i32 @psmouse_switch_protocol(%struct.psmouse* %101, i32* null)
  %103 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %104 = load i32, i32* @PSMOUSE_CMD_MODE, align 4
  %105 = call i32 @psmouse_set_state(%struct.psmouse* %103, i32 %104)
  %106 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %107 = call i32 @psmouse_initialize(%struct.psmouse* %106)
  %108 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %109 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %108, i32 0, i32 1
  %110 = load %struct.input_dev*, %struct.input_dev** %109, align 8
  %111 = call i32 @input_register_device(%struct.input_dev* %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %94
  br label %168

115:                                              ; preds = %94
  %116 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %117 = icmp ne %struct.psmouse* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %120 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %119, i32 0, i32 3
  %121 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %120, align 8
  %122 = icmp ne i32 (%struct.psmouse*)* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %125 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %124, i32 0, i32 3
  %126 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %125, align 8
  %127 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %128 = call i32 %126(%struct.psmouse* %127)
  br label %129

129:                                              ; preds = %123, %118, %115
  %130 = load %struct.serio*, %struct.serio** %3, align 8
  %131 = getelementptr inbounds %struct.serio, %struct.serio* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @sysfs_create_group(i32* %132, i32* @psmouse_attribute_group)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %149

137:                                              ; preds = %129
  %138 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %139 = call i32 @psmouse_activate(%struct.psmouse* %138)
  br label %140

140:                                              ; preds = %189, %137
  %141 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %142 = icmp ne %struct.psmouse* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %145 = call i32 @psmouse_activate(%struct.psmouse* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  %148 = load i32, i32* %8, align 4
  ret i32 %148

149:                                              ; preds = %136
  %150 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %151 = icmp ne %struct.psmouse* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %154 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %153, i32 0, i32 2
  %155 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %154, align 8
  %156 = icmp ne i32 (%struct.psmouse*)* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %159 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %158, i32 0, i32 2
  %160 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %159, align 8
  %161 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %162 = call i32 %160(%struct.psmouse* %161)
  br label %163

163:                                              ; preds = %157, %152, %149
  %164 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %165 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %164, i32 0, i32 1
  %166 = load %struct.input_dev*, %struct.input_dev** %165, align 8
  %167 = call i32 @input_unregister_device(%struct.input_dev* %166)
  store %struct.input_dev* null, %struct.input_dev** %7, align 8
  br label %168

168:                                              ; preds = %163, %114
  %169 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %170 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %169, i32 0, i32 0
  %171 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %170, align 8
  %172 = icmp ne i32 (%struct.psmouse*)* %171, null
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %175 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %174, i32 0, i32 0
  %176 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %175, align 8
  %177 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %178 = call i32 %176(%struct.psmouse* %177)
  br label %179

179:                                              ; preds = %173, %168
  %180 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %181 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %182 = call i32 @psmouse_set_state(%struct.psmouse* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %76
  %184 = load %struct.serio*, %struct.serio** %3, align 8
  %185 = call i32 @serio_close(%struct.serio* %184)
  br label %186

186:                                              ; preds = %183, %71
  %187 = load %struct.serio*, %struct.serio** %3, align 8
  %188 = call i32 @serio_set_drvdata(%struct.serio* %187, %struct.psmouse* null)
  br label %189

189:                                              ; preds = %186, %40
  %190 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %191 = call i32 @input_free_device(%struct.input_dev* %190)
  %192 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %193 = call i32 @kfree(%struct.psmouse* %192)
  %194 = load i32, i32* %9, align 4
  store i32 %194, i32* %8, align 4
  br label %140
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.psmouse* @serio_get_drvdata(i64) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local %struct.psmouse* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @ps2_init(i32*, %struct.serio*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.psmouse*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i64 @psmouse_probe(%struct.psmouse*) #1

declare dso_local i32 @psmouse_switch_protocol(%struct.psmouse*, i32*) #1

declare dso_local i32 @psmouse_initialize(%struct.psmouse*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
