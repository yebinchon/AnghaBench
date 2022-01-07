; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_oom_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_cmm.c_cmm_oom_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@oom_kb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"OOM processing started\0A\00", align 1
@loaned_pages = common dso_local global i32 0, align 4
@loaned_pages_target = common dso_local global i32 0, align 4
@oom_freed_pages = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"OOM processing complete\0A\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cmm_oom_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmm_oom_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %7, align 8
  %11 = load i32, i32* @oom_kb, align 4
  %12 = call i64 @KB2PAGES(i32 %11)
  store i64 %12, i64* %8, align 8
  %13 = call i32 @cmm_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @cmm_free_pages(i64 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* @loaned_pages, align 4
  store i32 %16, i32* @loaned_pages_target, align 4
  %17 = load i32, i32* @oom_kb, align 4
  %18 = call i64 @KB2PAGES(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 %18, %19
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, %20
  store i64 %23, i64* %21, align 8
  %24 = load i32, i32* @oom_kb, align 4
  %25 = call i64 @KB2PAGES(i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = sub nsw i64 %25, %26
  %28 = load i32, i32* @oom_freed_pages, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @oom_freed_pages, align 4
  %32 = call i32 @cmm_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %33
}

declare dso_local i64 @KB2PAGES(i32) #1

declare dso_local i32 @cmm_dbg(i8*) #1

declare dso_local i64 @cmm_free_pages(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
