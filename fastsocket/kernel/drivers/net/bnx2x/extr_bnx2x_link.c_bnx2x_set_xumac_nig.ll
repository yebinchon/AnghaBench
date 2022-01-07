; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_xumac_nig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_set_xumac_nig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_P1_MAC_IN_EN = common dso_local global i32 0, align 4
@NIG_REG_P0_MAC_IN_EN = common dso_local global i32 0, align 4
@NIG_REG_P1_MAC_OUT_EN = common dso_local global i32 0, align 4
@NIG_REG_P0_MAC_OUT_EN = common dso_local global i32 0, align 4
@NIG_REG_P1_MAC_PAUSE_OUT_EN = common dso_local global i32 0, align 4
@NIG_REG_P0_MAC_PAUSE_OUT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, i32, i32)* @bnx2x_set_xumac_nig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_xumac_nig(%struct.link_params* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @NIG_REG_P1_MAC_IN_EN, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @NIG_REG_P0_MAC_IN_EN, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @REG_WR(%struct.bnx2x* %11, i32 %21, i32 %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %25 = load %struct.link_params*, %struct.link_params** %4, align 8
  %26 = getelementptr inbounds %struct.link_params, %struct.link_params* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @NIG_REG_P1_MAC_OUT_EN, align 4
  br label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @NIG_REG_P0_MAC_OUT_EN, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @REG_WR(%struct.bnx2x* %24, i32 %34, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load %struct.link_params*, %struct.link_params** %4, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @NIG_REG_P1_MAC_PAUSE_OUT_EN, align 4
  br label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @NIG_REG_P0_MAC_PAUSE_OUT_EN, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @REG_WR(%struct.bnx2x* %37, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
