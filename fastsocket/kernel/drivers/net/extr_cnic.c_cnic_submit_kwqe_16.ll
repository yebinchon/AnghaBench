; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_submit_kwqe_16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_submit_kwqe_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (i32, %struct.kwqe_16**, i32)* }
%struct.kwqe_16 = type { i32 }
%union.l5cm_specific_data = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.l5cm_spe = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i64, i32, i8* }

@SPE_HDR_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*)* @cnic_submit_kwqe_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %0, i32 %1, i32 %2, i32 %3, %union.l5cm_specific_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cnic_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.l5cm_specific_data*, align 8
  %12 = alloca %struct.cnic_local*, align 8
  %13 = alloca %struct.l5cm_spe, align 8
  %14 = alloca [1 x %struct.kwqe_16*], align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %union.l5cm_specific_data* %4, %union.l5cm_specific_data** %11, align 8
  %17 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %18 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %17, i32 0, i32 1
  %19 = load %struct.cnic_local*, %struct.cnic_local** %18, align 8
  store %struct.cnic_local* %19, %struct.cnic_local** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SPE_HDR_CMD_ID_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @BNX2X_HW_CID(%struct.cnic_local* %23, i32 %24)
  %26 = or i32 %22, %25
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %13, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SPE_HDR_CONN_TYPE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @SPE_HDR_CONN_TYPE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %36 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SPE_HDR_FUNCTION_ID_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @SPE_HDR_FUNCTION_ID, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @cpu_to_le16(i32 %44)
  %46 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %13, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %13, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %union.l5cm_specific_data*, %union.l5cm_specific_data** %11, align 8
  %51 = bitcast %union.l5cm_specific_data* %50 to %struct.TYPE_9__*
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %13, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %union.l5cm_specific_data*, %union.l5cm_specific_data** %11, align 8
  %59 = bitcast %union.l5cm_specific_data* %58 to %struct.TYPE_9__*
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = getelementptr inbounds %struct.l5cm_spe, %struct.l5cm_spe* %13, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = bitcast %struct.l5cm_spe* %13 to %struct.kwqe_16*
  %67 = getelementptr inbounds [1 x %struct.kwqe_16*], [1 x %struct.kwqe_16*]* %14, i64 0, i64 0
  store %struct.kwqe_16* %66, %struct.kwqe_16** %67, align 8
  %68 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %69 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %68, i32 0, i32 1
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %72 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32 (i32, %struct.kwqe_16**, i32)*, i32 (i32, %struct.kwqe_16**, i32)** %74, align 8
  %76 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  %77 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds [1 x %struct.kwqe_16*], [1 x %struct.kwqe_16*]* %14, i64 0, i64 0
  %80 = call i32 %75(i32 %78, %struct.kwqe_16** %79, i32 1)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %82 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock_bh(i32* %82)
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %89

87:                                               ; preds = %5
  %88 = load i32, i32* %16, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.cnic_local*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
