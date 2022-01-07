; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_virtio_scsi.c_virtscsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**)* }
%struct.virtqueue = type { i32 }
%struct.virtio_scsi = type { i32*, i32, i32, i32 }

@virtscsi_ctrl_done = common dso_local global i32* null, align 8
@virtscsi_event_done = common dso_local global i32* null, align 8
@virtscsi_req_done = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@__const.virtscsi_init.names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0)], align 16
@cdb_size = common dso_local global i32 0, align 4
@VIRTIO_SCSI_CDB_SIZE = common dso_local global i32 0, align 4
@sense_size = common dso_local global i32 0, align 4
@VIRTIO_SCSI_SENSE_SIZE = common dso_local global i32 0, align 4
@VIRTIO_SCSI_F_HOTPLUG = common dso_local global i32 0, align 4
@seg_max = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_device*, %struct.virtio_scsi*, i32)* @virtscsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtscsi_init(%struct.virtio_device* %0, %struct.virtio_scsi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca %struct.virtio_scsi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.virtqueue*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32*], align 16
  %13 = alloca [3 x i8*], align 16
  store %struct.virtio_device* %0, %struct.virtio_device** %5, align 8
  store %struct.virtio_scsi* %1, %struct.virtio_scsi** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %15 = load i32*, i32** @virtscsi_ctrl_done, align 8
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %14, i64 1
  %17 = load i32*, i32** @virtscsi_event_done, align 8
  store i32* %17, i32** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 1
  %19 = load i32*, i32** @virtscsi_req_done, align 8
  store i32* %19, i32** %18, align 8
  %20 = bitcast [3 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([3 x i8*]* @__const.virtscsi_init.names to i8*), i64 24, i1 false)
  %21 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %22 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**)*, i32 (%struct.virtio_device*, i32, %struct.virtqueue**, i32**, i8**)** %24, align 8
  %26 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %27 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %9, i64 0, i64 0
  %28 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %29 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %30 = call i32 %25(%struct.virtio_device* %26, i32 3, %struct.virtqueue** %27, i32** %28, i8** %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %114

35:                                               ; preds = %3
  %36 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %37 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %36, i32 0, i32 3
  %38 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %9, i64 0, i64 0
  %39 = load %struct.virtqueue*, %struct.virtqueue** %38, align 16
  %40 = call i32 @virtscsi_init_vq(i32* %37, %struct.virtqueue* %39)
  %41 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %42 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %41, i32 0, i32 2
  %43 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %9, i64 0, i64 1
  %44 = load %struct.virtqueue*, %struct.virtqueue** %43, align 8
  %45 = call i32 @virtscsi_init_vq(i32* %42, %struct.virtqueue* %44)
  %46 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %47 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %46, i32 0, i32 1
  %48 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %9, i64 0, i64 2
  %49 = load %struct.virtqueue*, %struct.virtqueue** %48, align 16
  %50 = call i32 @virtscsi_init_vq(i32* %47, %struct.virtqueue* %49)
  %51 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %52 = load i32, i32* @cdb_size, align 4
  %53 = load i32, i32* @VIRTIO_SCSI_CDB_SIZE, align 4
  %54 = call i32 @virtscsi_config_set(%struct.virtio_device* %51, i32 %52, i32 %53)
  %55 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %56 = load i32, i32* @sense_size, align 4
  %57 = load i32, i32* @VIRTIO_SCSI_SENSE_SIZE, align 4
  %58 = call i32 @virtscsi_config_set(%struct.virtio_device* %55, i32 %56, i32 %57)
  %59 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %60 = load i32, i32* @VIRTIO_SCSI_F_HOTPLUG, align 4
  %61 = call i64 @virtio_has_feature(%struct.virtio_device* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %35
  %64 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %65 = call i32 @virtscsi_kick_event_all(%struct.virtio_scsi* %64)
  br label %66

66:                                               ; preds = %63, %35
  %67 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %68 = load i32, i32* @seg_max, align 4
  %69 = call i64 @virtscsi_config_get(%struct.virtio_device* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %71
  %74 = phi i64 [ %69, %71 ], [ 1, %72 ]
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %102, %73
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @virtscsi_alloc_tgt(%struct.virtio_device* %81, i32 %82)
  %84 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %85 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load %struct.virtio_scsi*, %struct.virtio_scsi** %6, align 8
  %91 = getelementptr inbounds %struct.virtio_scsi, %struct.virtio_scsi* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %80
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %106

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %76

105:                                              ; preds = %76
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %111 = call i32 @virtscsi_remove_vqs(%struct.virtio_device* %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %33
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @virtscsi_init_vq(i32*, %struct.virtqueue*) #2

declare dso_local i32 @virtscsi_config_set(%struct.virtio_device*, i32, i32) #2

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #2

declare dso_local i32 @virtscsi_kick_event_all(%struct.virtio_scsi*) #2

declare dso_local i64 @virtscsi_config_get(%struct.virtio_device*, i32) #2

declare dso_local i32 @virtscsi_alloc_tgt(%struct.virtio_device*, i32) #2

declare dso_local i32 @virtscsi_remove_vqs(%struct.virtio_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
