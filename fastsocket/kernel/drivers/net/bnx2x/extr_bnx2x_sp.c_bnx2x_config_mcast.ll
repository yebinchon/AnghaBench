; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_mcast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i32, i32, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i32 (%struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i64, i64, i32 (%struct.bnx2x.1*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x.3*, %struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x.4*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x_mcast_obj*)*, %struct.bnx2x_raw_obj }
%struct.bnx2x.0 = type opaque
%struct.bnx2x.1 = type opaque
%struct.bnx2x.2 = type opaque
%struct.bnx2x.3 = type opaque
%struct.bnx2x.4 = type opaque
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)*, i64 (%struct.bnx2x_raw_obj*)* }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"o->total_pending_num=%d p->mcast_list_len=%d o->max_cmd_len=%d\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_mcast(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_mcast_obj*, align 8
  %9 = alloca %struct.bnx2x_raw_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_ramrod_params* %1, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %13 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %12, i32 0, i32 2
  %14 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  store %struct.bnx2x_mcast_obj* %14, %struct.bnx2x_mcast_obj** %8, align 8
  %15 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %16 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %15, i32 0, i32 9
  store %struct.bnx2x_raw_obj* %16, %struct.bnx2x_raw_obj** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %18 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %17, i32 0, i32 0
  %19 = load i32 (%struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x_mcast_obj*)** %18, align 8
  %20 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %21 = call i32 %19(%struct.bnx2x_mcast_obj* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %23 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %22, i32 0, i32 1
  %24 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_mcast_ramrod_params*, i32)** %23, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %26 = bitcast %struct.bnx2x* %25 to %struct.bnx2x.0*
  %27 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %24(%struct.bnx2x.0* %26, %struct.bnx2x_mcast_ramrod_params* %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %153

34:                                               ; preds = %3
  %35 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %41 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %40, i32 0, i32 8
  %42 = load i32 (%struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x_mcast_obj*)** %41, align 8
  %43 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %44 = call i32 %42(%struct.bnx2x_mcast_obj* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %153

47:                                               ; preds = %39, %34
  %48 = load i32, i32* @BNX2X_MSG_SP, align 4
  %49 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %50 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %53 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @DP(i32 %48, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %54, i64 %57)
  %59 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %60 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %59, i32 0, i32 2
  %61 = load i64 (%struct.bnx2x_raw_obj*)*, i64 (%struct.bnx2x_raw_obj*)** %60, align 8
  %62 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %63 = call i64 %61(%struct.bnx2x_raw_obj* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %47
  %66 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %67 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %72 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %75 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %70, %47
  %79 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %80 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %79, i32 0, i32 4
  %81 = load i32 (%struct.bnx2x.1*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x.1*, %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_ramrod_params*, i32)** %80, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %83 = bitcast %struct.bnx2x* %82 to %struct.bnx2x.1*
  %84 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %85 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %84, i32 0, i32 2
  %86 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %85, align 8
  %87 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 %81(%struct.bnx2x.1* %83, %struct.bnx2x_mcast_obj* %86, %struct.bnx2x_mcast_ramrod_params* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %143

93:                                               ; preds = %78
  %94 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %95 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %70, %65
  %97 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %98 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %97, i32 0, i32 2
  %99 = load i64 (%struct.bnx2x_raw_obj*)*, i64 (%struct.bnx2x_raw_obj*)** %98, align 8
  %100 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %101 = call i64 %99(%struct.bnx2x_raw_obj* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %135, label %103

103:                                              ; preds = %96
  %104 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %105 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %104, i32 0, i32 1
  %106 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %105, align 8
  %107 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %108 = call i32 %106(%struct.bnx2x_raw_obj* %107)
  %109 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %110 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %109, i32 0, i32 5
  %111 = load i32 (%struct.bnx2x.2*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_mcast_ramrod_params*, i32)** %110, align 8
  %112 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %113 = bitcast %struct.bnx2x* %112 to %struct.bnx2x.2*
  %114 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 %111(%struct.bnx2x.2* %113, %struct.bnx2x_mcast_ramrod_params* %114, i32 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %137

120:                                              ; preds = %103
  %121 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %122 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %123 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %122, i32 0, i32 0
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %128 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %127, i32 0, i32 6
  %129 = load i32 (%struct.bnx2x.3*, %struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x.3*, %struct.bnx2x_mcast_obj*)** %128, align 8
  %130 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %131 = bitcast %struct.bnx2x* %130 to %struct.bnx2x.3*
  %132 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %133 = call i32 %129(%struct.bnx2x.3* %131, %struct.bnx2x_mcast_obj* %132)
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %126, %120
  br label %135

135:                                              ; preds = %134, %96
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %4, align 4
  br label %153

137:                                              ; preds = %119
  %138 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %139 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %138, i32 0, i32 0
  %140 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %139, align 8
  %141 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %142 = call i32 %140(%struct.bnx2x_raw_obj* %141)
  br label %143

143:                                              ; preds = %137, %92
  %144 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %8, align 8
  %145 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %144, i32 0, i32 7
  %146 = load i32 (%struct.bnx2x.4*, %struct.bnx2x_mcast_ramrod_params*, i32)*, i32 (%struct.bnx2x.4*, %struct.bnx2x_mcast_ramrod_params*, i32)** %145, align 8
  %147 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %148 = bitcast %struct.bnx2x* %147 to %struct.bnx2x.4*
  %149 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i32 %146(%struct.bnx2x.4* %148, %struct.bnx2x_mcast_ramrod_params* %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %143, %135, %46, %32
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @DP(i32, i8*, i64, i32, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
