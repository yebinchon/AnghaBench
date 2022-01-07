; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_logout_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_logout_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_9__*, i32, %struct.TYPE_7__*, %struct.sbp2_fwhost_info* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sbp2_fwhost_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SBP2_LOGOUT_REQUEST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Logged out of SBP-2 device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_lu*)* @sbp2_logout_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_logout_device(%struct.sbp2_lu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sbp2_lu*, align 8
  %4 = alloca %struct.sbp2_fwhost_info*, align 8
  %5 = alloca [2 x %struct.TYPE_9__], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %3, align 8
  %8 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %9 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %8, i32 0, i32 6
  %10 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %9, align 8
  store %struct.sbp2_fwhost_info* %10, %struct.sbp2_fwhost_info** %4, align 8
  %11 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %12 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %16 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %20 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %24 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* @SBP2_LOGOUT_REQUEST, align 4
  %28 = call i32 @ORB_SET_FUNCTION(i32 %27)
  %29 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %30 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 7
  store i32 %28, i32* %32, align 4
  %33 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %34 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %33, i32 0, i32 5
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ORB_SET_LOGIN_ID(i32 %37)
  %39 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %40 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %39, i32 0, i32 3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = call i32 @ORB_SET_NOTIFY(i32 1)
  %46 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %47 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %53 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %52, i32 0, i32 3
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  store i32 0, i32* %55, align 4
  %56 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %57 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %60 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ORB_SET_STATUS_FIFO_HI(i32 %58, i32 %63)
  %65 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %66 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %65, i32 0, i32 3
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 6
  store i32 %64, i32* %68, align 4
  %69 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %70 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ORB_SET_STATUS_FIFO_LO(i32 %71)
  %73 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %74 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 5
  store i32 %72, i32* %76, align 4
  %77 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %78 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = call i32 @sbp2util_cpu_to_be32_buffer(%struct.TYPE_9__* %79, i32 4)
  %81 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %5, i64 0, i64 0
  %82 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %4, align 8
  %83 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  call void @ORB_SET_NODE_ID(%struct.TYPE_9__* sret %7, i32 %86)
  %87 = bitcast %struct.TYPE_9__* %81 to i8*
  %88 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %87, i8* align 4 %88, i64 32, i1 false)
  %89 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %5, i64 0, i64 1
  %90 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %91 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %90, i32 0, i32 2
  %92 = bitcast %struct.TYPE_9__* %89 to i8*
  %93 = bitcast %struct.TYPE_9__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %92, i8* align 8 %93, i64 32, i1 false)
  %94 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %5, i64 0, i64 0
  %95 = call i32 @sbp2util_cpu_to_be32_buffer(%struct.TYPE_9__* %94, i32 8)
  %96 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %97 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %100 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds [2 x %struct.TYPE_9__], [2 x %struct.TYPE_9__]* %5, i64 0, i64 0
  %103 = call i32 @hpsb_node_write(i32 %98, i32 %101, %struct.TYPE_9__* %102, i32 8)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %1
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %118

108:                                              ; preds = %1
  %109 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %110 = load i32, i32* @HZ, align 4
  %111 = call i64 @sbp2util_access_timeout(%struct.sbp2_lu* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %118

116:                                              ; preds = %108
  %117 = call i32 @SBP2_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %113, %106
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ORB_SET_FUNCTION(i32) #1

declare dso_local i32 @ORB_SET_LOGIN_ID(i32) #1

declare dso_local i32 @ORB_SET_NOTIFY(i32) #1

declare dso_local i32 @ORB_SET_STATUS_FIFO_HI(i32, i32) #1

declare dso_local i32 @ORB_SET_STATUS_FIFO_LO(i32) #1

declare dso_local i32 @sbp2util_cpu_to_be32_buffer(%struct.TYPE_9__*, i32) #1

declare dso_local void @ORB_SET_NODE_ID(%struct.TYPE_9__* sret, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hpsb_node_write(i32, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @sbp2util_access_timeout(%struct.sbp2_lu*, i32) #1

declare dso_local i32 @SBP2_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
