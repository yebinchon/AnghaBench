; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_read_mib.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_read_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.lldp_remote_mib = type { i64, i64 }
%struct.lldp_local_mib = type { i64, i64 }

@DCBX_LOCAL_MIB_MAX_TRY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MIB could not be read\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64*, i64, i32)* @bnx2x_dcbx_read_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_dcbx_read_mib(%struct.bnx2x* %0, i64* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.lldp_remote_mib*, align 8
  %15 = alloca %struct.lldp_local_mib*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %19 [
    i32 129, label %17
    i32 128, label %18
  ]

17:                                               ; preds = %4
  store i64 16, i64* %11, align 8
  br label %20

18:                                               ; preds = %4
  store i64 16, i64* %11, align 8
  br label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %73

20:                                               ; preds = %18, %17
  %21 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %22 = call i64 @BP_PORT(%struct.bnx2x* %21)
  %23 = load i64, i64* %11, align 8
  %24 = mul nsw i64 %22, %23
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %64, %20
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @bnx2x_read_data(%struct.bnx2x* %28, i64* %29, i64 %30, i64 %31)
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %54 [
    i32 129, label %36
    i32 128, label %45
  ]

36:                                               ; preds = %27
  %37 = load i64*, i64** %7, align 8
  %38 = bitcast i64* %37 to %struct.lldp_local_mib*
  store %struct.lldp_local_mib* %38, %struct.lldp_local_mib** %15, align 8
  %39 = load %struct.lldp_local_mib*, %struct.lldp_local_mib** %15, align 8
  %40 = getelementptr inbounds %struct.lldp_local_mib, %struct.lldp_local_mib* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.lldp_local_mib*, %struct.lldp_local_mib** %15, align 8
  %43 = getelementptr inbounds %struct.lldp_local_mib, %struct.lldp_local_mib* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  br label %55

45:                                               ; preds = %27
  %46 = load i64*, i64** %7, align 8
  %47 = bitcast i64* %46 to %struct.lldp_remote_mib*
  store %struct.lldp_remote_mib* %47, %struct.lldp_remote_mib** %14, align 8
  %48 = load %struct.lldp_remote_mib*, %struct.lldp_remote_mib** %14, align 8
  %49 = getelementptr inbounds %struct.lldp_remote_mib, %struct.lldp_remote_mib* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %12, align 8
  %51 = load %struct.lldp_remote_mib*, %struct.lldp_remote_mib** %14, align 8
  %52 = getelementptr inbounds %struct.lldp_remote_mib, %struct.lldp_remote_mib* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  br label %55

54:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %73

55:                                               ; preds = %45, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @DCBX_LOCAL_MIB_MAX_TRY_READ, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %27, label %66

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @DCBX_LOCAL_MIB_MAX_TRY_READ, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %73

72:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %70, %54, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_data(%struct.bnx2x*, i64*, i64, i64) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
