; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_MAC_ADDRESS = common dso_local global i32 0, align 4
@QLCNIC_GET_CURRENT_MAC = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to get mac address%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_mac_address(%struct.qlcnic_adapter* %0, i64* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_cmd_args, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = load i32, i32* @QLCNIC_CMD_MAC_ADDRESS, align 4
  %12 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %7, %struct.qlcnic_adapter* %10, i32 %11)
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = load i32, i32* @QLCNIC_GET_CURRENT_MAC, align 4
  %16 = call i32 @qlcnic_83xx_configure_mac(%struct.qlcnic_adapter* %13, i64* %14, i32 %15, %struct.qlcnic_cmd_args* %7)
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %17, %struct.qlcnic_cmd_args* %7)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %47, %22
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 1, %38
  %40 = mul nsw i32 %39, 8
  %41 = ashr i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = load i64*, i64** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %42, i64* %46, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %33

50:                                               ; preds = %33
  store i32 2, i32* %6, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 6
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 5, %56
  %58 = mul nsw i32 %57, 8
  %59 = ashr i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %51

68:                                               ; preds = %51
  br label %78

69:                                               ; preds = %2
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %69, %68
  %79 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %7)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_configure_mac(%struct.qlcnic_adapter*, i64*, i32, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
