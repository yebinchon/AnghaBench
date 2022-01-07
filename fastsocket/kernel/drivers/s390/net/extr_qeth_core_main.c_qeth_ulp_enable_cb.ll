; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_ulp_enable_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.qeth_reply = type { i32 }
%struct.qeth_cmd_buffer = type { i64, i32 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ulpenacb\00", align 1
@QETH_MPC_TOKEN_LENGTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"  rc%d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@QETH_IN_BUF_SIZE_DEFAULT = common dso_local global i64 0, align 8
@QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"link%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_reply*, i64)* @qeth_ulp_enable_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_ulp_enable_cb(%struct.qeth_card* %0, %struct.qeth_reply* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qeth_card*, align 8
  %6 = alloca %struct.qeth_reply*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %5, align 8
  store %struct.qeth_reply* %1, %struct.qeth_reply** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @SETUP, align 4
  %14 = call i32 @QETH_DBF_TEXT(i32 %13, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.qeth_cmd_buffer*
  store %struct.qeth_cmd_buffer* %16, %struct.qeth_cmd_buffer** %12, align 8
  %17 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %21 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @QETH_ULP_ENABLE_RESP_FILTER_TOKEN(i32 %22)
  %24 = load i32, i32* @QETH_MPC_TOKEN_LENGTH, align 4
  %25 = call i32 @memcpy(i64* %19, i32 %23, i32 %24)
  %26 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @qeth_get_mtu_out_of_mpc(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %3
  %33 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %34 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @QETH_ULP_ENABLE_RESP_MAX_MTU(i32 %35)
  %37 = call i32 @memcpy(i64* %9, i32 %36, i32 2)
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @qeth_get_mtu_outof_framesize(i64 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load i64, i64* @EINVAL, align 8
  %44 = sub nsw i64 0, %43
  %45 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %46 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @SETUP, align 4
  %48 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %49 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @QETH_DBF_TEXT_(i32 %47, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  store i32 0, i32* %4, align 4
  br label %119

52:                                               ; preds = %32
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %59 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = mul nsw i32 2, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %61, %64
  %66 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %67 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  br label %87

69:                                               ; preds = %3
  %70 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %71 = call i64 @qeth_get_initial_mtu_for_card(%struct.qeth_card* %70)
  %72 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %73 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  store i64 %71, i64* %74, align 8
  %75 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %76 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @qeth_get_max_mtu_for_card(i32 %78)
  %80 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %81 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* @QETH_IN_BUF_SIZE_DEFAULT, align 8
  %84 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  br label %87

87:                                               ; preds = %69, %52
  %88 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %89 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @QETH_ULP_ENABLE_RESP_DIFINFO_LEN(i32 %90)
  %92 = call i32 @memcpy(i64* %10, i32 %91, i32 2)
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @QETH_MPC_DIFINFO_LEN_INDICATES_LINK_TYPE, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %87
  %97 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %98 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @QETH_ULP_ENABLE_RESP_LINK_TYPE(i32 %99)
  %101 = call i32 @memcpy(i64* %11, i32 %100, i32 1)
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  br label %110

106:                                              ; preds = %87
  %107 = load %struct.qeth_card*, %struct.qeth_card** %5, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %96
  %111 = load i32, i32* @SETUP, align 4
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @QETH_DBF_TEXT_(i32 %111, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @SETUP, align 4
  %115 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %12, align 8
  %116 = getelementptr inbounds %struct.qeth_cmd_buffer, %struct.qeth_cmd_buffer* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @QETH_DBF_TEXT_(i32 %114, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %110, %42
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_RESP_FILTER_TOKEN(i32) #1

declare dso_local i64 @qeth_get_mtu_out_of_mpc(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_RESP_MAX_MTU(i32) #1

declare dso_local i64 @qeth_get_mtu_outof_framesize(i64) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i64) #1

declare dso_local i64 @qeth_get_initial_mtu_for_card(%struct.qeth_card*) #1

declare dso_local i64 @qeth_get_max_mtu_for_card(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_RESP_DIFINFO_LEN(i32) #1

declare dso_local i32 @QETH_ULP_ENABLE_RESP_LINK_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
