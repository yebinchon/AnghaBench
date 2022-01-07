; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qdtor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_qdtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.bnx2x_queue_state_params }
%struct.bnx2x_queue_state_params = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.bnx2x_vfop_args_qdtor }
%struct.bnx2x_vfop_args_qdtor = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@BNX2X_Q_LOGICAL_STATE_STOPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Entered qdtor but queue was already stopped. Aborting gracefully\0A\00", align 1
@BNX2X_Q_CMD_HALT = common dso_local global i32 0, align 4
@VFOP_CONT = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_TERMINATE = common dso_local global i32 0, align 4
@BNX2X_Q_CMD_CFC_DEL = common dso_local global i32 0, align 4
@VFOP_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"QDTOR[%d:%d] error: cmd %d, rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_qdtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_qdtor(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_vfop_args_qdtor*, align 8
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
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.bnx2x_vfop_args_qdtor* %14, %struct.bnx2x_vfop_args_qdtor** %6, align 8
  %15 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
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
  br label %103

30:                                               ; preds = %2
  %31 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %32 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i32, i8*, ...) @DP(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %133 [
    i32 129, label %38
    i32 128, label %67
    i32 131, label %85
    i32 130, label %118
  ]

38:                                               ; preds = %30
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bnx2x_get_q_logical_state(%struct.bnx2x* %39, i32 %42)
  %44 = load i32, i32* @BNX2X_Q_LOGICAL_STATE_STOPPED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %48 = call i32 (i32, i8*, ...) @DP(i32 %47, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %117

49:                                               ; preds = %38
  %50 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %50, i32 0, i32 0
  store i32 128, i32* %51, align 8
  %52 = load i32, i32* @BNX2X_Q_CMD_HALT, align 4
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
  store i32 131, i32* %69, align 8
  %70 = load i32, i32* @BNX2X_Q_CMD_TERMINATE, align 4
  %71 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %72 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %75 = call i8* @bnx2x_queue_state_change(%struct.bnx2x* %73, %struct.bnx2x_queue_state_params* %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %80 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %81 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @VFOP_CONT, align 4
  %84 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %79, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %30, %67
  %86 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %87 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %86, i32 0, i32 0
  store i32 130, i32* %87, align 8
  %88 = load i32, i32* @BNX2X_Q_CMD_CFC_DEL, align 4
  %89 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %90 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %92 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %93 = call i8* @bnx2x_queue_state_change(%struct.bnx2x* %91, %struct.bnx2x_queue_state_params* %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %96 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %98 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %99 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @VFOP_DONE, align 4
  %102 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %97, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %85, %29
  %104 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %105 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.bnx2x_vfop_args_qdtor*, %struct.bnx2x_vfop_args_qdtor** %6, align 8
  %108 = getelementptr inbounds %struct.bnx2x_vfop_args_qdtor, %struct.bnx2x_vfop_args_qdtor* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.bnx2x_queue_state_params*, %struct.bnx2x_queue_state_params** %7, align 8
  %111 = getelementptr inbounds %struct.bnx2x_queue_state_params, %struct.bnx2x_queue_state_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %114 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %109, i32 %112, i64 %115)
  br label %117

117:                                              ; preds = %103, %46
  br label %118

118:                                              ; preds = %30, %117
  %119 = load %struct.bnx2x_vfop_args_qdtor*, %struct.bnx2x_vfop_args_qdtor** %6, align 8
  %120 = getelementptr inbounds %struct.bnx2x_vfop_args_qdtor, %struct.bnx2x_vfop_args_qdtor* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  %124 = load %struct.bnx2x_vfop_args_qdtor*, %struct.bnx2x_vfop_args_qdtor** %6, align 8
  %125 = getelementptr inbounds %struct.bnx2x_vfop_args_qdtor, %struct.bnx2x_vfop_args_qdtor* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %130 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %131 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %132 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %129, %struct.bnx2x_virtf* %130, %struct.bnx2x_vfop* %131)
  br label %138

133:                                              ; preds = %30
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @bnx2x_vfop_default(i32 %134)
  br label %136

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136
  br label %138

138:                                              ; preds = %137, %118
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_get_q_logical_state(%struct.bnx2x*, i32) #1

declare dso_local i8* @bnx2x_queue_state_change(%struct.bnx2x*, %struct.bnx2x_queue_state_params*) #1

declare dso_local i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf*, i64, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
