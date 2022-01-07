; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc_sch.c_chsc_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_async_area = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.chsc_request = type { i32 }
%struct.chsc_private = type { %struct.chsc_request* }
%struct.subchannel = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_9__, %struct.chsc_private* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_DEFAULT_KEY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"schid\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"cc:%d\00", align 1
@SCSW_FCTL_START_FUNC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"chsc on 0.%x.%04x returned cc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chsc_async_area*, %struct.chsc_request*)* @chsc_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chsc_async(%struct.chsc_async_area* %0, %struct.chsc_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.chsc_async_area*, align 8
  %5 = alloca %struct.chsc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chsc_private*, align 8
  %8 = alloca %struct.subchannel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [10 x i8], align 1
  store %struct.chsc_async_area* %0, %struct.chsc_async_area** %4, align 8
  store %struct.chsc_request* %1, %struct.chsc_request** %5, align 8
  store %struct.subchannel* null, %struct.subchannel** %8, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @PAGE_DEFAULT_KEY, align 4
  %14 = load %struct.chsc_async_area*, %struct.chsc_async_area** %4, align 8
  %15 = getelementptr inbounds %struct.chsc_async_area, %struct.chsc_async_area* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %110, %33, %2
  %18 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %19 = call %struct.subchannel* @chsc_get_next_subchannel(%struct.subchannel* %18)
  store %struct.subchannel* %19, %struct.subchannel** %8, align 8
  %20 = icmp ne %struct.subchannel* %19, null
  br i1 %20, label %21, label %111

21:                                               ; preds = %17
  %22 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @spin_lock(i32 %24)
  %26 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %27 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %26, i32 0, i32 4
  %28 = load %struct.chsc_private*, %struct.chsc_private** %27, align 8
  store %struct.chsc_private* %28, %struct.chsc_private** %7, align 8
  %29 = load %struct.chsc_private*, %struct.chsc_private** %7, align 8
  %30 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %29, i32 0, i32 0
  %31 = load %struct.chsc_request*, %struct.chsc_request** %30, align 8
  %32 = icmp ne %struct.chsc_request* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %35 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spin_unlock(i32 %36)
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %17

40:                                               ; preds = %21
  %41 = load %struct.chsc_async_area*, %struct.chsc_async_area** %4, align 8
  %42 = getelementptr inbounds %struct.chsc_async_area, %struct.chsc_async_area* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %45 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_10__* %43 to i8*
  %47 = bitcast %struct.TYPE_10__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  %48 = call i32 @CHSC_LOG(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %50 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %49, i32 0, i32 1
  %51 = call i32 @CHSC_LOG_HEX(i32 2, %struct.TYPE_10__* %50, i32 8)
  %52 = load %struct.chsc_async_area*, %struct.chsc_async_area** %4, align 8
  %53 = call i32 @chsc(%struct.chsc_async_area* %52)
  store i32 %53, i32* %6, align 4
  %54 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %58 = call i32 @CHSC_LOG(i32 2, i8* %57)
  %59 = load i32, i32* %6, align 4
  switch i32 %59, label %78 [
    i32 0, label %60
    i32 1, label %61
    i32 2, label %75
  ]

60:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %81

61:                                               ; preds = %40
  %62 = load i32, i32* @SCSW_FCTL_START_FUNC, align 4
  %63 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %64 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %62
  store i32 %69, i32* %67, align 8
  %70 = load i32, i32* @EINPROGRESS, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  %72 = load %struct.chsc_request*, %struct.chsc_request** %5, align 8
  %73 = load %struct.chsc_private*, %struct.chsc_private** %7, align 8
  %74 = getelementptr inbounds %struct.chsc_private, %struct.chsc_private* %73, i32 0, i32 0
  store %struct.chsc_request* %72, %struct.chsc_request** %74, align 8
  br label %81

75:                                               ; preds = %40
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %81

78:                                               ; preds = %40
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %75, %61, %60
  %82 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %83 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @spin_unlock(i32 %84)
  %86 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %87 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %91 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @CHSC_MSG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %93, i32 %94)
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @EINPROGRESS, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %81
  %101 = load i32, i32* @EINPROGRESS, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %113

103:                                              ; preds = %81
  %104 = load %struct.subchannel*, %struct.subchannel** %8, align 8
  %105 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %104, i32 0, i32 0
  %106 = call i32 @put_device(i32* %105)
  %107 = load i32, i32* %9, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %113

110:                                              ; preds = %103
  br label %17

111:                                              ; preds = %17
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %109, %100
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.subchannel* @chsc_get_next_subchannel(%struct.subchannel*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @CHSC_LOG(i32, i8*) #1

declare dso_local i32 @CHSC_LOG_HEX(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @chsc(%struct.chsc_async_area*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @CHSC_MSG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
