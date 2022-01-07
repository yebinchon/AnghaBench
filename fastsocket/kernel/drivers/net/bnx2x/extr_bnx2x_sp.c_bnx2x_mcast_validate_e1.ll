; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_validate_e1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_validate_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i32 (%struct.bnx2x_mcast_obj*)*, i64, i32, i32 (%struct.bnx2x_mcast_obj*, i64)* }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Command %d, p->mcast_list_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Can't configure more than %d multicast MACs on 57710\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"p->mcast_list_len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unknown command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32)* @bnx2x_mcast_validate_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_validate_e1(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2) #0 {
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
  switch i32 %18, label %75 [
    i32 129, label %19
    i32 128, label %25
    i32 131, label %36
    i32 130, label %36
  ]

19:                                               ; preds = %3
  %20 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %20, i32 0, i32 3
  %22 = load i32 (%struct.bnx2x_mcast_obj*, i64)*, i32 (%struct.bnx2x_mcast_obj*, i64)** %21, align 8
  %23 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %24 = call i32 %22(%struct.bnx2x_mcast_obj* %23, i64 0)
  br label %25

25:                                               ; preds = %3, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @BNX2X_MSG_SP, align 4
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i64, ...) @DP(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34)
  br label %80

36:                                               ; preds = %3, %3
  %37 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %42 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %36
  %46 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %47 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %96

53:                                               ; preds = %36
  %54 = load i32, i32* @BNX2X_MSG_SP, align 4
  %55 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = call i32 (i32, i8*, i64, ...) @DP(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %61 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %53
  %65 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %66 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %65, i32 0, i32 3
  %67 = load i32 (%struct.bnx2x_mcast_obj*, i64)*, i32 (%struct.bnx2x_mcast_obj*, i64)** %66, align 8
  %68 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %69 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %70 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = call i32 %67(%struct.bnx2x_mcast_obj* %68, i64 %72)
  br label %74

74:                                               ; preds = %64, %53
  br label %80

75:                                               ; preds = %3
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %96

80:                                               ; preds = %74, %25
  %81 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %82 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %87 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %90 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %85, %80
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %75, %45
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
