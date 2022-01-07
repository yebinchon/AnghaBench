; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_chp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_chp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_area = type { i64, i32 }
%struct.chp_config_data = type { i64, i32 }
%struct.chp_id = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"deconfigure\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cancel deconfigure\00", align 1
@__const.chsc_process_sei_chp_config.events = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [47 x i8] c"chsc: channel-path-configuration notification\0A\00", align 1
@__MAX_CHPID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Processing %s for channel path %x.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_area*)* @chsc_process_sei_chp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_chp_config(%struct.chsc_sei_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_area*, align 8
  %3 = alloca %struct.chp_config_data*, align 8
  %4 = alloca %struct.chp_id, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8*], align 16
  store %struct.chsc_sei_area* %0, %struct.chsc_sei_area** %2, align 8
  %7 = bitcast [3 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([3 x i8*]* @__const.chsc_process_sei_chp_config.events to i8*), i64 24, i1 false)
  %8 = call i32 @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %9 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %10 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %16 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to %struct.chp_config_data*
  store %struct.chp_config_data* %17, %struct.chp_config_data** %3, align 8
  %18 = call i32 @chp_id_init(%struct.chp_id* %4)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %60, %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @__MAX_CHPID, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.chp_config_data*, %struct.chp_config_data** %3, align 8
  %25 = getelementptr inbounds %struct.chp_config_data, %struct.chp_config_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @chp_test_bit(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %60

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.chp_config_data*, %struct.chp_config_data** %3, align 8
  %35 = getelementptr inbounds %struct.chp_config_data, %struct.chp_config_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %4, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_notice(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %38, i32 %40, i32 %42)
  %44 = load %struct.chp_config_data*, %struct.chp_config_data** %3, align 8
  %45 = getelementptr inbounds %struct.chp_config_data, %struct.chp_config_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  switch i64 %46, label %59 [
    i64 0, label %47
    i64 1, label %51
    i64 2, label %55
  ]

47:                                               ; preds = %31
  %48 = bitcast %struct.chp_id* %4 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = call i32 @chp_cfg_schedule(i64 %49, i32 1)
  br label %59

51:                                               ; preds = %31
  %52 = bitcast %struct.chp_id* %4 to i64*
  %53 = load i64, i64* %52, align 4
  %54 = call i32 @chp_cfg_schedule(i64 %53, i32 0)
  br label %59

55:                                               ; preds = %31
  %56 = bitcast %struct.chp_id* %4 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @chp_cfg_cancel_deconfigure(i64 %57)
  br label %59

59:                                               ; preds = %31, %55, %51, %47
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %19

63:                                               ; preds = %13, %19
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*) #2

declare dso_local i32 @chp_id_init(%struct.chp_id*) #2

declare dso_local i32 @chp_test_bit(i32, i32) #2

declare dso_local i32 @pr_notice(i8*, i8*, i32, i32) #2

declare dso_local i32 @chp_cfg_schedule(i64, i32) #2

declare dso_local i32 @chp_cfg_cancel_deconfigure(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
