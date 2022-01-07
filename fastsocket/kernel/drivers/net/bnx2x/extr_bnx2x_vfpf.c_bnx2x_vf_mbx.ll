; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.vf_pf_event_data = type { i64, i64, i64 }
%struct.bnx2x_virtf = type { i64 }
%struct.bnx2x_vf_mbx = type { i32, i64, i64, %struct.TYPE_9__*, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"vf pf event received: vfid %d, address_hi %x, address lo %x\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Illegal vf_id %d max allowed: %d\0A\00", align 1
@VF_MSG_INPROCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Previous message is still being processed, vf_id %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"mailbox vf address hi 0x%x, lo 0x%x, offset 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to copy request VF %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vf_mbx(%struct.bnx2x* %0, %struct.vf_pf_event_data* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.vf_pf_event_data*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.vf_pf_event_data* %1, %struct.vf_pf_event_data** %4, align 8
  %9 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %10 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %11 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %14 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %17 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @DP(i32 %9, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i64 %18)
  %20 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %21 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = call %struct.TYPE_10__* @BP_VFDB(%struct.bnx2x* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %22, %27
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call i64 @BNX2X_NR_VIRTFN(%struct.bnx2x* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %34 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = call i64 @BNX2X_NR_VIRTFN(%struct.bnx2x* %36)
  %38 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %37)
  br label %124

39:                                               ; preds = %2
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %42 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @bnx2x_vf_idx_by_abs_fid(%struct.bnx2x* %40, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.bnx2x_vf_mbx* @BP_VF_MBX(%struct.bnx2x* %45, i32 %46)
  store %struct.bnx2x_vf_mbx* %47, %struct.bnx2x_vf_mbx** %6, align 8
  %48 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @VF_MSG_INPROCESS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %56 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %124

59:                                               ; preds = %39
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x* %60, i32 %61)
  store %struct.bnx2x_virtf* %62, %struct.bnx2x_virtf** %5, align 8
  %63 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %64 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load %struct.vf_pf_event_data*, %struct.vf_pf_event_data** %4, align 8
  %69 = getelementptr inbounds %struct.vf_pf_event_data, %struct.vf_pf_event_data* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %72 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %74 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %78 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %81 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @DP(i32 %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %76, i64 %79, i64 %83)
  %85 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %86 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %87 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %90 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %93 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %96 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @bnx2x_copy32_vf_dmae(%struct.bnx2x* %85, i32 1, i32 %88, i64 %91, i64 %94, i64 %97, i32 1)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %59
  %102 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %103 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, i64, ...) @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  br label %120

106:                                              ; preds = %59
  %107 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %108 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %107, i32 0, i32 4
  %109 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %110 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %109, i32 0, i32 3
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = bitcast %struct.TYPE_7__* %108 to i8*
  %115 = bitcast %struct.TYPE_7__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 8 %115, i64 8, i1 false)
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %118 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %119 = call i32 @bnx2x_vf_mbx_request(%struct.bnx2x* %116, %struct.bnx2x_virtf* %117, %struct.bnx2x_vf_mbx* %118)
  br label %124

120:                                              ; preds = %101
  %121 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %122 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %123 = call i32 @bnx2x_vf_release(%struct.bnx2x* %121, %struct.bnx2x_virtf* %122, i32 0)
  br label %124

124:                                              ; preds = %120, %106, %54, %32
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, i64, i64) #1

declare dso_local %struct.TYPE_10__* @BP_VFDB(%struct.bnx2x*) #1

declare dso_local i64 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64, ...) #1

declare dso_local i32 @bnx2x_vf_idx_by_abs_fid(%struct.bnx2x*, i64) #1

declare dso_local %struct.bnx2x_vf_mbx* @BP_VF_MBX(%struct.bnx2x*, i32) #1

declare dso_local %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_copy32_vf_dmae(%struct.bnx2x*, i32, i32, i64, i64, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bnx2x_vf_mbx_request(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i32 @bnx2x_vf_release(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
