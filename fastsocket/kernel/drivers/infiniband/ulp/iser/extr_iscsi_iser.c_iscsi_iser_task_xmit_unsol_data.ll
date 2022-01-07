; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_xmit_unsol_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_task_xmit_unsol_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_task = type { %struct.iscsi_r2t_info }
%struct.iscsi_r2t_info = type { i64, i64, i64, i32 }
%struct.iscsi_data = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Sending data-out: itt 0x%x, data count %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Need to send %d more as data-out PDUs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_task*)* @iscsi_iser_task_xmit_unsol_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_task_xmit_unsol_data(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.iscsi_r2t_info*, align 8
  %6 = alloca %struct.iscsi_data, align 4
  %7 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 0
  store %struct.iscsi_r2t_info* %9, %struct.iscsi_r2t_info** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %12 = call i64 @iscsi_task_has_unsol_data(%struct.iscsi_task* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %16 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %17 = call i32 @iscsi_prep_data_out_pdu(%struct.iscsi_task* %15, %struct.iscsi_r2t_info* %16, %struct.iscsi_data* %6)
  %18 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, i64, ...) @iser_dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %23)
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %26 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %27 = call i32 @iser_send_data_out(%struct.iscsi_conn* %25, %struct.iscsi_task* %26, %struct.iscsi_data* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  br label %52

35:                                               ; preds = %14
  %36 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %40 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = call i32 (i8*, i64, ...) @iser_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %10

51:                                               ; preds = %10
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @iscsi_task_has_unsol_data(%struct.iscsi_task*) #1

declare dso_local i32 @iscsi_prep_data_out_pdu(%struct.iscsi_task*, %struct.iscsi_r2t_info*, %struct.iscsi_data*) #1

declare dso_local i32 @iser_dbg(i8*, i64, ...) #1

declare dso_local i32 @iser_send_data_out(%struct.iscsi_conn*, %struct.iscsi_task*, %struct.iscsi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
