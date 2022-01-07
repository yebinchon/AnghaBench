; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.bnx2x_queue_state_params }
%struct.bnx2x_queue_state_params = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.bnx2x_vfop_args_qctor }
%struct.bnx2x_vfop_args_qctor = type { i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@BNX2X_Q_LOGICAL_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Entered qctor but queue was already up. Aborting gracefully\0A\00", align 1
@BNX2X_Q_CMD_INIT = common dso_local global i32 0, align 4
@VFOP_CONT = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_SETUP = common dso_local global i32 0, align 4
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"QCTOR[%d:%d] error: cmd %d, rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_qctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_qctor(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_vfop_args_qctor*, align 8
  %7 = alloca %struct.bnx2x_queue_state_params*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %11 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %9, %struct.bnx2x_virtf* %10)
  store %struct.bnx2x_vfop* %11, %struct.bnx2x_vfop** %5, align 8
  %12 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.bnx2x_vfop_args_qctor* %14, %struct.bnx2x_vfop_args_qctor** %6, align 8
  %15 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  store %struct.bnx2x_queue_state_params* %19, %struct.bnx2x_queue_state_params** %7, align 8
  %20 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %24 = call i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf* %23)
  %25 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %113

30:                                               ; preds = %2
  %31 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %32 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %109 [
    i32 130, label %38
    i32 128, label %67
    i32 129, label %98
  ]

38:                                               ; preds = %30
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bnx2x_get_q_logical_state(%struct.bnx2x* %39, i32 %42)
  %44 = load i32, i32* @BNX2X_Q_LOGICAL_STATE_ACTIVE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %48 = call i32 (i32, i8*, ...) @DP(i32 %47, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %127

49:                                               ; preds = %38
  %50 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %50, i32 0, i32 0
  store i32 128, i32* %51, align 8
  %52 = load i32, i32* @BNX2X_Q_CMD_INIT, align 4
  %53 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %54 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %56 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %57 = call i8* @bnx2x_queue_state_change(%struct.bnx2x* %55, %struct.bnx2x_queue_state_params* %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %62 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @VFOP_CONT, align 4
  %66 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %61, i64 %64, i32 %65)
  br label %67

67:                                               ; preds = %30, %49
  %68 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %69 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %68, i32 0, i32 0
  store i32 129, i32* %69, align 8
  %70 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %71 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %77 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 4
  %83 = load i32, i32* @BNX2X_Q_CMD_SETUP, align 4
  %84 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %85 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %88 = call i8* @bnx2x_queue_state_change(%struct.bnx2x* %86, %struct.bnx2x_queue_state_params* %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %93 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %94 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @VFOP_CONT, align 4
  %97 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %92, i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %30, %67
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %101 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %102 = load %struct.bnx2x_vfop_args_qctor*, %struct.bnx2x_vfop_args_qctor** %6, align 8
  %103 = getelementptr inbounds %struct.bnx2x_vfop_args_qctor, %struct.bnx2x_vfop_args_qctor* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @vf_igu_sb(%struct.bnx2x_virtf* %101, i32 %104)
  %106 = load i32, i32* @USTORM_ID, align 4
  %107 = load i32, i32* @IGU_INT_ENABLE, align 4
  %108 = call i32 @bnx2x_vf_igu_ack_sb(%struct.bnx2x* %99, %struct.bnx2x_virtf* %100, i32 %105, i32 %106, i32 0, i32 %107, i32 0)
  br label %127

109:                                              ; preds = %30
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @bnx2x_vfop_default(i32 %110)
  br label %112

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %112, %29
  %114 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %115 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bnx2x_vfop_args_qctor*, %struct.bnx2x_vfop_args_qctor** %6, align 8
  %118 = getelementptr inbounds %struct.bnx2x_vfop_args_qctor, %struct.bnx2x_vfop_args_qctor* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %121 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %124 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %119, i32 %122, i64 %125)
  br label %127

127:                                              ; preds = %113, %98, %46
  %128 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %129 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %130 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %131 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %128, %struct.bnx2x_virtf* %129, %struct.bnx2x_vfop* %130)
  br label %132

132:                                              ; preds = %127
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_get_q_logical_state(%struct.bnx2x*, i32) #1

declare dso_local i8* @bnx2x_queue_state_change(%struct.bnx2x*, %struct.bnx2x_queue_state_params*) #1

declare dso_local i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf*, i64, i32) #1

declare dso_local i32 @bnx2x_vf_igu_ack_sb(%struct.bnx2x*, %struct.bnx2x_virtf*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vf_igu_sb(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
