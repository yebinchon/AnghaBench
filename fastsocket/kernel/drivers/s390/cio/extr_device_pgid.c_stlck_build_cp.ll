; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_stlck_build_cp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_device_pgid.c_stlck_build_cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ccw1*, %struct.ccw_request }
%struct.ccw1 = type { i32, i64, i8*, i32 }
%struct.ccw_request = type { %struct.ccw1* }

@CCW_CMD_STLCK = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i64 0, align 8
@CCW_CMD_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i8*, i8*)* @stlck_build_cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stlck_build_cp(%struct.ccw_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ccw_request*, align 8
  %8 = alloca %struct.ccw1*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %10 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.ccw_request* %12, %struct.ccw_request** %7, align 8
  %13 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %14 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ccw1*, %struct.ccw1** %16, align 8
  store %struct.ccw1* %17, %struct.ccw1** %8, align 8
  %18 = load i32, i32* @CCW_CMD_STLCK, align 4
  %19 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %20 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %19, i64 0
  %21 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %26 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %25, i64 0
  %27 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %29 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %28, i64 0
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 0
  store i32 32, i32* %30, align 8
  %31 = load i64, i64* @CCW_FLAG_CC, align 8
  %32 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %33 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %32, i64 0
  %34 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load i32, i32* @CCW_CMD_RELEASE, align 4
  %36 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %37 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %36, i64 1
  %38 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %43 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %42, i64 1
  %44 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %43, i32 0, i32 2
  store i8* %41, i8** %44, align 8
  %45 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %46 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %45, i64 1
  %47 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %46, i32 0, i32 0
  store i32 32, i32* %47, align 8
  %48 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %49 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %48, i64 1
  %50 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.ccw1*, %struct.ccw1** %8, align 8
  %52 = load %struct.ccw_request*, %struct.ccw_request** %7, align 8
  %53 = getelementptr inbounds %struct.ccw_request, %struct.ccw_request* %52, i32 0, i32 0
  store %struct.ccw1* %51, %struct.ccw1** %53, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
