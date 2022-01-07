; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_unlock_vf_pf_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_unlock_vf_pf_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"lock mismatch: expected %d found %d\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"VF[%d]: vf pf channel unlocked by %d\0A\00", align 1
@CHANNEL_TLV_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_unlock_vf_pf_channel(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bnx2x_tlv_supported(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %37

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %20 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WARN(i32 %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 2
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %27 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DP(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @CHANNEL_TLV_NONE, align 4
  %35 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %36 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @bnx2x_tlv_supported(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
