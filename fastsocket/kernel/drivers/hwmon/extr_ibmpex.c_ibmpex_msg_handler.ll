; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_msg_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ibmpex.c_ibmpex_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_recv_msg = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ibmpex_bmc_data = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"Mismatch between received msgid (%02x) and transmitted msgid (%02x)!\0A\00", align 1
@IPMI_UNKNOWN_ERR_COMPLETION_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_recv_msg*, i8*)* @ibmpex_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmpex_msg_handler(%struct.ipmi_recv_msg* %0, i8* %1) #0 {
  %3 = alloca %struct.ipmi_recv_msg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ibmpex_bmc_data*, align 8
  store %struct.ipmi_recv_msg* %0, %struct.ipmi_recv_msg** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ibmpex_bmc_data*
  store %struct.ibmpex_bmc_data* %7, %struct.ibmpex_bmc_data** %5, align 8
  %8 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %9 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %12 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %17 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %20 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %24 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26)
  %28 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %29 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %28)
  br label %89

30:                                               ; preds = %2
  %31 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %32 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %35 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %37 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %43 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %49 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %30
  %51 = load i32, i32* @IPMI_UNKNOWN_ERR_COMPLETION_CODE, align 4
  %52 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %53 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %56 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %62 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %67 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %69 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %72 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %77 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %70, i32* %75, i32 %78)
  br label %83

80:                                               ; preds = %54
  %81 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %82 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %60
  %84 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %3, align 8
  %85 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %84)
  %86 = load %struct.ibmpex_bmc_data*, %struct.ibmpex_bmc_data** %5, align 8
  %87 = getelementptr inbounds %struct.ibmpex_bmc_data, %struct.ibmpex_bmc_data* %86, i32 0, i32 2
  %88 = call i32 @complete(i32* %87)
  br label %89

89:                                               ; preds = %83, %15
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
