; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_notify_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_notify_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_notifier = type { i32, i32, i8*, i32, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@notify_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*)* @notify_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_push(i32 %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.capi_notifier*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.capi_notifier* @kmalloc(i32 32, i32 %11)
  store %struct.capi_notifier* %12, %struct.capi_notifier** %10, align 8
  %13 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %14 = icmp ne %struct.capi_notifier* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %38

18:                                               ; preds = %4
  %19 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %20 = getelementptr inbounds %struct.capi_notifier, %struct.capi_notifier* %19, i32 0, i32 1
  %21 = load i32, i32* @notify_handler, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %25 = getelementptr inbounds %struct.capi_notifier, %struct.capi_notifier* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %28 = getelementptr inbounds %struct.capi_notifier, %struct.capi_notifier* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %31 = getelementptr inbounds %struct.capi_notifier, %struct.capi_notifier* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %34 = getelementptr inbounds %struct.capi_notifier, %struct.capi_notifier* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.capi_notifier*, %struct.capi_notifier** %10, align 8
  %36 = getelementptr inbounds %struct.capi_notifier, %struct.capi_notifier* %35, i32 0, i32 1
  %37 = call i32 @schedule_work(i32* %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %18, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local %struct.capi_notifier* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
