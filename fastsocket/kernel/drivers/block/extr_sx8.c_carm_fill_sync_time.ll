; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_fill_sync_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_fill_sync_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i32 }
%struct.timeval = type { i32 }
%struct.carm_msg_sync_time = type { i8*, i8*, i32, i32 }

@CARM_MSG_MISC = common dso_local global i32 0, align 4
@MISC_SET_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32, i8*)* @carm_fill_sync_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_fill_sync_time(%struct.carm_host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.carm_msg_sync_time*, align 8
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.carm_msg_sync_time*
  store %struct.carm_msg_sync_time* %10, %struct.carm_msg_sync_time** %8, align 8
  %11 = call i32 @do_gettimeofday(%struct.timeval* %7)
  %12 = load %struct.carm_msg_sync_time*, %struct.carm_msg_sync_time** %8, align 8
  %13 = call i32 @memset(%struct.carm_msg_sync_time* %12, i32 0, i32 24)
  %14 = load i32, i32* @CARM_MSG_MISC, align 4
  %15 = load %struct.carm_msg_sync_time*, %struct.carm_msg_sync_time** %8, align 8
  %16 = getelementptr inbounds %struct.carm_msg_sync_time, %struct.carm_msg_sync_time* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @MISC_SET_TIME, align 4
  %18 = load %struct.carm_msg_sync_time*, %struct.carm_msg_sync_time** %8, align 8
  %19 = getelementptr inbounds %struct.carm_msg_sync_time, %struct.carm_msg_sync_time* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TAG_ENCODE(i32 %20)
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.carm_msg_sync_time*, %struct.carm_msg_sync_time** %8, align 8
  %24 = getelementptr inbounds %struct.carm_msg_sync_time, %struct.carm_msg_sync_time* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.carm_msg_sync_time*, %struct.carm_msg_sync_time** %8, align 8
  %29 = getelementptr inbounds %struct.carm_msg_sync_time, %struct.carm_msg_sync_time* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  ret i32 24
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @memset(%struct.carm_msg_sync_time*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TAG_ENCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
