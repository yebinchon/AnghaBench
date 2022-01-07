; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_event_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_event_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_bsg_event = type { i32, i32, i32, i32*, i32, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_bsg_event* (i8*, i32, i8*)* @lpfc_bsg_event_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_bsg_event* @lpfc_bsg_event_new(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.lpfc_bsg_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lpfc_bsg_event*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.lpfc_bsg_event* @kzalloc(i32 56, i32 %9)
  store %struct.lpfc_bsg_event* %10, %struct.lpfc_bsg_event** %8, align 8
  %11 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %12 = icmp ne %struct.lpfc_bsg_event* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.lpfc_bsg_event* null, %struct.lpfc_bsg_event** %4, align 8
  br label %42

14:                                               ; preds = %3
  %15 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %16 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %15, i32 0, i32 8
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %19 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %18, i32 0, i32 7
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %23 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %29 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %32 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %34 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %33, i32 0, i32 3
  store i32* null, i32** %34, align 8
  %35 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %36 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %35, i32 0, i32 2
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_bsg_event, %struct.lpfc_bsg_event* %38, i32 0, i32 1
  %40 = call i32 @kref_init(i32* %39)
  %41 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %8, align 8
  store %struct.lpfc_bsg_event* %41, %struct.lpfc_bsg_event** %4, align 8
  br label %42

42:                                               ; preds = %14, %13
  %43 = load %struct.lpfc_bsg_event*, %struct.lpfc_bsg_event** %4, align 8
  ret %struct.lpfc_bsg_event* %43
}

declare dso_local %struct.lpfc_bsg_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
