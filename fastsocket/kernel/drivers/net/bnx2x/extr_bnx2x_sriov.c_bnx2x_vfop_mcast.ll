; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_mcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }
%struct.bnx2x_vfop = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.bnx2x_vfop_args_mcast }
%struct.bnx2x_vfop_args_mcast = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.bnx2x_mcast_ramrod_params }
%struct.bnx2x_mcast_ramrod_params = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x_raw_obj*)* }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"vf[%d] STATE: %d\0A\00", align 1
@BNX2X_MCAST_CMD_DEL = common dso_local global i32 0, align 4
@VFOP_CONT = common dso_local global i32 0, align 4
@BNX2X_MCAST_CMD_ADD = common dso_local global i32 0, align 4
@VFOP_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MCAST CONFIG error: rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*)* @bnx2x_vfop_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_mcast(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_virtf*, align 8
  %5 = alloca %struct.bnx2x_vfop*, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %7 = alloca %struct.bnx2x_raw_obj*, align 8
  %8 = alloca %struct.bnx2x_vfop_args_mcast*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %4, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %13 = call %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x* %11, %struct.bnx2x_virtf* %12)
  store %struct.bnx2x_vfop* %13, %struct.bnx2x_vfop** %5, align 8
  %14 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.bnx2x_mcast_ramrod_params* %17, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %18 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %19 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %21, %struct.bnx2x_raw_obj** %7, align 8
  %22 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.bnx2x_vfop_args_mcast* %24, %struct.bnx2x_vfop_args_mcast** %8, align 8
  %25 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %29 = call i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf* %28)
  %30 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %135

35:                                               ; preds = %2
  %36 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %37 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %38 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DP(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %131 [
    i32 128, label %43
    i32 130, label %59
    i32 129, label %113
  ]

43:                                               ; preds = %35
  %44 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %44, i32 0, i32 0
  store i32 130, i32* %45, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %48 = load i32, i32* @BNX2X_MCAST_CMD_DEL, align 4
  %49 = call i8* @bnx2x_config_mcast(%struct.bnx2x* %46, %struct.bnx2x_mcast_ramrod_params* %47, i32 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %54 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %55 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @VFOP_CONT, align 4
  %58 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %53, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %35, %43
  %60 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %61 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %60, i32 0, i32 0
  %62 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %61, align 8
  %63 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %64 = call i32 %62(%struct.bnx2x_raw_obj* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %149

67:                                               ; preds = %59
  %68 = load %struct.bnx2x_vfop_args_mcast*, %struct.bnx2x_vfop_args_mcast** %8, align 8
  %69 = getelementptr inbounds %struct.bnx2x_vfop_args_mcast, %struct.bnx2x_vfop_args_mcast* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %106

72:                                               ; preds = %67
  %73 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %74 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %73, i32 0, i32 0
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %93, %72
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.bnx2x_vfop_args_mcast*, %struct.bnx2x_vfop_args_mcast** %8, align 8
  %79 = getelementptr inbounds %struct.bnx2x_vfop_args_mcast, %struct.bnx2x_vfop_args_mcast* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.bnx2x_vfop_args_mcast*, %struct.bnx2x_vfop_args_mcast** %8, align 8
  %84 = getelementptr inbounds %struct.bnx2x_vfop_args_mcast, %struct.bnx2x_vfop_args_mcast* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %91 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %90, i32 0, i32 0
  %92 = call i32 @list_add_tail(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %98 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %97, i32 0, i32 0
  store i32 129, i32* %98, align 8
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %101 = load i32, i32* @BNX2X_MCAST_CMD_ADD, align 4
  %102 = call i8* @bnx2x_config_mcast(%struct.bnx2x* %99, %struct.bnx2x_mcast_ramrod_params* %100, i32 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %105 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %96, %67
  %107 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %108 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %109 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @VFOP_DONE, align 4
  %112 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %107, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %35, %106
  %114 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %115 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %114, i32 0, i32 0
  %116 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %115, align 8
  %117 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %118 = call i32 %116(%struct.bnx2x_raw_obj* %117)
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = sext i32 %121 to i64
  %123 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %124 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  %125 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %126 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %127 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @VFOP_DONE, align 4
  %130 = call i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf* %125, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %35, %113
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @bnx2x_vfop_default(i32 %132)
  br label %134

134:                                              ; preds = %131
  br label %135

135:                                              ; preds = %134, %34
  %136 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %137 = getelementptr inbounds %struct.bnx2x_vfop, %struct.bnx2x_vfop* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %138)
  br label %140

140:                                              ; preds = %135
  %141 = load %struct.bnx2x_vfop_args_mcast*, %struct.bnx2x_vfop_args_mcast** %8, align 8
  %142 = getelementptr inbounds %struct.bnx2x_vfop_args_mcast, %struct.bnx2x_vfop_args_mcast* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = call i32 @kfree(%struct.TYPE_8__* %143)
  %145 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %146 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %4, align 8
  %147 = load %struct.bnx2x_vfop*, %struct.bnx2x_vfop** %5, align 8
  %148 = call i32 @bnx2x_vfop_end(%struct.bnx2x* %145, %struct.bnx2x_virtf* %146, %struct.bnx2x_vfop* %147)
  br label %149

149:                                              ; preds = %140, %66
  ret void
}

declare dso_local %struct.bnx2x_vfop* @bnx2x_vfop_cur(%struct.bnx2x*, %struct.bnx2x_virtf*) #1

declare dso_local i32 @bnx2x_vfop_reset_wq(%struct.bnx2x_virtf*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i8* @bnx2x_config_mcast(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #1

declare dso_local i32 @bnx2x_vfop_finalize(%struct.bnx2x_virtf*, i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bnx2x_vfop_default(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @kfree(%struct.TYPE_8__*) #1

declare dso_local i32 @bnx2x_vfop_end(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vfop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
