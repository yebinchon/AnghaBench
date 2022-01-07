; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_set_fw_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_set_fw_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_nic_req = type { i8**, i8*, i8* }
%struct.cmd_desc_type0 = type { i32 }

@QLCNIC_HOST_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_H2C_OPCODE_CONFIG_LOOPBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%sting loopback mode failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @qlcnic_set_fw_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_fw_loopback(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_nic_req, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @memset(%struct.qlcnic_nic_req* %5, i32 0, i32 24)
  %8 = load i32, i32* @QLCNIC_HOST_REQUEST, align 4
  %9 = shl i32 %8, 23
  %10 = call i8* @cpu_to_le64(i32 %9)
  %11 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* @QLCNIC_H2C_OPCODE_CONFIG_LOOPBACK, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 16
  %18 = or i32 %12, %17
  %19 = or i32 %18, undef
  %20 = call i8* @cpu_to_le64(i32 %19)
  %21 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @cpu_to_le64(i32 %22)
  %24 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = bitcast %struct.qlcnic_nic_req* %5 to %struct.cmd_desc_type0*
  %29 = call i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %27, %struct.cmd_desc_type0* %28, i32 1)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %32, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
