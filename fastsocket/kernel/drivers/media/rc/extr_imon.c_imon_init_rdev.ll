; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_init_rdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_imon_init_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i32, i32, i32, %struct.imon_context*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.imon_context = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.imon_init_rdev.fp_packet = private unnamed_addr constant [8 x i8] c"@\00\00\00\00\00\00\88", align 1
@.str = private unnamed_addr constant [38 x i8] c"remote control dev allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"iMON Remote (%04x:%04x)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@RC_TYPE_OTHER = common dso_local global i32 0, align 4
@RC_TYPE_RC6 = common dso_local global i32 0, align 4
@imon_ir_change_protocol = common dso_local global i32 0, align 4
@MOD_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"panel buttons/knobs setup failed\0A\00", align 1
@RC_MAP_IMON_MCE = common dso_local global i32 0, align 4
@RC_MAP_IMON_PAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"remote input dev register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.imon_context*)* @imon_init_rdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @imon_init_rdev(%struct.imon_context* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.imon_context*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  store %struct.imon_context* %0, %struct.imon_context** %3, align 8
  %7 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.imon_init_rdev.fp_packet, i32 0, i32 0), i64 8, i1 false)
  %8 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %8, %struct.rc_dev** %4, align 8
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = icmp ne %struct.rc_dev* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %13 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %132

16:                                               ; preds = %1
  %17 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %18 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %21 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %24 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %28 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %31 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_make_path(i32 %29, i32 %32, i32 4)
  %34 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %35 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strlcat(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %38 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %39 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %44 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %47 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %49 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 7
  %53 = call i32 @usb_to_input_id(i32 %50, i32* %52)
  %54 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %55 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %58 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %61 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %62 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %61, i32 0, i32 5
  store %struct.imon_context* %60, %struct.imon_context** %62, align 8
  %63 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %64 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @RC_TYPE_OTHER, align 4
  %67 = load i32, i32* @RC_TYPE_RC6, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @imon_ir_change_protocol, align 4
  %72 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %73 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @MOD_NAME, align 4
  %75 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %76 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %78 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = bitcast [8 x i8]* %6 to i8**
  %81 = call i32 @memcpy(i32 %79, i8** %80, i32 8)
  %82 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %83 = call i32 @send_packet(%struct.imon_context* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %16
  %87 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %88 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_info(i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %16
  %92 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %93 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 65500
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %98 = call i32 @imon_get_ffdc_type(%struct.imon_context* %97)
  %99 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %100 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %103 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %96, %91
  %105 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %106 = call i32 @imon_set_display_type(%struct.imon_context* %105)
  %107 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %108 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @RC_TYPE_RC6, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @RC_MAP_IMON_MCE, align 4
  %114 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %115 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %120

116:                                              ; preds = %104
  %117 = load i32, i32* @RC_MAP_IMON_PAD, align 4
  %118 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %119 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %122 = call i32 @rc_register_device(%struct.rc_dev* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.imon_context*, %struct.imon_context** %3, align 8
  %127 = getelementptr inbounds %struct.imon_context, %struct.imon_context* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %132

130:                                              ; preds = %120
  %131 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  store %struct.rc_dev* %131, %struct.rc_dev** %2, align 8
  br label %135

132:                                              ; preds = %125, %11
  %133 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %134 = call i32 @rc_free_device(%struct.rc_dev* %133)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %135

135:                                              ; preds = %132, %130
  %136 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #2

declare dso_local i32 @usb_make_path(i32, i32, i32) #2

declare dso_local i32 @strlcat(i32, i8*, i32) #2

declare dso_local i32 @usb_to_input_id(i32, i32*) #2

declare dso_local i32 @memcpy(i32, i8**, i32) #2

declare dso_local i32 @send_packet(%struct.imon_context*) #2

declare dso_local i32 @dev_info(i32, i8*) #2

declare dso_local i32 @imon_get_ffdc_type(%struct.imon_context*) #2

declare dso_local i32 @imon_set_display_type(%struct.imon_context*) #2

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #2

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
