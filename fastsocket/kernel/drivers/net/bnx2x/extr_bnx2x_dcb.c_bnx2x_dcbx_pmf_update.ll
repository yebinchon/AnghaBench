; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_pmf_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_pmf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32 }

@drv_flags = common dso_local global i32 0, align 4
@DRV_FLAGS_DCB_CONFIGURED = common dso_local global i32 0, align 4
@DCB_CMD_CEE_GET = common dso_local global i32 0, align 4
@RTM_GETDCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_dcbx_pmf_update(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = load i32, i32* @drv_flags, align 4
  %5 = call i64 @SHMEM2_HAS(%struct.bnx2x* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %9 = load i32, i32* @drv_flags, align 4
  %10 = call i32 @SHMEM2_RD(%struct.bnx2x* %8, i32 %9)
  %11 = load i32, i32* @DRV_FLAGS_DCB_CONFIGURED, align 4
  %12 = shl i32 1, %11
  %13 = call i64 @GET_FLAGS(i32 %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %7
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = call i64 @bnx2x_dcbx_read_shmem_neg_results(%struct.bnx2x* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %37

20:                                               ; preds = %15
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 2
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bnx2x_dump_dcbx_drv_param(%struct.bnx2x* %21, i32* %23, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 2
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bnx2x_get_dcbx_drv_param(%struct.bnx2x* %28, i32* %30, i32 %33)
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = call i32 @bnx2x_dcbx_update_tc_mapping(%struct.bnx2x* %35)
  br label %37

37:                                               ; preds = %19, %20, %7, %1
  ret void
}

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i32 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_dcbx_read_shmem_neg_results(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dump_dcbx_drv_param(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_get_dcbx_drv_param(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_dcbx_update_tc_mapping(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
