; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_alloc_thread_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_alloc_thread_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i32 }
%struct.vm_area_struct = type { %struct.gru_vma_data* }
%struct.gru_vma_data = type { i32, i32, i32, i32, i32, i32 }

@gts_double_allocate = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"vma %p, gts %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gru_thread_state* @gru_alloc_thread_state(%struct.vm_area_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.gru_thread_state*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gru_vma_data*, align 8
  %7 = alloca %struct.gru_thread_state*, align 8
  %8 = alloca %struct.gru_thread_state*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.gru_vma_data*, %struct.gru_vma_data** %10, align 8
  store %struct.gru_vma_data* %11, %struct.gru_vma_data** %6, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %14 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %17 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %20 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %23 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.gru_thread_state* @gru_alloc_gts(%struct.vm_area_struct* %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %25)
  store %struct.gru_thread_state* %26, %struct.gru_thread_state** %7, align 8
  %27 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %28 = call i64 @IS_ERR(%struct.gru_thread_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  store %struct.gru_thread_state* %31, %struct.gru_thread_state** %3, align 8
  br label %62

32:                                               ; preds = %2
  %33 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %34 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.gru_thread_state* @gru_find_current_gts_nolock(%struct.gru_vma_data* %36, i32 %37)
  store %struct.gru_thread_state* %38, %struct.gru_thread_state** %8, align 8
  %39 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  %40 = icmp ne %struct.gru_thread_state* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %43 = call i32 @gts_drop(%struct.gru_thread_state* %42)
  %44 = load %struct.gru_thread_state*, %struct.gru_thread_state** %8, align 8
  store %struct.gru_thread_state* %44, %struct.gru_thread_state** %7, align 8
  %45 = load i32, i32* @gts_double_allocate, align 4
  %46 = call i32 @STAT(i32 %45)
  br label %53

47:                                               ; preds = %32
  %48 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %49 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %48, i32 0, i32 0
  %50 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %51 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %50, i32 0, i32 1
  %52 = call i32 @list_add(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %55 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* @grudev, align 4
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %59 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  %60 = call i32 @gru_dbg(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %58, %struct.gru_thread_state* %59)
  %61 = load %struct.gru_thread_state*, %struct.gru_thread_state** %7, align 8
  store %struct.gru_thread_state* %61, %struct.gru_thread_state** %3, align 8
  br label %62

62:                                               ; preds = %53, %30
  %63 = load %struct.gru_thread_state*, %struct.gru_thread_state** %3, align 8
  ret %struct.gru_thread_state* %63
}

declare dso_local %struct.gru_thread_state* @gru_alloc_gts(%struct.vm_area_struct*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gru_thread_state*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.gru_thread_state* @gru_find_current_gts_nolock(%struct.gru_vma_data*, i32) #1

declare dso_local i32 @gts_drop(%struct.gru_thread_state*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gru_dbg(i32, i8*, %struct.vm_area_struct*, %struct.gru_thread_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
