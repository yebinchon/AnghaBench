; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_disabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_ets_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bnx2x_ets_disabled - chip not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_ets_disabled(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 0
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %12 = call i64 @CHIP_IS_E2(%struct.bnx2x* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %16 = call i64 @CHIP_IS_E3A0(%struct.bnx2x* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load %struct.link_params*, %struct.link_params** %4, align 8
  %20 = call i32 @bnx2x_ets_e2e3a0_disabled(%struct.link_params* %19)
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %23 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.link_params*, %struct.link_params** %4, align 8
  %27 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %28 = call i32 @bnx2x_ets_e3b0_disabled(%struct.link_params* %26, %struct.link_vars* %27)
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @NETIF_MSG_LINK, align 4
  %31 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ets_e2e3a0_disabled(%struct.link_params*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_ets_e3b0_disabled(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
