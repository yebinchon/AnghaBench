; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_alloc_vma_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_alloc_vma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_vma_data = type { i32, i32 }
%struct.vm_area_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@vdata_alloc = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"alloc vdata %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gru_vma_data* @gru_alloc_vma_data(%struct.vm_area_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.gru_vma_data*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gru_vma_data*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gru_vma_data* null, %struct.gru_vma_data** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.gru_vma_data* @kmalloc(i32 8, i32 %7)
  store %struct.gru_vma_data* %8, %struct.gru_vma_data** %6, align 8
  %9 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %10 = icmp ne %struct.gru_vma_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.gru_vma_data* null, %struct.gru_vma_data** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load i32, i32* @vdata_alloc, align 4
  %14 = call i32 @STAT(i32 %13)
  %15 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %16 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %19 = getelementptr inbounds %struct.gru_vma_data, %struct.gru_vma_data* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load i32, i32* @grudev, align 4
  %22 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  %23 = call i32 @gru_dbg(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.gru_vma_data* %22)
  %24 = load %struct.gru_vma_data*, %struct.gru_vma_data** %6, align 8
  store %struct.gru_vma_data* %24, %struct.gru_vma_data** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.gru_vma_data*, %struct.gru_vma_data** %3, align 8
  ret %struct.gru_vma_data* %26
}

declare dso_local %struct.gru_vma_data* @kmalloc(i32, i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @gru_dbg(i32, i8*, %struct.gru_vma_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
