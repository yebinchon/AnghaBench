; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_load_kernel_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grukservices.c_gru_load_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { i32, i32, i32, %struct.gru_thread_state*, i64, i64 }
%struct.gru_thread_state = type { i32, i32, %struct.gru_state*, i32, i32 }
%struct.gru_state = type { i8* }

@load_kernel_context = common dso_local global i32 0, align 4
@GRU_NUM_KERNEL_CBR = common dso_local global i32 0, align 4
@GRU_NUM_KERNEL_DSR_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_blade_state*, i32)* @gru_load_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_load_kernel_context(%struct.gru_blade_state* %0, i32 %1) #0 {
  %3 = alloca %struct.gru_blade_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gru_state*, align 8
  %6 = alloca %struct.gru_thread_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gru_blade_state* %0, %struct.gru_blade_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %11 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %10, i32 0, i32 0
  %12 = call i32 @up_read(i32* %11)
  %13 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %14 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %17 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %16, i32 0, i32 3
  %18 = load %struct.gru_thread_state*, %struct.gru_thread_state** %17, align 8
  %19 = icmp ne %struct.gru_thread_state* %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %2
  %21 = call %struct.gru_thread_state* @gru_alloc_gts(i32* null, i32 0, i32 0, i32 0, i32 0, i32 0)
  %22 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %23 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %22, i32 0, i32 3
  store %struct.gru_thread_state* %21, %struct.gru_thread_state** %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %26 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %25, i32 0, i32 3
  %27 = load %struct.gru_thread_state*, %struct.gru_thread_state** %26, align 8
  %28 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %31 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %30, i32 0, i32 3
  %32 = load %struct.gru_thread_state*, %struct.gru_thread_state** %31, align 8
  store %struct.gru_thread_state* %32, %struct.gru_thread_state** %6, align 8
  %33 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %34 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %33, i32 0, i32 2
  %35 = load %struct.gru_state*, %struct.gru_state** %34, align 8
  %36 = icmp ne %struct.gru_state* %35, null
  br i1 %36, label %97, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @load_kernel_context, align 4
  %39 = call i32 @STAT(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @uv_blade_nr_possible_cpus(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @GRU_NUM_KERNEL_CBR, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %47 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @GRU_CB_COUNT_TO_AU(i64 %49)
  %51 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %52 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @GRU_NUM_KERNEL_DSR_BYTES, align 4
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %58 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @GRU_DS_BYTES_TO_AU(i64 %60)
  %62 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %63 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %69, %37
  %65 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %66 = call i32 @gru_assign_gru_context(%struct.gru_thread_state* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = call i32 @msleep(i32 1)
  %71 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %72 = call i32 @gru_steal_context(%struct.gru_thread_state* %71)
  br label %64

73:                                               ; preds = %64
  %74 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %75 = call i32 @gru_load_context(%struct.gru_thread_state* %74)
  %76 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %77 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %76, i32 0, i32 3
  %78 = load %struct.gru_thread_state*, %struct.gru_thread_state** %77, align 8
  %79 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %78, i32 0, i32 2
  %80 = load %struct.gru_state*, %struct.gru_state** %79, align 8
  store %struct.gru_state* %80, %struct.gru_state** %5, align 8
  %81 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  %82 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %7, align 8
  %84 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %85 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @get_gseg_base_address_cb(i8* %87, i32 %88, i32 0)
  %90 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %91 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @get_gseg_base_address_ds(i8* %92, i32 %93, i32 0)
  %95 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %96 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %73, %29
  %98 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %99 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %98, i32 0, i32 0
  %100 = call i32 @downgrade_write(i32* %99)
  ret void
}

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.gru_thread_state* @gru_alloc_gts(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @uv_blade_nr_possible_cpus(i32) #1

declare dso_local i32 @GRU_CB_COUNT_TO_AU(i64) #1

declare dso_local i32 @GRU_DS_BYTES_TO_AU(i64) #1

declare dso_local i32 @gru_assign_gru_context(%struct.gru_thread_state*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gru_steal_context(%struct.gru_thread_state*) #1

declare dso_local i32 @gru_load_context(%struct.gru_thread_state*) #1

declare dso_local i32 @get_gseg_base_address_cb(i8*, i32, i32) #1

declare dso_local i32 @get_gseg_base_address_ds(i8*, i32, i32) #1

declare dso_local i32 @downgrade_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
