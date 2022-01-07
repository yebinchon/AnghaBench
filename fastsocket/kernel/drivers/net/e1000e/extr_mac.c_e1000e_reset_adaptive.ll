; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_reset_adaptive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_reset_adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Not in Adaptive IFS mode!\0A\00", align 1
@IFS_MIN = common dso_local global i32 0, align 4
@IFS_MAX = common dso_local global i32 0, align 4
@IFS_STEP = common dso_local global i32 0, align 4
@IFS_RATIO = common dso_local global i32 0, align 4
@AIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_reset_adaptive(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @IFS_MIN, align 4
  %16 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @IFS_MAX, align 4
  %19 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @IFS_STEP, align 4
  %22 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %23 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @IFS_RATIO, align 4
  %25 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i32, i32* @AIT, align 4
  %30 = call i32 @ew32(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
