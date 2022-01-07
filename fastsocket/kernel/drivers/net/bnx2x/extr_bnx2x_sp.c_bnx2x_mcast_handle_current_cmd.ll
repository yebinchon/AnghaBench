; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_handle_current_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_handle_current_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i64, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, i32*)* }
%struct.bnx2x.0 = type opaque

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"p->mcast_list_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32, i32)* @bnx2x_mcast_handle_current_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_handle_current_cmd(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bnx2x_mcast_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_mcast_ramrod_params* %1, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %12, i32 0, i32 1
  %14 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  store %struct.bnx2x_mcast_obj* %14, %struct.bnx2x_mcast_obj** %10, align 8
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @BNX2X_MSG_SP, align 4
  %17 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @DP(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %40 [
    i32 130, label %22
    i32 129, label %27
    i32 128, label %32
  ]

22:                                               ; preds = %4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %10, align 8
  %25 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %26 = call i32 @bnx2x_mcast_hdl_add(%struct.bnx2x* %23, %struct.bnx2x_mcast_obj* %24, %struct.bnx2x_mcast_ramrod_params* %25, i32* %11)
  br label %45

27:                                               ; preds = %4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %10, align 8
  %30 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %31 = call i32 @bnx2x_mcast_hdl_del(%struct.bnx2x* %28, %struct.bnx2x_mcast_obj* %29, %struct.bnx2x_mcast_ramrod_params* %30, i32* %11)
  br label %45

32:                                               ; preds = %4
  %33 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %10, align 8
  %34 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %33, i32 0, i32 0
  %35 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, i32*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_obj*, i32, i32*)** %34, align 8
  %36 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %37 = bitcast %struct.bnx2x* %36 to %struct.bnx2x.0*
  %38 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %10, align 8
  %39 = call i32 %35(%struct.bnx2x.0* %37, %struct.bnx2x_mcast_obj* %38, i32 0, i32* %11)
  br label %45

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %49

45:                                               ; preds = %32, %27, %22
  %46 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %7, align 8
  %47 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @DP(i32, i8*, i64) #1

declare dso_local i32 @bnx2x_mcast_hdl_add(%struct.bnx2x*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32*) #1

declare dso_local i32 @bnx2x_mcast_hdl_del(%struct.bnx2x*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
