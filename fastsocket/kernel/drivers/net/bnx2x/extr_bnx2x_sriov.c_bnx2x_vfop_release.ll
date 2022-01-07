; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vfop_cmd = type { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*, i32 }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_vfop = type { i64 }

@__const.bnx2x_vfop_release.cmd = private unnamed_addr constant %struct.bnx2x_vfop_cmd { void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_release to void (%struct.bnx2x.0*, %struct.bnx2x_virtf*)*), i32 0 }, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vfop->rc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"VF[%d] STATE: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Free\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Acquired\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"about to free resources\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"VF[%d] RELEASE error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_release(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_vfop_cmd, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %9 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %7, %struct.bnx2x_virtf* %8)
  store %struct.bnx2x_vfop* %9, %struct.bnx2x_vfop** %5, align 8
  %10 = bitcast %struct.bnx2x_vfop_cmd* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.bnx2x_vfop_cmd* @__const.bnx2x_vfop_release.cmd to i8*), i64 16, i1 false)
  %11 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %12 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 (i32, i8*, ...) @DP(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %17 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %90

21:                                               ; preds = %2
  %22 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %54

31:                                               ; preds = %21
  %32 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 131
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 130
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %45 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %50

50:                                               ; preds = %43, %42
  %51 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %42 ], [ %49, %43 ]
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %36 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %30
  %55 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %30 ], [ %53, %52 ]
  %56 = call i32 (i32, i8*, ...) @DP(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %55)
  %57 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %58 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %84 [
    i32 130, label %60
    i32 131, label %72
    i32 129, label %83
    i32 128, label %83
  ]

60:                                               ; preds = %54
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %63 = call i64 @bnx2x_vfop_close_cmd(%struct.bnx2x* %61, %struct.bnx2x_virtf* %62, %struct.bnx2x_vfop_cmd* %6)
  %64 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %65 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %67 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %90

71:                                               ; preds = %60
  br label %103

72:                                               ; preds = %54
  %73 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %74 = call i32 (i32, i8*, ...) @DP(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %77 = call i32 @bnx2x_vf_free_resc(%struct.bnx2x* %75, %struct.bnx2x_virtf* %76)
  %78 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %79 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, ...) @DP(i32 %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %81)
  br label %98

83:                                               ; preds = %54, %54
  br label %98

84:                                               ; preds = %54
  %85 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %86 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bnx2x_vfop_default(i32 %87)
  br label %89

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %70, %20
  %91 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %92 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %95 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %93, i64 %96)
  br label %98

98:                                               ; preds = %90, %83, %72
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %101 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %102 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %99, %struct.bnx2x_virtf* %100, %struct.bnx2x_vfop* %101)
  br label %103

103:                                              ; preds = %98, %71
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @bnx2x_vfop_close_cmd(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop_cmd*) #1

declare dso_local i32 @bnx2x_vf_free_resc(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i64) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
