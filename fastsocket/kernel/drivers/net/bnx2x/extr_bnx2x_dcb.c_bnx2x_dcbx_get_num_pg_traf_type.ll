; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_num_pg_traf_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_num_pg_traf_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64* }
%struct.pg_help_data = type { i64, %struct.pg_entry_help_data* }
%struct.pg_entry_help_data = type { i64, i32, i32 }

@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@DCBX_ILLEGAL_PG = common dso_local global i64 0, align 8
@MAX_PFC_PRIORITIES = common dso_local global i64 0, align 8
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"add_traf_type %d pg_found %s num_of_pg %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64*, %struct.pg_help_data*)* @bnx2x_dcbx_get_num_pg_traf_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_get_num_pg_traf_type(%struct.bnx2x* %0, i64* %1, %struct.pg_help_data* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.pg_help_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.pg_entry_help_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.pg_help_data* %2, %struct.pg_help_data** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %12, align 8
  %19 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %20 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %19, i32 0, i32 1
  %21 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %20, align 8
  store %struct.pg_entry_help_data* %21, %struct.pg_entry_help_data** %13, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %32, %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i64, i64* @DCBX_ILLEGAL_PG, align 8
  %28 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %28, i64 %29
  %31 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %22

35:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %150, %35
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %153

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MAX_PFC_PRIORITIES, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %139

47:                                               ; preds = %40
  %48 = load i64*, i64** %5, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i64, i64* %48, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %102, %47
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %105

59:                                               ; preds = %55
  %60 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %60, i64 %61
  %63 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %59
  %68 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %68, i64 %69
  %71 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 1, %77
  %79 = and i32 %72, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %67
  %82 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %82, i64 %83
  %85 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %67
  %89 = load i64*, i64** %12, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %95, i64 %96
  %98 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %94
  store i32 %100, i32* %98, align 8
  store i32 1, i32* %7, align 4
  br label %105

101:                                              ; preds = %59
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %55

105:                                              ; preds = %88, %55
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 0, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %105
  %109 = load i64, i64* %11, align 8
  %110 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %111 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %112 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %110, i64 %113
  %115 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %114, i32 0, i32 0
  store i64 %109, i64* %115, align 8
  %116 = load i64*, i64** %12, align 8
  %117 = load i64, i64* %10, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = shl i32 1, %120
  %122 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %123 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %124 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %122, i64 %125
  %127 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 8
  %128 = load %struct.pg_entry_help_data*, %struct.pg_entry_help_data** %13, align 8
  %129 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %130 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %128, i64 %131
  %133 = getelementptr inbounds %struct.pg_entry_help_data, %struct.pg_entry_help_data* %132, i32 0, i32 2
  store i32 1, i32* %133, align 4
  %134 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %135 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %135, align 8
  br label %138

138:                                              ; preds = %108, %105
  br label %139

139:                                              ; preds = %138, %40
  %140 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %141 = load i64, i64* %10, align 8
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 0, %142
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %146 = load %struct.pg_help_data*, %struct.pg_help_data** %6, align 8
  %147 = getelementptr inbounds %struct.pg_help_data, %struct.pg_help_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @DP(i32 %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %141, i8* %145, i64 %148)
  br label %150

150:                                              ; preds = %139
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %36

153:                                              ; preds = %36
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
