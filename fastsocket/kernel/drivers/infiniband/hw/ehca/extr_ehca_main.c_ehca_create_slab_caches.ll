; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_create_slab_caches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_main.c_ehca_create_slab_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Cannot create PD SLAB cache.\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot create CQ SLAB cache.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Cannot create QP SLAB cache.\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot create AV SLAB cache.\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Cannot create MR&MW SLAB cache.\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Cannot create small queue SLAB cache.\00", align 1
@EHCA_PAGESIZE = common dso_local global i32 0, align 4
@H_CB_ALIGNMENT = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ctblk_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ehca_create_slab_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_create_slab_caches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @ehca_init_pd_cache()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %51

9:                                                ; preds = %0
  %10 = call i32 (...) @ehca_init_cq_cache()
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %48

15:                                               ; preds = %9
  %16 = call i32 (...) @ehca_init_qp_cache()
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %46

21:                                               ; preds = %15
  %22 = call i32 (...) @ehca_init_av_cache()
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %44

27:                                               ; preds = %21
  %28 = call i32 (...) @ehca_init_mrmw_cache()
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %42

33:                                               ; preds = %27
  %34 = call i32 (...) @ehca_init_small_qp_cache()
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @ehca_gen_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %51

40:                                               ; preds = %37
  %41 = call i32 (...) @ehca_cleanup_mrmw_cache()
  br label %42

42:                                               ; preds = %40, %31
  %43 = call i32 (...) @ehca_cleanup_av_cache()
  br label %44

44:                                               ; preds = %42, %25
  %45 = call i32 (...) @ehca_cleanup_qp_cache()
  br label %46

46:                                               ; preds = %44, %19
  %47 = call i32 (...) @ehca_cleanup_cq_cache()
  br label %48

48:                                               ; preds = %46, %13
  %49 = call i32 (...) @ehca_cleanup_pd_cache()
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %48, %39, %6
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @ehca_init_pd_cache(...) #1

declare dso_local i32 @ehca_gen_err(i8*) #1

declare dso_local i32 @ehca_init_cq_cache(...) #1

declare dso_local i32 @ehca_init_qp_cache(...) #1

declare dso_local i32 @ehca_init_av_cache(...) #1

declare dso_local i32 @ehca_init_mrmw_cache(...) #1

declare dso_local i32 @ehca_init_small_qp_cache(...) #1

declare dso_local i32 @ehca_cleanup_mrmw_cache(...) #1

declare dso_local i32 @ehca_cleanup_av_cache(...) #1

declare dso_local i32 @ehca_cleanup_qp_cache(...) #1

declare dso_local i32 @ehca_cleanup_cq_cache(...) #1

declare dso_local i32 @ehca_cleanup_pd_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
