; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_speed_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_sfp_speed_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_sfp_s = type { i64 }
%struct.sfp_mem_s = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sfp_xcvr_s = type { %union.sfp_xcvr_e10g_code_u, %union.sfp_xcvr_fc3_code_u }
%union.sfp_xcvr_e10g_code_u = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%union.sfp_xcvr_fc3_code_u = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }

@BFA_PORT_SPEED_10GBPS = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_STATUS_UNSUPP_SPEED = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_16GBPS = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_8GBPS = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_4GBPS = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_2GBPS = common dso_local global i32 0, align 4
@BFA_PORT_SPEED_1GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_sfp_s*, i32)* @bfa_sfp_speed_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_sfp_speed_valid(%struct.bfa_sfp_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_sfp_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sfp_mem_s*, align 8
  %7 = alloca %struct.sfp_xcvr_s*, align 8
  %8 = alloca %union.sfp_xcvr_fc3_code_u, align 8
  %9 = alloca %union.sfp_xcvr_e10g_code_u, align 8
  store %struct.bfa_sfp_s* %0, %struct.bfa_sfp_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_sfp_s, %struct.bfa_sfp_s* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.sfp_mem_s*
  store %struct.sfp_mem_s* %13, %struct.sfp_mem_s** %6, align 8
  %14 = load %struct.sfp_mem_s*, %struct.sfp_mem_s** %6, align 8
  %15 = getelementptr inbounds %struct.sfp_mem_s, %struct.sfp_mem_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.sfp_xcvr_s*
  store %struct.sfp_xcvr_s* %18, %struct.sfp_xcvr_s** %7, align 8
  %19 = load %struct.sfp_xcvr_s*, %struct.sfp_xcvr_s** %7, align 8
  %20 = getelementptr inbounds %struct.sfp_xcvr_s, %struct.sfp_xcvr_s* %19, i32 0, i32 1
  %21 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to i8*
  %22 = bitcast %union.sfp_xcvr_fc3_code_u* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 40, i1 false)
  %23 = load %struct.sfp_xcvr_s*, %struct.sfp_xcvr_s** %7, align 8
  %24 = getelementptr inbounds %struct.sfp_xcvr_s, %struct.sfp_xcvr_s* %23, i32 0, i32 0
  %25 = bitcast %union.sfp_xcvr_e10g_code_u* %9 to i8*
  %26 = bitcast %union.sfp_xcvr_e10g_code_u* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @BFA_PORT_SPEED_10GBPS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %2
  %31 = bitcast %union.sfp_xcvr_e10g_code_u* %9 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = bitcast %union.sfp_xcvr_e10g_code_u* %9 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %113

42:                                               ; preds = %35
  %43 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %4, align 8
  %44 = bitcast %union.sfp_xcvr_e10g_code_u* %9 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bfa_trc(%struct.bfa_sfp_s* %43, i32 %45)
  %47 = load i32, i32* @BFA_STATUS_UNSUPP_SPEED, align 4
  store i32 %47, i32* %3, align 4
  br label %113

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @BFA_PORT_SPEED_16GBPS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %98, label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BFA_PORT_SPEED_8GBPS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @BFA_PORT_SPEED_4GBPS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to %struct.TYPE_6__*
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @BFA_PORT_SPEED_2GBPS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to %struct.TYPE_6__*
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @BFA_PORT_SPEED_1GBPS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to %struct.TYPE_6__*
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93, %83, %73, %63, %53
  %99 = load i32, i32* @BFA_STATUS_OK, align 4
  store i32 %99, i32* %3, align 4
  br label %113

100:                                              ; preds = %93, %88
  %101 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @bfa_trc(%struct.bfa_sfp_s* %101, i32 %102)
  %104 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %4, align 8
  %105 = bitcast %union.sfp_xcvr_fc3_code_u* %8 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @bfa_trc(%struct.bfa_sfp_s* %104, i32 %106)
  %108 = load %struct.bfa_sfp_s*, %struct.bfa_sfp_s** %4, align 8
  %109 = bitcast %union.sfp_xcvr_e10g_code_u* %9 to i32*
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @bfa_trc(%struct.bfa_sfp_s* %108, i32 %110)
  %112 = load i32, i32* @BFA_STATUS_UNSUPP_SPEED, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %100, %98, %42, %40
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bfa_trc(%struct.bfa_sfp_s*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
