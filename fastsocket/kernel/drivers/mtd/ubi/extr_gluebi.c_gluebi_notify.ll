; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_gluebi.c_gluebi_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_gluebi.c_gluebi_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.ubi_notification = type { i32, i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @gluebi_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gluebi_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ubi_notification*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.ubi_notification*
  store %struct.ubi_notification* %9, %struct.ubi_notification** %7, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %29 [
    i64 131, label %11
    i64 130, label %17
    i64 129, label %21
    i64 128, label %25
  ]

11:                                               ; preds = %3
  %12 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %13 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %12, i32 0, i32 1
  %14 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %15 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %14, i32 0, i32 0
  %16 = call i32 @gluebi_create(i32* %13, i32* %15)
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %19 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %18, i32 0, i32 0
  %20 = call i32 @gluebi_remove(i32* %19)
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %23 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %22, i32 0, i32 0
  %24 = call i32 @gluebi_resized(i32* %23)
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %27 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %26, i32 0, i32 0
  %28 = call i32 @gluebi_updated(i32* %27)
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %25, %21, %17, %11
  %31 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %31
}

declare dso_local i32 @gluebi_create(i32*, i32*) #1

declare dso_local i32 @gluebi_remove(i32*) #1

declare dso_local i32 @gluebi_resized(i32*) #1

declare dso_local i32 @gluebi_updated(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
