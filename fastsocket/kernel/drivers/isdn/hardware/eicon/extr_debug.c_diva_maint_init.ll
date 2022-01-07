; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_maint_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_maint_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_queue = common dso_local global i32* null, align 8
@TraceFilter = common dso_local global i64* null, align 8
@TraceFilterIdent = common dso_local global i32 0, align 4
@TraceFilterChannel = common dso_local global i32 0, align 4
@dbg_base = common dso_local global i32* null, align 8
@start_sec = common dso_local global i32 0, align 4
@start_usec = common dso_local global i32 0, align 4
@DBG_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"KERNEL MODE BUFFER\0A\00", align 1
@external_dbg_queue = common dso_local global i32 0, align 4
@dbg_q_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dbg_init\00", align 1
@dbg_adapter_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diva_maint_init(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32*, i32** @dbg_queue, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 16384
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %3
  store i32 -1, i32* %4, align 4
  br label %75

17:                                               ; preds = %13
  %18 = load i64*, i64** @TraceFilter, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 0, i64* %19, align 8
  store i32 -1, i32* @TraceFilterIdent, align 4
  store i32 -1, i32* @TraceFilterChannel, align 4
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** @dbg_base, align 8
  %21 = call i32 @diva_os_get_time(i32* @start_sec, i32* @start_usec)
  %22 = load i64, i64* @DBG_MAGIC, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  store i32* %26, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %27, 4
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** %5, align 8
  store i32 2048, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32* %31, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 4
  store i64 %33, i64* %6, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @strcpy(i32* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2048
  store i32* %37, i32** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, 2048
  store i64 %39, i64* %6, align 8
  %40 = load i32*, i32** %5, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  store i32* %42, i32** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %43, 4
  store i64 %44, i64* %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = bitcast i32* %46 to i8*
  %48 = load i32*, i32** %5, align 8
  %49 = bitcast i32* %48 to i8**
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 8
  store i32* %51, i32** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, 8
  store i64 %53, i64* %6, align 8
  %54 = load i32*, i32** %5, align 8
  store i32* %54, i32** @dbg_queue, align 8
  %55 = load i32*, i32** @dbg_queue, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, 4
  %60 = sub i64 %59, 512
  %61 = call i32 @queueInit(i32* %55, i32* %57, i64 %60)
  store i32 0, i32* @external_dbg_queue, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %17
  store i32 1, i32* @external_dbg_queue, align 4
  br label %65

65:                                               ; preds = %64, %17
  %66 = call i64 @diva_os_initialize_spin_lock(i32* @dbg_q_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32* null, i32** @dbg_queue, align 8
  store i32* null, i32** @dbg_base, align 8
  store i32 0, i32* @external_dbg_queue, align 4
  store i32 -1, i32* %4, align 4
  br label %75

69:                                               ; preds = %65
  %70 = call i64 @diva_os_initialize_spin_lock(i32* @dbg_adapter_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @diva_os_destroy_spin_lock(i32* @dbg_q_lock, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** @dbg_queue, align 8
  store i32* null, i32** @dbg_base, align 8
  store i32 0, i32* @external_dbg_queue, align 4
  store i32 -1, i32* %4, align 4
  br label %75

74:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %72, %68, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @diva_os_get_time(i32*, i32*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @queueInit(i32*, i32*, i64) #1

declare dso_local i64 @diva_os_initialize_spin_lock(i32*, i8*) #1

declare dso_local i32 @diva_os_destroy_spin_lock(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
