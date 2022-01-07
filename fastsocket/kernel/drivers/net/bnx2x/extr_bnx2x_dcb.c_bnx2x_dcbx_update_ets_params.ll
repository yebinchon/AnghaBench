; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_update_ets_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_update_ets_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@drv_flags = common dso_local global i32 0, align 4
@DRV_FLAGS_DCB_MFW_CONFIGURED = common dso_local global i32 0, align 4
@DCBX_REMOTE_MIB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_dcbx_update_ets_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_update_ets_params(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = load i32, i32* @drv_flags, align 4
  %6 = call i64 @SHMEM2_HAS(%struct.bnx2x* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = load i32, i32* @drv_flags, align 4
  %11 = call i32 @SHMEM2_RD(%struct.bnx2x* %9, i32 %10)
  %12 = load i32, i32* @DRV_FLAGS_DCB_MFW_CONFIGURED, align 4
  %13 = shl i32 1, %12
  %14 = call i64 @GET_FLAGS(i32 %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi i1 [ false, %1 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 3
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 2
  %23 = call i32 @bnx2x_ets_disabled(i32* %20, i32* %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %16
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DCBX_REMOTE_MIB_ERROR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %16
  br label %51

41:                                               ; preds = %37, %30
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = call i32 @bnx2x_dcbx_update_ets_config(%struct.bnx2x* %46)
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = call i32 @bnx2x_dcbx_2cos_limit_update_ets_config(%struct.bnx2x* %49)
  br label %51

51:                                               ; preds = %40, %48, %45
  ret void
}

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32) #1

declare dso_local i64 @GET_FLAGS(i32, i32) #1

declare dso_local i32 @SHMEM2_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_ets_disabled(i32*, i32*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_update_ets_config(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_2cos_limit_update_ets_config(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
