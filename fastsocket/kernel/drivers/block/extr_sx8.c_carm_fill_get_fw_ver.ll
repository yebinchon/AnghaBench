; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_fill_get_fw_ver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_fill_get_fw_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i32 }
%struct.carm_msg_get_fw_ver = type { i8*, i8*, i32, i32 }

@CARM_MSG_MISC = common dso_local global i32 0, align 4
@MISC_GET_FW_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, i32, i8*)* @carm_fill_get_fw_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_fill_get_fw_ver(%struct.carm_host* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.carm_msg_get_fw_ver*, align 8
  %8 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.carm_msg_get_fw_ver*
  store %struct.carm_msg_get_fw_ver* %10, %struct.carm_msg_get_fw_ver** %7, align 8
  %11 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @carm_ref_msg_dma(%struct.carm_host* %11, i32 %12)
  %14 = add i64 %13, 24
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.carm_msg_get_fw_ver*, %struct.carm_msg_get_fw_ver** %7, align 8
  %17 = call i32 @memset(%struct.carm_msg_get_fw_ver* %16, i32 0, i32 24)
  %18 = load i32, i32* @CARM_MSG_MISC, align 4
  %19 = load %struct.carm_msg_get_fw_ver*, %struct.carm_msg_get_fw_ver** %7, align 8
  %20 = getelementptr inbounds %struct.carm_msg_get_fw_ver, %struct.carm_msg_get_fw_ver* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MISC_GET_FW_VER, align 4
  %22 = load %struct.carm_msg_get_fw_ver*, %struct.carm_msg_get_fw_ver** %7, align 8
  %23 = getelementptr inbounds %struct.carm_msg_get_fw_ver, %struct.carm_msg_get_fw_ver* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TAG_ENCODE(i32 %24)
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load %struct.carm_msg_get_fw_ver*, %struct.carm_msg_get_fw_ver** %7, align 8
  %28 = getelementptr inbounds %struct.carm_msg_get_fw_ver, %struct.carm_msg_get_fw_ver* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.carm_msg_get_fw_ver*, %struct.carm_msg_get_fw_ver** %7, align 8
  %32 = getelementptr inbounds %struct.carm_msg_get_fw_ver, %struct.carm_msg_get_fw_ver* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  ret i32 28
}

declare dso_local i64 @carm_ref_msg_dma(%struct.carm_host*, i32) #1

declare dso_local i32 @memset(%struct.carm_msg_get_fw_ver*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @TAG_ENCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
