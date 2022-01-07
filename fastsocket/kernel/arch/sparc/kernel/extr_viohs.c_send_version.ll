; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_send_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_send_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i64 }
%struct.vio_ver_info = type { i32, i32, i8*, i8* }

@VIO_TYPE_CTRL = common dso_local global i32 0, align 4
@VIO_SUBTYPE_INFO = common dso_local global i32 0, align 4
@VIO_VER_INFO = common dso_local global i32 0, align 4
@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SEND VERSION INFO maj[%u] min[%u] devclass[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, i8*, i8*)* @send_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_version(%struct.vio_driver_state* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vio_ver_info, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i64 (...) @sched_clock()
  %9 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %10 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = call i32 @memset(%struct.vio_ver_info* %7, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %7, i32 0, i32 0
  %13 = load i32, i32* @VIO_TYPE_CTRL, align 4
  %14 = load i32, i32* @VIO_SUBTYPE_INFO, align 4
  %15 = load i32, i32* @VIO_VER_INFO, align 4
  %16 = call i32 @init_tag(i32* %12, i32 %13, i32 %14, i32 %15)
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %7, i32 0, i32 3
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %7, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %22 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @HS, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %29 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @viodbg(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27, i32 %30)
  %32 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %33 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %7, i32 0, i32 0
  %34 = call i32 @send_ctrl(%struct.vio_driver_state* %32, i32* %33, i32 24)
  ret i32 %34
}

declare dso_local i64 @sched_clock(...) #1

declare dso_local i32 @memset(%struct.vio_ver_info*, i32, i32) #1

declare dso_local i32 @init_tag(i32*, i32, i32, i32) #1

declare dso_local i32 @viodbg(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @send_ctrl(%struct.vio_driver_state*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
