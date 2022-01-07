; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_event_severity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_event_severity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_CLASS_MASK = common dso_local global i32 0, align 4
@EV_SEVERITY_MASK = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i8* null, align 8
@KERN_WARNING = common dso_local global i8* null, align 8
@KERN_ALERT = common dso_local global i8* null, align 8
@KERN_CRIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @scdrv_event_severity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scdrv_event_severity(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @EV_CLASS_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @EV_SEVERITY_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i8*, i8** @KERN_NOTICE, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %45 [
    i32 141, label %14
    i32 142, label %21
    i32 139, label %28
    i32 143, label %37
    i32 138, label %39
    i32 137, label %41
    i32 140, label %43
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %20 [
    i32 131, label %16
    i32 133, label %16
    i32 134, label %18
    i32 132, label %18
  ]

16:                                               ; preds = %14, %14
  %17 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %17, i8** %5, align 8
  br label %20

18:                                               ; preds = %14, %14
  %19 = load i8*, i8** @KERN_ALERT, align 8
  store i8* %19, i8** %5, align 8
  br label %20

20:                                               ; preds = %14, %18, %16
  br label %45

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %27 [
    i32 135, label %23
    i32 136, label %25
  ]

23:                                               ; preds = %21
  %24 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %24, i8** %5, align 8
  br label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** @KERN_CRIT, align 8
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %21, %25, %23
  br label %45

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %36 [
    i32 130, label %30
    i32 129, label %32
    i32 128, label %34
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %31, i8** %5, align 8
  br label %36

32:                                               ; preds = %28
  %33 = load i8*, i8** @KERN_CRIT, align 8
  store i8* %33, i8** %5, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i8*, i8** @KERN_ALERT, align 8
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %28, %34, %32, %30
  br label %45

37:                                               ; preds = %1
  %38 = load i8*, i8** @KERN_ALERT, align 8
  store i8* %38, i8** %5, align 8
  br label %45

39:                                               ; preds = %1
  %40 = load i8*, i8** @KERN_ALERT, align 8
  store i8* %40, i8** %5, align 8
  br label %45

41:                                               ; preds = %1
  %42 = load i8*, i8** @KERN_WARNING, align 8
  store i8* %42, i8** %5, align 8
  br label %45

43:                                               ; preds = %1
  %44 = load i8*, i8** @KERN_ALERT, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %1, %43, %41, %39, %37, %36, %27, %20
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
