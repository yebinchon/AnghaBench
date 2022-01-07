; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_ipaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_CONFIGURE_IP_ADDR = common dso_local global i32 0, align 4
@QLCNIC_IP_UP = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not notify %s IP 0x%x request\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_config_ipaddr(%struct.qlcnic_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_cmd_args, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = load i32, i32* @QLCNIC_CMD_CONFIGURE_IP_ADDR, align 4
  %13 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %10, %struct.qlcnic_adapter* %11, i32 %12)
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = call i32 @qlcnic_83xx_set_interface_id_ipaddr(%struct.qlcnic_adapter* %14, i32* %8)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @QLCNIC_IP_UP, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = or i32 1, %20
  %22 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %21, i32* %25, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = or i32 2, %27
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = call i32 @swab32(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = call i32 @memcpy(i32* %40, i32* %9, i32 4)
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %43 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %42, %struct.qlcnic_cmd_args* %10)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %33
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @QLCNIC_IP_UP, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %47, %33
  %60 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %10)
  ret void
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_set_interface_id_ipaddr(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
