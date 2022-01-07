; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_validate_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_validate_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i32 (%struct.bnx2x_mcast_obj*)*, i32, i32 (%struct.bnx2x_mcast_obj*, i32)* }

@.str = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32)* @bnx2x_mcast_validate_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_validate_e2(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_mcast_obj*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_ramrod_params* %1, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %10, i32 0, i32 1
  %12 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %11, align 8
  store %struct.bnx2x_mcast_obj* %12, %struct.bnx2x_mcast_obj** %8, align 8
  %13 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %14 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %13, i32 0, i32 0
  %15 = load i32 (%struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x_mcast_obj*)** %14, align 8
  %16 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %17 = call i32 %15(%struct.bnx2x_mcast_obj* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %40 [
    i32 129, label %19
    i32 128, label %25
    i32 131, label %29
    i32 130, label %29
  ]

19:                                               ; preds = %3
  %20 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %20, i32 0, i32 2
  %22 = load i32 (%struct.bnx2x_mcast_obj*, i32)*, i32 (%struct.bnx2x_mcast_obj*, i32)** %21, align 8
  %23 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %24 = call i32 %22(%struct.bnx2x_mcast_obj* %23, i32 0)
  br label %25

25:                                               ; preds = %3, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %45

29:                                               ; preds = %3, %3
  %30 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %31 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %30, i32 0, i32 2
  %32 = load i32 (%struct.bnx2x_mcast_obj*, i32)*, i32 (%struct.bnx2x_mcast_obj*, i32)** %31, align 8
  %33 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %34, %37
  %39 = call i32 %32(%struct.bnx2x_mcast_obj* %33, i32 %38)
  br label %45

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %29, %25
  %46 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %50 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
