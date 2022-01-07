; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chp.c_chp_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chp.c_chp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.channel_path**, i64, i32 }
%struct.channel_path = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, %struct.chp_id }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.chp_id = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@channel_subsystems = common dso_local global %struct.TYPE_11__** null, align 8
@chp_release = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@css_chsc_characteristics = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"chp%x.%02x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Could not register chp%x.%02x: %d\0A\00", align 1
@chp_attr_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chp_new(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chp_id, align 8
  %5 = alloca %struct.channel_path*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.chp_id* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 8
  %10 = bitcast %struct.chp_id* %4 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @chp_is_registered(i64 %12, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %175

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.channel_path* @kzalloc(i32 48, i32 %19)
  store %struct.channel_path* %20, %struct.channel_path** %5, align 8
  %21 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %22 = icmp ne %struct.channel_path* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %175

26:                                               ; preds = %18
  %27 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %28 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %27, i32 0, i32 5
  %29 = bitcast %struct.chp_id* %28 to i8*
  %30 = bitcast %struct.chp_id* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %32 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @channel_subsystems, align 8
  %34 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %33, i64 %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  %39 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %40 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32* %38, i32** %41, align 8
  %42 = load i32, i32* @chp_release, align 4
  %43 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %44 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %47 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %46, i32 0, i32 4
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %50 = call i32 @chp_update_desc(%struct.channel_path* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %26
  br label %170

54:                                               ; preds = %26
  %55 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %56 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %170

64:                                               ; preds = %54
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @css_chsc_characteristics, i32 0, i32 1), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @css_chsc_characteristics, i32 0, i32 0), align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %72 = call i32 @chsc_get_channel_measurement_chars(%struct.channel_path* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %170

76:                                               ; preds = %70
  br label %80

77:                                               ; preds = %67, %64
  %78 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %79 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %78, i32 0, i32 1
  store i32 -1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %82 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @dev_set_name(%struct.TYPE_9__* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %84, i64 %86)
  %88 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %89 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %88, i32 0, i32 2
  %90 = call i32 @device_register(%struct.TYPE_9__* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @CIO_MSG_EVENT(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %95, i64 %97, i32 %98)
  %100 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %101 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %100, i32 0, i32 2
  %102 = call i32 @put_device(%struct.TYPE_9__* %101)
  br label %173

103:                                              ; preds = %80
  %104 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %105 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = call i32 @sysfs_create_group(i32* %106, i32* @chp_attr_group)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %112 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %111, i32 0, i32 2
  %113 = call i32 @device_unregister(%struct.TYPE_9__* %112)
  br label %173

114:                                              ; preds = %103
  %115 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @channel_subsystems, align 8
  %116 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %115, i64 %117
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = call i32 @mutex_lock(i32* %120)
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @channel_subsystems, align 8
  %123 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %122, i64 %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %151

130:                                              ; preds = %114
  %131 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %132 = call i32 @chp_add_cmg_attr(%struct.channel_path* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %137 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = call i32 @sysfs_remove_group(i32* %138, i32* @chp_attr_group)
  %140 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %141 = getelementptr inbounds %struct.channel_path, %struct.channel_path* %140, i32 0, i32 2
  %142 = call i32 @device_unregister(%struct.TYPE_9__* %141)
  %143 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @channel_subsystems, align 8
  %144 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %143, i64 %145
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = call i32 @mutex_unlock(i32* %148)
  br label %173

150:                                              ; preds = %130
  br label %151

151:                                              ; preds = %150, %114
  %152 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %153 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @channel_subsystems, align 8
  %154 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %153, i64 %155
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load %struct.channel_path**, %struct.channel_path*** %158, align 8
  %160 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.channel_path*, %struct.channel_path** %159, i64 %161
  store %struct.channel_path* %152, %struct.channel_path** %162, align 8
  %163 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @channel_subsystems, align 8
  %164 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %163, i64 %165
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %173

170:                                              ; preds = %75, %61, %53
  %171 = load %struct.channel_path*, %struct.channel_path** %5, align 8
  %172 = call i32 @kfree(%struct.channel_path* %171)
  br label %173

173:                                              ; preds = %170, %151, %135, %110, %93
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %23, %17
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @chp_is_registered(i64, i64) #1

declare dso_local %struct.channel_path* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @chp_update_desc(%struct.channel_path*) #1

declare dso_local i32 @chsc_get_channel_measurement_chars(%struct.channel_path*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i64, i64) #1

declare dso_local i32 @device_register(%struct.TYPE_9__*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_9__*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chp_add_cmg_attr(%struct.channel_path*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.channel_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
