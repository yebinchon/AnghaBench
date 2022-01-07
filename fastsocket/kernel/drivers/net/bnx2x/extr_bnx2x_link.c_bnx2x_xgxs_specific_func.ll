; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_xgxs_specific_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_xgxs_specific_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NIG_REG_XGXS0_CTRL_MD_ST = common dso_local global i32 0, align 4
@NIG_REG_XGXS0_CTRL_MD_DEVAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_xgxs_specific_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_xgxs_specific_func(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.link_params*, %struct.link_params** %5, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %32 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %14 = load i32, i32* @NIG_REG_XGXS0_CTRL_MD_ST, align 4
  %15 = load %struct.link_params*, %struct.link_params** %5, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 24
  %19 = add nsw i32 %14, %18
  %20 = call i32 @REG_WR(%struct.bnx2x* %13, i32 %19, i32 0)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %22 = load i32, i32* @NIG_REG_XGXS0_CTRL_MD_DEVAD, align 4
  %23 = load %struct.link_params*, %struct.link_params** %5, align 8
  %24 = getelementptr inbounds %struct.link_params, %struct.link_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 24
  %27 = add nsw i32 %22, %26
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @REG_WR(%struct.bnx2x* %21, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %3, %12
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
