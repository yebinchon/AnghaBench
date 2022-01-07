; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_read_mf_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_read_mf_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bnx2x = type { i32*, i32 }

@VN_0 = common dso_local global i32 0, align 4
@E1H_FUNC_MAX = common dso_local global i32 0, align 4
@func_mf_config = common dso_local global %struct.TYPE_2__* null, align 8
@FUNC_MF_CFG_FUNC_DISABLED = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mf_cfg function disabled\0A\00", align 1
@MF_FUNC_DIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"mf_cfg function enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_read_mf_cfg(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 2, i32 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = call i64 @BP_NOMCP(%struct.bnx2x* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %83

15:                                               ; preds = %1
  %16 = load i32, i32* @VN_0, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %52, %15
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = call i32 @BP_MAX_VN_NUM(%struct.bnx2x* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 2, %24
  %26 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %27 = call i32 @BP_PORT(%struct.bnx2x* %26)
  %28 = add nsw i32 %25, %27
  %29 = mul nsw i32 %23, %28
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = call i32 @BP_PATH(%struct.bnx2x* %30)
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @E1H_FUNC_MAX, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %55

37:                                               ; preds = %22
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mf_config, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MF_CFG_RD(%struct.bnx2x* %38, i32 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %17

55:                                               ; preds = %36, %17
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = call i64 @BP_VN(%struct.bnx2x* %59)
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FUNC_MF_CFG_FUNC_DISABLED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %55
  %67 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %68 = call i32 @DP(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @MF_FUNC_DIS, align 4
  %70 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %71 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %83

74:                                               ; preds = %55
  %75 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %76 = call i32 @DP(i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @MF_FUNC_DIS, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %14, %74, %66
  ret void
}

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BP_MAX_VN_NUM(%struct.bnx2x*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @MF_CFG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
