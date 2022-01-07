; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_config_rss_pf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_config_rss_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_rss_config_obj = type { i32, i64, i64 }
%struct.bnx2x_config_rss_params = type { i32, i32, i32, i32, i32, %struct.bnx2x_rss_config_obj*, i32* }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6 = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@MULTI_MASK = common dso_local global i32 0, align 4
@BNX2X_RSS_SET_SRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_rss_pf(%struct.bnx2x* %0, %struct.bnx2x_rss_config_obj* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_config_rss_params, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_rss_config_obj* %1, %struct.bnx2x_rss_config_obj** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.bnx2x_config_rss_params* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 40, i1 false)
  %9 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 5
  store %struct.bnx2x_rss_config_obj* %9, %struct.bnx2x_rss_config_obj** %10, align 8
  %11 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %12 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 4
  %13 = call i32 @__set_bit(i32 %11, i32* %12)
  %14 = load i32, i32* @BNX2X_RSS_MODE_REGULAR, align 4
  %15 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %16 = call i32 @__set_bit(i32 %14, i32* %15)
  %17 = load i32, i32* @BNX2X_RSS_IPV4, align 4
  %18 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %19 = call i32 @__set_bit(i32 %17, i32* %18)
  %20 = load i32, i32* @BNX2X_RSS_IPV4_TCP, align 4
  %21 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %22 = call i32 @__set_bit(i32 %20, i32* %21)
  %23 = load i32, i32* @BNX2X_RSS_IPV6, align 4
  %24 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %25 = call i32 @__set_bit(i32 %23, i32* %24)
  %26 = load i32, i32* @BNX2X_RSS_IPV6_TCP, align 4
  %27 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %28 = call i32 @__set_bit(i32 %26, i32* %27)
  %29 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @BNX2X_RSS_IPV4_UDP, align 4
  %35 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %36 = call i32 @__set_bit(i32 %34, i32* %35)
  br label %37

37:                                               ; preds = %33, %3
  %38 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @BNX2X_RSS_IPV6_UDP, align 4
  %44 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %45 = call i32 @__set_bit(i32 %43, i32* %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* @MULTI_MASK, align 4
  %48 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32 %50, i32 %53, i32 4)
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @prandom_bytes(i32 %59, i32 4)
  %61 = load i32, i32* @BNX2X_RSS_SET_SRCH, align 4
  %62 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %7, i32 0, i32 0
  %63 = call i32 @__set_bit(i32 %61, i32* %62)
  br label %64

64:                                               ; preds = %57, %46
  %65 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %66 = call i32 @bnx2x_config_rss(%struct.bnx2x* %65, %struct.bnx2x_config_rss_params* %7)
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @__set_bit(i32, i32*) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @prandom_bytes(i32, i32) #2

declare dso_local i32 @bnx2x_config_rss(%struct.bnx2x*, %struct.bnx2x_config_rss_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
