; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@__const.qlcnic_83xx_config_rss.key = private unnamed_addr constant [5 x i32] [i32 1782757179, i32 2009804195, i32 -792056885, i32 1097278781, i32 1834637018], align 16
@QLCNIC_CMD_CONFIGURE_RSS = common dso_local global i32 0, align 4
@RSS_HASHTYPE_IP_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"RSS config failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_config_rss(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_cmd_args, align 8
  %8 = alloca [5 x i32], align 16
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([5 x i32]* @__const.qlcnic_83xx_config_rss.key to i8*), i64 20, i1 false)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = load i32, i32* @QLCNIC_CMD_CONFIGURE_RSS, align 4
  %12 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %7, %struct.qlcnic_adapter* %10, i32 %11)
  %13 = load i32, i32* @RSS_HASHTYPE_IP_TCP, align 4
  %14 = and i32 %13, 3
  %15 = shl i32 %14, 4
  %16 = load i32, i32* @RSS_HASHTYPE_IP_TCP, align 4
  %17 = and i32 %16, 3
  %18 = shl i32 %17, 6
  %19 = or i32 %15, %18
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = shl i32 %21, 8
  %23 = or i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = or i64 %24, 458752
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  %41 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 20)
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %47, %struct.qlcnic_cmd_args* %7)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %2
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %2
  %58 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %7)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #2

declare dso_local i32 @dev_info(i32*, i8*) #2

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
