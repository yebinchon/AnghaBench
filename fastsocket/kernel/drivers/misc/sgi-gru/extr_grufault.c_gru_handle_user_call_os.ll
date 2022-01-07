; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_gru_handle_user_call_os.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grufault.c_gru_handle_user_call_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_tlb_fault_handle = type { i32 }
%struct.gru_thread_state = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@call_os = common dso_local global i32 0, align 4
@GRU_HANDLE_STRIDE = common dso_local global i32 0, align 4
@GRU_NUM_CB = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"address 0x%lx, gid %d, gts 0x%p\0A\00", align 1
@GRU_CBR_AU_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gru_handle_user_call_os(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.gru_tlb_fault_handle*, align 8
  %5 = alloca %struct.gru_thread_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @call_os, align 4
  %13 = call i32 @STAT(i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @get_cb_number(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @GRU_HANDLE_STRIDE, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = and i64 %17, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GRU_NUM_CB, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %116

30:                                               ; preds = %23
  %31 = load i64, i64* %3, align 8
  %32 = call %struct.gru_thread_state* @gru_find_lock_gts(i64 %31)
  store %struct.gru_thread_state* %32, %struct.gru_thread_state** %5, align 8
  %33 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %34 = icmp ne %struct.gru_thread_state* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %116

38:                                               ; preds = %30
  %39 = load i32, i32* @grudev, align 4
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %42 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = icmp ne %struct.TYPE_2__* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %47 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ -1, %51 ]
  %54 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %55 = call i32 @gru_dbg(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %53, %struct.gru_thread_state* %54)
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %58 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GRU_CBR_AU_SIZE, align 4
  %61 = mul nsw i32 %59, %60
  %62 = icmp sge i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %112

64:                                               ; preds = %52
  %65 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %66 = call i32 @gru_check_context_placement(%struct.gru_thread_state* %65)
  %67 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %68 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %73 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %78 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %80 = call i32 @gru_update_cch(%struct.gru_thread_state* %79)
  br label %81

81:                                               ; preds = %76, %71, %64
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  %84 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @thread_cbr_number(%struct.gru_thread_state* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %88 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = icmp ne %struct.TYPE_2__* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %81
  %92 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %93 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call %struct.gru_tlb_fault_handle* @get_tfh_by_index(%struct.TYPE_2__* %94, i32 %95)
  store %struct.gru_tlb_fault_handle* %96, %struct.gru_tlb_fault_handle** %4, align 8
  %97 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %98 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %103 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i8* @get_gseg_base_address_cb(i32 %101, i32 %104, i32 %105)
  store i8* %106, i8** %6, align 8
  %107 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %108 = load %struct.gru_tlb_fault_handle*, %struct.gru_tlb_fault_handle** %4, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @gru_user_dropin(%struct.gru_thread_state* %107, %struct.gru_tlb_fault_handle* %108, i8* %109)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %91, %81
  br label %112

112:                                              ; preds = %111, %63
  %113 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %114 = call i32 @gru_unlock_gts(%struct.gru_thread_state* %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %112, %35, %27
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @get_cb_number(i8*) #1

declare dso_local %struct.gru_thread_state* @gru_find_lock_gts(i64) #1

declare dso_local i32 @gru_dbg(i32, i8*, i64, i32, %struct.gru_thread_state*) #1

declare dso_local i32 @gru_check_context_placement(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_update_cch(%struct.gru_thread_state*) #1

declare dso_local i32 @thread_cbr_number(%struct.gru_thread_state*, i32) #1

declare dso_local %struct.gru_tlb_fault_handle* @get_tfh_by_index(%struct.TYPE_2__*, i32) #1

declare dso_local i8* @get_gseg_base_address_cb(i32, i32, i32) #1

declare dso_local i32 @gru_user_dropin(%struct.gru_thread_state*, %struct.gru_tlb_fault_handle*, i8*) #1

declare dso_local i32 @gru_unlock_gts(%struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
