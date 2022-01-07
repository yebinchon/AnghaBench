; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_pause_resolve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_pause_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_vars = type { i32, i32 }

@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_BOTH = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_vars*, i32)* @bnx2x_pause_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pause_resolve(%struct.link_vars* %0, i32 %1) #0 {
  %3 = alloca %struct.link_vars*, align 8
  %4 = alloca i32, align 4
  store %struct.link_vars* %0, %struct.link_vars** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 11, label %6
    i32 14, label %10
    i32 5, label %14
    i32 7, label %14
    i32 13, label %14
    i32 15, label %14
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %8 = load %struct.link_vars*, %struct.link_vars** %3, align 8
  %9 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %12 = load %struct.link_vars*, %struct.link_vars** %3, align 8
  %13 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %19

14:                                               ; preds = %2, %2, %2, %2
  %15 = load i32, i32* @BNX2X_FLOW_CTRL_BOTH, align 4
  %16 = load %struct.link_vars*, %struct.link_vars** %3, align 8
  %17 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %14, %10, %6
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @LINK_STATUS_LINK_PARTNER_SYMMETRIC_PAUSE, align 4
  %25 = load %struct.link_vars*, %struct.link_vars** %3, align 8
  %26 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @LINK_STATUS_LINK_PARTNER_ASYMMETRIC_PAUSE, align 4
  %35 = load %struct.link_vars*, %struct.link_vars** %3, align 8
  %36 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %33, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
