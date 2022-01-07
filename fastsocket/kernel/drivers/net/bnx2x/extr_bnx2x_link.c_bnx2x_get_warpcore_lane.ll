; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_get_warpcore_lane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_get_warpcore_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MISC_REG_FOUR_PORT_PATH_SWAP_OVWR = common dso_local global i32 0, align 4
@MISC_REG_FOUR_PORT_PATH_SWAP = common dso_local global i32 0, align 4
@MISC_REG_FOUR_PORT_PORT_SWAP_OVWR = common dso_local global i32 0, align 4
@MISC_REG_FOUR_PORT_PORT_SWAP = common dso_local global i32 0, align 4
@MISC_REG_TWO_PORT_PATH_SWAP_OVWR = common dso_local global i32 0, align 4
@MISC_REG_TWO_PORT_PATH_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_get_warpcore_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.link_params*, %struct.link_params** %4, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %6, align 8
  %16 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %17 = call i32 @BP_PATH(%struct.bnx2x* %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.link_params*, %struct.link_params** %4, align 8
  %19 = getelementptr inbounds %struct.link_params, %struct.link_params* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %22 = call i64 @bnx2x_is_4_port_mode(%struct.bnx2x* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %26 = load i32, i32* @MISC_REG_FOUR_PORT_PATH_SWAP_OVWR, align 4
  %27 = call i32 @REG_RD(%struct.bnx2x* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 2
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %36 = load i32, i32* @MISC_REG_FOUR_PORT_PATH_SWAP, align 4
  %37 = call i32 @REG_RD(%struct.bnx2x* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = xor i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %46 = load i32, i32* @MISC_REG_FOUR_PORT_PORT_SWAP_OVWR, align 4
  %47 = call i32 @REG_RD(%struct.bnx2x* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 2
  store i32 %53, i32* %11, align 4
  br label %58

54:                                               ; preds = %44
  %55 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %56 = load i32, i32* @MISC_REG_FOUR_PORT_PORT_SWAP, align 4
  %57 = call i32 @REG_RD(%struct.bnx2x* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = xor i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %10, align 4
  %66 = shl i32 %65, 1
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %5, align 4
  br label %92

69:                                               ; preds = %2
  %70 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %71 = load i32, i32* @MISC_REG_TWO_PORT_PATH_SWAP_OVWR, align 4
  %72 = call i32 @REG_RD(%struct.bnx2x* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 2
  store i32 %78, i32* %7, align 4
  br label %83

79:                                               ; preds = %69
  %80 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %81 = load i32, i32* @MISC_REG_TWO_PORT_PATH_SWAP, align 4
  %82 = call i32 @REG_RD(%struct.bnx2x* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = xor i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %64
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_is_4_port_mode(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
