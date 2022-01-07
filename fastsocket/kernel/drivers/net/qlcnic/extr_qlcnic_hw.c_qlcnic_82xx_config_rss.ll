; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_config_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_hw.c_qlcnic_82xx_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_nic_req = type { i8**, i8*, i8* }
%struct.cmd_desc_type0 = type { i32 }

@qlcnic_82xx_config_rss.key = internal constant [5 x i32] [i32 1782757179, i32 2009804195, i32 -792056885, i32 1097278781, i32 1834637018], align 16
@QLCNIC_HOST_REQUEST = common dso_local global i32 0, align 4
@QLCNIC_H2C_OPCODE_CONFIG_RSS = common dso_local global i32 0, align 4
@QLCNIC_RSS_HASHTYPE_IP_TCP = common dso_local global i32 0, align 4
@QLCNIC_RSS_IND_TABLE_MASK = common dso_local global i64 0, align 8
@QLCNIC_ENABLE_TYPE_C_RSS = common dso_local global i64 0, align 8
@QLCNIC_RSS_FEATURE_FLAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"could not configure RSS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_config_rss(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_nic_req, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%struct.qlcnic_nic_req* %5, i32 0, i32 24)
  %10 = load i32, i32* @QLCNIC_HOST_REQUEST, align 4
  %11 = shl i32 %10, 23
  %12 = call i8* @cpu_to_le64(i32 %11)
  %13 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* @QLCNIC_H2C_OPCODE_CONFIG_RSS, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 %18, 16
  %20 = or i32 %14, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @cpu_to_le64(i32 %21)
  %23 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* @QLCNIC_RSS_HASHTYPE_IP_TCP, align 4
  %25 = and i32 %24, 3
  %26 = shl i32 %25, 4
  %27 = load i32, i32* @QLCNIC_RSS_HASHTYPE_IP_TCP, align 4
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 6
  %30 = or i32 %26, %29
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 1
  %33 = shl i32 %32, 8
  %34 = or i32 %30, %33
  %35 = load i64, i64* @QLCNIC_RSS_IND_TABLE_MASK, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 48
  %38 = or i32 %34, %37
  %39 = load i64, i64* @QLCNIC_ENABLE_TYPE_C_RSS, align 8
  %40 = trunc i64 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i64, i64* @QLCNIC_RSS_FEATURE_FLAG, align 8
  %43 = trunc i64 %42 to i32
  %44 = or i32 %41, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @cpu_to_le64(i32 %45)
  %47 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %46, i8** %49, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %65, %2
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 5
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* @qlcnic_82xx_config_rss.key, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le64(i32 %57)
  %59 = getelementptr inbounds %struct.qlcnic_nic_req, %struct.qlcnic_nic_req* %5, i32 0, i32 0
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  store i8* %58, i8** %64, align 8
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %70 = bitcast %struct.qlcnic_nic_req* %5 to %struct.cmd_desc_type0*
  %71 = call i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter* %69, %struct.cmd_desc_type0* %70, i32 1)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %74, %68
  %81 = load i32, i32* %8, align 4
  ret i32 %81
}

declare dso_local i32 @memset(%struct.qlcnic_nic_req*, i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @qlcnic_send_cmd_descs(%struct.qlcnic_adapter*, %struct.cmd_desc_type0*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
