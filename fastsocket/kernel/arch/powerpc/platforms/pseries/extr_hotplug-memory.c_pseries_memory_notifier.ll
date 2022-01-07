; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_memory_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_hotplug-memory.c_pseries_memory_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @pseries_memory_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_memory_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  switch i64 %9, label %32 [
    i64 129, label %10
    i64 128, label %17
    i64 131, label %24
    i64 130, label %24
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @pseries_add_memory(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %10
  br label %34

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @pseries_remove_memory(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %17
  br label %34

24:                                               ; preds = %3, %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @pseries_drconf_memory(i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %31, %23, %16
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @pseries_add_memory(i8*) #1

declare dso_local i32 @pseries_remove_memory(i8*) #1

declare dso_local i32 @pseries_drconf_memory(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
