; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qsetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x = type { i32, i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__const.bnx2x_vfop_qsetup.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_qsetup to void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*), i32 0 }, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"QSETUP[%d:%d] error: rc %d\0A\00", align 1
@VF_CFG_VLAN = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_HYPERVISOR_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_qsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_qsetup(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_vfop_cmd, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %11 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %9, %struct.bnx2x_virtf* %10)
  store %struct.bnx2x_vfop* %11, %struct.bnx2x_vfop** %5, align 8
  %12 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = bitcast %struct.bnx2x_vfop_cmd* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vfop_qsetup.cmd to i8*), i64 16, i1 false)
  %21 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %68

26:                                               ; preds = %2
  %27 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %28 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @DP(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %97 [
    i32 130, label %34
    i32 128, label %49
    i32 129, label %78
  ]

34:                                               ; preds = %26
  %35 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %36 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %35, i32 0, i32 0
  store i32 128, i32* %36, align 8
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @bnx2x_vfop_qctor_cmd(%struct.bnx2x* %37, %struct.bnx2x_virtf* %38, %struct.bnx2x_vfop_cmd* %8, i32 %39)
  %41 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %42 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %68

48:                                               ; preds = %34
  br label %100

49:                                               ; preds = %26
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %77

53:                                               ; preds = %49
  %54 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %55 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %54, i32 0, i32 0
  store i32 129, i32* %55, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %57 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @bnx2x_vfop_vlan_set_cmd(%struct.bnx2x* %56, %struct.bnx2x_virtf* %57, %struct.bnx2x_vfop_cmd* %8, i32 %58, i32 0, i32 1)
  %60 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %61 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %68

67:                                               ; preds = %53
  br label %100

68:                                               ; preds = %66, %47, %25
  %69 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i64 %75)
  br label %77

77:                                               ; preds = %68, %52
  br label %78

78:                                               ; preds = %26, %77
  %79 = load i32, i32* @VF_CFG_VLAN, align 4
  %80 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %81 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = call i32 (...) @smp_mb__before_clear_bit()
  %85 = load i32, i32* @BNX2X_SP_RTNL_HYPERVISOR_VLAN, align 4
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %86, i32 0, i32 1
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = call i32 (...) @smp_mb__after_clear_bit()
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %90, i32 0, i32 0
  %92 = call i32 @schedule_delayed_work(i32* %91, i32 0)
  %93 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %94 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %95 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %96 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %93, %struct.bnx2x_virtf* %94, %struct.bnx2x_vfop* %95)
  br label %100

97:                                               ; preds = %26
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @bnx2x_vfop_default(i32 %98)
  br label %100

100:                                              ; preds = %48, %67, %78, %97
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i64 @bnx2x_vfop_qctor_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32) #1

declare dso_local i64 @bnx2x_vfop_vlan_set_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*, i32, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i64) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
