; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_start_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_start_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, %struct.ricb }
%struct.ricb = type { i32, i32*, i32*, i32, i32, i64 }

@__const.ql_start_rss.init_hash_seed = private unnamed_addr constant [40 x i32] [i32 109, i32 90, i32 86, i32 218, i32 37, i32 91, i32 14, i32 194, i32 65, i32 103, i32 37, i32 61, i32 67, i32 163, i32 143, i32 176, i32 208, i32 202, i32 43, i32 203, i32 174, i32 123, i32 48, i32 180, i32 119, i32 203, i32 45, i32 163, i32 128, i32 48, i32 242, i32 12, i32 106, i32 66, i32 183, i32 59, i32 190, i32 172, i32 1, i32 250], align 16
@RSS_L4K = common dso_local global i32 0, align 4
@RSS_L6K = common dso_local global i32 0, align 4
@RSS_LI = common dso_local global i32 0, align 4
@RSS_LB = common dso_local global i32 0, align 4
@RSS_LM = common dso_local global i32 0, align 4
@RSS_RT4 = common dso_local global i32 0, align 4
@RSS_RT6 = common dso_local global i32 0, align 4
@CFG_LR = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed to load RICB.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_start_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_start_rss(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca [40 x i32], align 16
  %5 = alloca %struct.ricb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %9 = bitcast [40 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([40 x i32]* @__const.ql_start_rss.init_hash_seed to i8*), i64 160, i1 false)
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 2
  store %struct.ricb* %11, %struct.ricb** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.ricb*, %struct.ricb** %5, align 8
  %13 = getelementptr inbounds %struct.ricb, %struct.ricb* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load %struct.ricb*, %struct.ricb** %5, align 8
  %17 = bitcast %struct.ricb* %16 to i8*
  %18 = call i32 @memset(i8* %17, i32 0, i32 40)
  %19 = load i32, i32* @RSS_L4K, align 4
  %20 = load %struct.ricb*, %struct.ricb** %5, align 8
  %21 = getelementptr inbounds %struct.ricb, %struct.ricb* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @RSS_L6K, align 4
  %23 = load i32, i32* @RSS_LI, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RSS_LB, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RSS_LM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RSS_RT4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RSS_RT6, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.ricb*, %struct.ricb** %5, align 8
  %34 = getelementptr inbounds %struct.ricb, %struct.ricb* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = call i32 @cpu_to_le16(i32 1023)
  %36 = load %struct.ricb*, %struct.ricb** %5, align 8
  %37 = getelementptr inbounds %struct.ricb, %struct.ricb* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %52, %1
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 1024
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %42, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.ricb*, %struct.ricb** %5, align 8
  %57 = getelementptr inbounds %struct.ricb, %struct.ricb* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = bitcast i32* %59 to i8*
  %61 = getelementptr inbounds [40 x i32], [40 x i32]* %4, i64 0, i64 0
  %62 = call i32 @memcpy(i8* %60, i32* %61, i32 40)
  %63 = load %struct.ricb*, %struct.ricb** %5, align 8
  %64 = getelementptr inbounds %struct.ricb, %struct.ricb* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = bitcast i32* %66 to i8*
  %68 = getelementptr inbounds [40 x i32], [40 x i32]* %4, i64 0, i64 0
  %69 = call i32 @memcpy(i8* %67, i32* %68, i32 16)
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %71 = load %struct.ricb*, %struct.ricb** %5, align 8
  %72 = load i32, i32* @CFG_LR, align 4
  %73 = call i32 @ql_write_cfg(%struct.ql_adapter* %70, %struct.ricb* %71, i32 40, i32 %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %55
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %78 = load i32, i32* @ifup, align 4
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netif_err(%struct.ql_adapter* %77, i32 %78, i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %55
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %76
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

declare dso_local i32 @ql_write_cfg(%struct.ql_adapter*, %struct.ricb*, i32, i32, i32) #2

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
