; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_get_mc_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_get_mc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_fpmc = type { i32, i32 }
%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.s_fpmc* }
%struct.fddi_addr = type { i32* }

@FPMAX_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s_fpmc* (%struct.s_smc*, %struct.fddi_addr*, %struct.fddi_addr*, i32, i32)* @mac_get_mc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s_fpmc* @mac_get_mc_table(%struct.s_smc* %0, %struct.fddi_addr* %1, %struct.fddi_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.s_fpmc*, align 8
  %7 = alloca %struct.s_smc*, align 8
  %8 = alloca %struct.fddi_addr*, align 8
  %9 = alloca %struct.fddi_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.s_fpmc*, align 8
  %13 = alloca %struct.s_fpmc*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %7, align 8
  store %struct.fddi_addr* %1, %struct.fddi_addr** %8, align 8
  store %struct.fddi_addr* %2, %struct.fddi_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.fddi_addr*, %struct.fddi_addr** %9, align 8
  %17 = load %struct.fddi_addr*, %struct.fddi_addr** %8, align 8
  %18 = bitcast %struct.fddi_addr* %16 to i8*
  %19 = bitcast %struct.fddi_addr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %5
  %23 = load %struct.fddi_addr*, %struct.fddi_addr** %9, align 8
  %24 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %34, %22
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 6
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bitrev8(i32 %31)
  %33 = load i32*, i32** %14, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %15, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %14, align 8
  br label %26

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %5
  store %struct.s_fpmc* null, %struct.s_fpmc** %13, align 8
  store i32 0, i32* %15, align 4
  %41 = load %struct.s_smc*, %struct.s_smc** %7, align 8
  %42 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.s_fpmc*, %struct.s_fpmc** %45, align 8
  store %struct.s_fpmc* %46, %struct.s_fpmc** %12, align 8
  br label %47

47:                                               ; preds = %76, %40
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @FPMAX_MULTICAST, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.s_fpmc*, %struct.s_fpmc** %12, align 8
  %53 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.s_fpmc*, %struct.s_fpmc** %13, align 8
  %61 = icmp ne %struct.s_fpmc* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load %struct.s_fpmc*, %struct.s_fpmc** %12, align 8
  store %struct.s_fpmc* %63, %struct.s_fpmc** %13, align 8
  br label %64

64:                                               ; preds = %62, %59, %56
  br label %76

65:                                               ; preds = %51
  %66 = load %struct.s_fpmc*, %struct.s_fpmc** %12, align 8
  %67 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %66, i32 0, i32 0
  %68 = bitcast i32* %67 to i8*
  %69 = load %struct.fddi_addr*, %struct.fddi_addr** %9, align 8
  %70 = bitcast %struct.fddi_addr* %69 to i8*
  %71 = call i64 @memcmp(i8* %68, i8* %70, i32 6)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %76

74:                                               ; preds = %65
  %75 = load %struct.s_fpmc*, %struct.s_fpmc** %12, align 8
  store %struct.s_fpmc* %75, %struct.s_fpmc** %6, align 8
  br label %83

76:                                               ; preds = %73, %64
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = load %struct.s_fpmc*, %struct.s_fpmc** %12, align 8
  %80 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %79, i32 1
  store %struct.s_fpmc* %80, %struct.s_fpmc** %12, align 8
  br label %47

81:                                               ; preds = %47
  %82 = load %struct.s_fpmc*, %struct.s_fpmc** %13, align 8
  store %struct.s_fpmc* %82, %struct.s_fpmc** %6, align 8
  br label %83

83:                                               ; preds = %81, %74
  %84 = load %struct.s_fpmc*, %struct.s_fpmc** %6, align 8
  ret %struct.s_fpmc* %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bitrev8(i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
