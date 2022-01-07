; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_clock.c_ptp_clock_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ptp/extr_ptp_clock.c_ptp_clock_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, %struct.ptp_clock_info* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ptp_clock_info = type { i64, i32, i64 }
%struct.device = type { i32 }
%struct.pps_source_info = type { i32, i32, i32 }

@ptp_devt = common dso_local global i32 0, align 4
@PTP_MAX_ALARMS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ptp_clocks_map = common dso_local global i32 0, align 4
@MINORMASK = common dso_local global i64 0, align 8
@ptp_clock_ops = common dso_local global i32 0, align 4
@delete_ptp_clock = common dso_local global i32 0, align 4
@ptp_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ptp%d\00", align 1
@PPS_MAX_NAME_LEN = common dso_local global i32 0, align 4
@PTP_PPS_MODE = common dso_local global i32 0, align 4
@PTP_PPS_DEFAULTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register pps source\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create posix clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ptp_clock* @ptp_clock_register(%struct.ptp_clock_info* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.ptp_clock*, align 8
  %4 = alloca %struct.ptp_clock_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ptp_clock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pps_source_info, align 4
  store %struct.ptp_clock_info* %0, %struct.ptp_clock_info** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @ptp_devt, align 4
  %12 = call i32 @MAJOR(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %14 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PTP_MAX_ALARMS, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.ptp_clock* @ERR_PTR(i32 %20)
  store %struct.ptp_clock* %21, %struct.ptp_clock** %3, align 8
  br label %170

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.ptp_clock* @kzalloc(i32 56, i32 %25)
  store %struct.ptp_clock* %26, %struct.ptp_clock** %6, align 8
  %27 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %28 = icmp eq %struct.ptp_clock* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %167

30:                                               ; preds = %22
  %31 = load i64, i64* @MINORMASK, align 8
  %32 = add nsw i64 %31, 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @ida_simple_get(i32* @ptp_clocks_map, i32 0, i64 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %7, align 4
  br label %164

39:                                               ; preds = %30
  %40 = load i32, i32* @ptp_clock_ops, align 4
  %41 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %42 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @delete_ptp_clock, align 4
  %45 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %46 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %49 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %50 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %49, i32 0, i32 8
  store %struct.ptp_clock_info* %48, %struct.ptp_clock_info** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MKDEV(i32 %51, i32 %52)
  %54 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %55 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %58 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %60 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %64 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %63, i32 0, i32 1
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %67 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %66, i32 0, i32 6
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load i32, i32* @ptp_class, align 4
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %72 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %75 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %76 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @device_create(i32 %69, %struct.device* %70, i32 %73, %struct.ptp_clock* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %80 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %82 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %39
  br label %160

87:                                               ; preds = %39
  %88 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %89 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %92 = call i32 @dev_set_drvdata(i32 %90, %struct.ptp_clock* %91)
  %93 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %94 = call i32 @ptp_populate_sysfs(%struct.ptp_clock* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %154

98:                                               ; preds = %87
  %99 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %100 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %98
  %104 = call i32 @memset(%struct.pps_source_info* %10, i32 0, i32 12)
  %105 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %10, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @PPS_MAX_NAME_LEN, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @snprintf(i32 %106, i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @PTP_PPS_MODE, align 4
  %111 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %10, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %4, align 8
  %113 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.pps_source_info, %struct.pps_source_info* %10, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @PTP_PPS_DEFAULTS, align 4
  %117 = call i64 @pps_register_source(%struct.pps_source_info* %10, i32 %116)
  %118 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %119 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %121 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %103
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %151

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %129 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %128, i32 0, i32 4
  %130 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %131 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @posix_clock_register(%struct.TYPE_4__* %129, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %140

138:                                              ; preds = %127
  %139 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  store %struct.ptp_clock* %139, %struct.ptp_clock** %3, align 8
  br label %170

140:                                              ; preds = %136
  %141 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %142 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %147 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @pps_unregister_source(i64 %148)
  br label %150

150:                                              ; preds = %145, %140
  br label %151

151:                                              ; preds = %150, %124
  %152 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %153 = call i32 @ptp_cleanup_sysfs(%struct.ptp_clock* %152)
  br label %154

154:                                              ; preds = %151, %97
  %155 = load i32, i32* @ptp_class, align 4
  %156 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %157 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @device_destroy(i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %154, %86
  %161 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %162 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %161, i32 0, i32 1
  %163 = call i32 @mutex_destroy(i32* %162)
  br label %164

164:                                              ; preds = %160, %37
  %165 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %166 = call i32 @kfree(%struct.ptp_clock* %165)
  br label %167

167:                                              ; preds = %164, %29
  %168 = load i32, i32* %7, align 4
  %169 = call %struct.ptp_clock* @ERR_PTR(i32 %168)
  store %struct.ptp_clock* %169, %struct.ptp_clock** %3, align 8
  br label %170

170:                                              ; preds = %167, %138, %18
  %171 = load %struct.ptp_clock*, %struct.ptp_clock** %3, align 8
  ret %struct.ptp_clock* %171
}

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.ptp_clock* @ERR_PTR(i32) #1

declare dso_local %struct.ptp_clock* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i64, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @device_create(i32, %struct.device*, i32, %struct.ptp_clock*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.ptp_clock*) #1

declare dso_local i32 @ptp_populate_sysfs(%struct.ptp_clock*) #1

declare dso_local i32 @memset(%struct.pps_source_info*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @pps_register_source(%struct.pps_source_info*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @posix_clock_register(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pps_unregister_source(i64) #1

declare dso_local i32 @ptp_cleanup_sysfs(%struct.ptp_clock*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.ptp_clock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
