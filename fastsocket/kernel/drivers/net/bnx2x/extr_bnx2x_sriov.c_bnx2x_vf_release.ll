; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop_cmd = type { i32, i32* }

@CHANNEL_TLV_PF_RELEASE_VF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"VF[%d] Failed to allocate resources for release op- rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_vf_release(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_vfop_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %7, i32 0, i32 0
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.bnx2x_vfop_cmd, %struct.bnx2x_vfop_cmd* %7, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %14 = load i32, i32* @CHANNEL_TLV_PF_RELEASE_VF, align 4
  %15 = call i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x* %12, %struct.bnx2x_virtf* %13, i32 %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %18 = call i32 @bnx2x_vfop_release_cmd(%struct.bnx2x* %16, %struct.bnx2x_virtf* %17, %struct.bnx2x_vfop_cmd* %7)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WARN(i32 %22, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @bnx2x_lock_vf_pf_channel(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vfop_release_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
