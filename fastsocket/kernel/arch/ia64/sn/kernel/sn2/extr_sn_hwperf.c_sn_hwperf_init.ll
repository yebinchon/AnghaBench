; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sn_hwperf_init_mutex = common dso_local global i32 0, align 4
@sn_hwperf_salheap = common dso_local global i32* null, align 8
@sn_hwperf_master_nasid = common dso_local global i64 0, align 8
@SN_HWPERF_GET_HEAPSIZE = common dso_local global i64 0, align 8
@SN_HWPERF_OP_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SN_HWPERF_INSTALL_HEAP = common dso_local global i32 0, align 4
@SN_HWPERF_OBJECT_COUNT = common dso_local global i32 0, align 4
@sn_hwperf_obj_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sn_hwperf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hwperf_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @mutex_lock(i32* @sn_hwperf_init_mutex)
  %6 = load i32*, i32** @sn_hwperf_salheap, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @mutex_unlock(i32* @sn_hwperf_init_mutex)
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %1, align 4
  br label %69

11:                                               ; preds = %0
  %12 = call i64 (...) @ia64_sn_get_console_nasid()
  store i64 %12, i64* @sn_hwperf_master_nasid, align 8
  %13 = load i64, i64* @sn_hwperf_master_nasid, align 8
  %14 = load i64, i64* @SN_HWPERF_GET_HEAPSIZE, align 8
  %15 = trunc i64 %14 to i32
  %16 = ptrtoint i32* %2 to i32
  %17 = call i32 @ia64_sn_hwperf_op(i64 %13, i32 %15, i32 0, i32 4, i32 %16, i32 0, i32 0, i32* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @SN_HWPERF_OP_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %57

24:                                               ; preds = %11
  %25 = load i32, i32* %2, align 4
  %26 = call i32* @vmalloc(i32 %25)
  store i32* %26, i32** @sn_hwperf_salheap, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %24
  %32 = load i64, i64* @sn_hwperf_master_nasid, align 8
  %33 = load i32, i32* @SN_HWPERF_INSTALL_HEAP, align 4
  %34 = load i32, i32* %2, align 4
  %35 = load i32*, i32** @sn_hwperf_salheap, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @ia64_sn_hwperf_op(i64 %32, i32 %33, i32 0, i32 %34, i32 %36, i32 0, i32 0, i32* null)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SN_HWPERF_OP_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %57

44:                                               ; preds = %31
  %45 = load i64, i64* @sn_hwperf_master_nasid, align 8
  %46 = load i32, i32* @SN_HWPERF_OBJECT_COUNT, align 4
  %47 = ptrtoint i32* %2 to i32
  %48 = call i32 @ia64_sn_hwperf_op(i64 %45, i32 %46, i32 0, i32 4, i32 %47, i32 0, i32 0, i32* null)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SN_HWPERF_OP_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %2, align 4
  store i32 %56, i32* @sn_hwperf_obj_cnt, align 4
  br label %57

57:                                               ; preds = %55, %52, %41, %28, %21
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32*, i32** @sn_hwperf_salheap, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** @sn_hwperf_salheap, align 8
  %65 = call i32 @vfree(i32* %64)
  store i32* null, i32** @sn_hwperf_salheap, align 8
  store i32 0, i32* @sn_hwperf_obj_cnt, align 4
  br label %66

66:                                               ; preds = %63, %60, %57
  %67 = call i32 @mutex_unlock(i32* @sn_hwperf_init_mutex)
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %66, %8
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @ia64_sn_get_console_nasid(...) #1

declare dso_local i32 @ia64_sn_hwperf_op(i64, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
