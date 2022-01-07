; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_assign_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_file_ops.c_ipath_assign_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ipath_filedata*, %struct.TYPE_6__ }
%struct.ipath_filedata = type { i32, i32, %struct.ipath_portdata* }
%struct.ipath_portdata = type { i32, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ipath_user_info = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@IPATH_USER_SWMAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"User major version %d not same as driver major %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IPATH_USER_SWMINOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"User minor version %d not same as driver minor %d\0A\00", align 1
@ipath_mutex = common dso_local global i32 0, align 4
@IPATH_USER_MINOR_BASE = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"open on dev %lx (minor %d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.ipath_user_info*)* @ipath_assign_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_assign_port(%struct.file* %0, %struct.ipath_user_info* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.ipath_user_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipath_filedata*, align 8
  %10 = alloca %struct.ipath_portdata*, align 8
  %11 = alloca %struct.ipath_devdata*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.ipath_user_info* %1, %struct.ipath_user_info** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call i64 @port_fp(%struct.file* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %141

18:                                               ; preds = %2
  %19 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %20 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IPATH_USER_SWMAJOR, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %28 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 16
  %31 = load i32, i32* @IPATH_USER_SWMAJOR, align 4
  %32 = call i32 @ipath_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %141

35:                                               ; preds = %18
  %36 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %37 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 65535
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IPATH_USER_SWMINOR, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IPATH_USER_SWMINOR, align 4
  %46 = call i32 @ipath_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %35
  %48 = call i32 @mutex_lock(i32* @ipath_mutex)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @ipath_compatible_subports(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %55 = getelementptr inbounds %struct.ipath_user_info, %struct.ipath_user_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.file*, %struct.file** %3, align 8
  %60 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %61 = call i32 @find_shared_port(%struct.file* %59, %struct.ipath_user_info* %60)
  store i32 %61, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %63
  br label %102

68:                                               ; preds = %58, %53, %47
  %69 = load %struct.file*, %struct.file** %3, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @iminor(%struct.TYPE_8__* %74)
  %76 = load i32, i32* @IPATH_USER_MINOR_BASE, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* @VERBOSE, align 4
  %79 = load %struct.file*, %struct.file** %3, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ipath_cdbg(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %86, i32 %87)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %68
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load %struct.file*, %struct.file** %3, align 8
  %95 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %96 = call i32 @find_free_port(i32 %93, %struct.file* %94, %struct.ipath_user_info* %95)
  store i32 %96, i32* %5, align 4
  br label %101

97:                                               ; preds = %68
  %98 = load %struct.file*, %struct.file** %3, align 8
  %99 = load %struct.ipath_user_info*, %struct.ipath_user_info** %4, align 8
  %100 = call i32 @find_best_unit(%struct.file* %98, %struct.ipath_user_info* %99)
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %67
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %102
  %106 = load %struct.file*, %struct.file** %3, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 0
  %108 = load %struct.ipath_filedata*, %struct.ipath_filedata** %107, align 8
  store %struct.ipath_filedata* %108, %struct.ipath_filedata** %9, align 8
  %109 = load %struct.ipath_filedata*, %struct.ipath_filedata** %9, align 8
  %110 = getelementptr inbounds %struct.ipath_filedata, %struct.ipath_filedata* %109, i32 0, i32 2
  %111 = load %struct.ipath_portdata*, %struct.ipath_portdata** %110, align 8
  store %struct.ipath_portdata* %111, %struct.ipath_portdata** %10, align 8
  %112 = load %struct.ipath_portdata*, %struct.ipath_portdata** %10, align 8
  %113 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %112, i32 0, i32 1
  %114 = load %struct.ipath_devdata*, %struct.ipath_devdata** %113, align 8
  store %struct.ipath_devdata* %114, %struct.ipath_devdata** %11, align 8
  %115 = load %struct.ipath_devdata*, %struct.ipath_devdata** %11, align 8
  %116 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.ipath_devdata*, %struct.ipath_devdata** %11, align 8
  %120 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ipath_portdata*, %struct.ipath_portdata** %10, align 8
  %123 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ipath_filedata*, %struct.ipath_filedata** %9, align 8
  %126 = getelementptr inbounds %struct.ipath_filedata, %struct.ipath_filedata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ipath_user_sdma_queue_create(i32* %118, i32 %121, i32 %124, i32 %127)
  %129 = load %struct.ipath_filedata*, %struct.ipath_filedata** %9, align 8
  %130 = getelementptr inbounds %struct.ipath_filedata, %struct.ipath_filedata* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ipath_filedata*, %struct.ipath_filedata** %9, align 8
  %132 = getelementptr inbounds %struct.ipath_filedata, %struct.ipath_filedata* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %105
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %135, %105
  br label %139

139:                                              ; preds = %138, %102
  %140 = call i32 @mutex_unlock(i32* @ipath_mutex)
  br label %141

141:                                              ; preds = %139, %26, %15
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @port_fp(%struct.file*) #1

declare dso_local i32 @ipath_dbg(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ipath_compatible_subports(i32, i32) #1

declare dso_local i32 @find_shared_port(%struct.file*, %struct.ipath_user_info*) #1

declare dso_local i32 @iminor(%struct.TYPE_8__*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, i32) #1

declare dso_local i32 @find_free_port(i32, %struct.file*, %struct.ipath_user_info*) #1

declare dso_local i32 @find_best_unit(%struct.file*, %struct.ipath_user_info*) #1

declare dso_local i32 @ipath_user_sdma_queue_create(i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
