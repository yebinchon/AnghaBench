; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_ndo_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_ndo_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64 }
%struct.bnx2x_virtf = type { i32 }
%struct.pf_vf_bulletin_content = type { i32 }

@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"vf ndo called though PF is down\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"vf ndo called though sriov is disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"vf ndo called for uninitialized VF. vfidx was %d BNX2X_NR_VIRTFN was %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"vf ndo called but vf was null. vfidx was %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"vf ndo called but Bulletin Board struct is null. vfidx was %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, %struct.bnx2x_virtf**, %struct.pf_vf_bulletin_content**)* @bnx2x_vf_ndo_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vf_ndo_prep(%struct.bnx2x* %0, i32 %1, %struct.bnx2x_virtf** %2, %struct.pf_vf_bulletin_content** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_virtf**, align 8
  %9 = alloca %struct.pf_vf_bulletin_content**, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bnx2x_virtf** %2, %struct.bnx2x_virtf*** %8, align 8
  store %struct.pf_vf_bulletin_content** %3, %struct.pf_vf_bulletin_content*** %9, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %66

19:                                               ; preds = %4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %21 = call i32 @IS_SRIOV(%struct.bnx2x* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %30 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %29)
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %35 = call i32 @BNX2X_NR_VIRTFN(%struct.bnx2x* %34)
  %36 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %66

39:                                               ; preds = %27
  %40 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x* %40, i32 %41)
  %43 = load %struct.bnx2x_virtf**, %struct.bnx2x_virtf*** %8, align 8
  store %struct.bnx2x_virtf* %42, %struct.bnx2x_virtf** %43, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x* %44, i32 %45)
  %47 = load %struct.pf_vf_bulletin_content**, %struct.pf_vf_bulletin_content*** %9, align 8
  store %struct.pf_vf_bulletin_content* %46, %struct.pf_vf_bulletin_content** %47, align 8
  %48 = load %struct.bnx2x_virtf**, %struct.bnx2x_virtf*** %8, align 8
  %49 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %48, align 8
  %50 = icmp ne %struct.bnx2x_virtf* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %66

56:                                               ; preds = %39
  %57 = load %struct.pf_vf_bulletin_content**, %struct.pf_vf_bulletin_content*** %9, align 8
  %58 = load %struct.pf_vf_bulletin_content*, %struct.pf_vf_bulletin_content** %57, align 8
  %59 = icmp ne %struct.pf_vf_bulletin_content* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %60, %51, %32, %23, %15
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_NR_VIRTFN(%struct.bnx2x*) #1

declare dso_local %struct.bnx2x_virtf* @BP_VF(%struct.bnx2x*, i32) #1

declare dso_local %struct.pf_vf_bulletin_content* @BP_VF_BULLETIN(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
