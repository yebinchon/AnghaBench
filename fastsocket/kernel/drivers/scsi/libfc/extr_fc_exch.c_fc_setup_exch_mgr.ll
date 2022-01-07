; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_setup_exch_mgr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_setup_exch_mgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"libfc_em\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@fc_em_cachep = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fc_cpu_mask = common dso_local global i32 0, align 4
@fc_cpu_order = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"fc_exch_workqueue\00", align 1
@fc_exch_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fc_setup_exch_mgr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %3 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 %2, i32* null)
  store i32 %3, i32* @fc_em_cachep, align 4
  %4 = load i32, i32* @fc_em_cachep, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %32

9:                                                ; preds = %0
  store i32 1, i32* @fc_cpu_mask, align 4
  store i64 0, i64* @fc_cpu_order, align 8
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32, i32* @fc_cpu_mask, align 4
  %12 = load i32, i32* @nr_cpu_ids, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @fc_cpu_mask, align 4
  %16 = shl i32 %15, 1
  store i32 %16, i32* @fc_cpu_mask, align 4
  %17 = load i64, i64* @fc_cpu_order, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* @fc_cpu_order, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load i32, i32* @fc_cpu_mask, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @fc_cpu_mask, align 4
  %22 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* @fc_exch_workqueue, align 4
  %23 = load i32, i32* @fc_exch_workqueue, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %32

27:                                               ; preds = %25
  %28 = load i32, i32* @fc_em_cachep, align 4
  %29 = call i32 @kmem_cache_destroy(i32 %28)
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %27, %26, %6
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
