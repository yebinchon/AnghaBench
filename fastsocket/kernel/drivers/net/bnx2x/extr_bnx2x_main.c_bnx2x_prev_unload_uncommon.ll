; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_uncommon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_uncommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Uncommon unload Flow\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Path is unmarked\0A\00", align 1
@FW_MSG_CODE_DRV_LOAD_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"FW version matches our own. Attempting FLR\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"FLR successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Could not FLR\0A\00", align 1
@BNX2X_PREV_WAIT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_prev_unload_uncommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_unload_uncommon(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %5 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i64 @bnx2x_prev_is_path_marked(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %10)
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = load i32, i32* @FW_MSG_CODE_DRV_LOAD_FUNCTION, align 4
  %16 = call i32 @bnx2x_nic_load_analyze_req(%struct.bnx2x* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = call i32 @bnx2x_do_flr(%struct.bnx2x* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %12
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %38

28:                                               ; preds = %23
  %29 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @BNX2X_PREV_WAIT_NEEDED, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %26, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i64 @bnx2x_prev_is_path_marked(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_mcp_done(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_nic_load_analyze_req(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_do_flr(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
