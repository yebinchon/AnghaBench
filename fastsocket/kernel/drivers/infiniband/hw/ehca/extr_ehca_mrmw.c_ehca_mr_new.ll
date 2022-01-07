; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_mr_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_mr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr = type { i32 }

@mr_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"alloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ehca_mr* ()* @ehca_mr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ehca_mr* @ehca_mr_new() #0 {
  %1 = alloca %struct.ehca_mr*, align 8
  %2 = load i32, i32* @mr_cache, align 4
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ehca_mr* @kmem_cache_zalloc(i32 %2, i32 %3)
  store %struct.ehca_mr* %4, %struct.ehca_mr** %1, align 8
  %5 = load %struct.ehca_mr*, %struct.ehca_mr** %1, align 8
  %6 = icmp ne %struct.ehca_mr* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load %struct.ehca_mr*, %struct.ehca_mr** %1, align 8
  %9 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_init(i32* %9)
  br label %13

11:                                               ; preds = %0
  %12 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  %14 = load %struct.ehca_mr*, %struct.ehca_mr** %1, align 8
  ret %struct.ehca_mr* %14
}

declare dso_local %struct.ehca_mr* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ehca_gen_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
