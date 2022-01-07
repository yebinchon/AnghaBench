; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_do_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_fs3270.c_fs3270_do_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { i32 }
%struct.raw3270_request = type { i32*, i32 }
%struct.fs3270 = type { i32 }

@fs3270_wake_up = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raw3270_view*, %struct.raw3270_request*)* @fs3270_do_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs3270_do_io(%struct.raw3270_view* %0, %struct.raw3270_request* %1) #0 {
  %3 = alloca %struct.raw3270_view*, align 8
  %4 = alloca %struct.raw3270_request*, align 8
  %5 = alloca %struct.fs3270*, align 8
  %6 = alloca i32, align 4
  store %struct.raw3270_view* %0, %struct.raw3270_view** %3, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %4, align 8
  %7 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %8 = bitcast %struct.raw3270_view* %7 to %struct.fs3270*
  store %struct.fs3270* %8, %struct.fs3270** %5, align 8
  %9 = load i32, i32* @fs3270_wake_up, align 4
  %10 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %11 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %13 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %12, i32 0, i32 0
  %14 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %15 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  br label %16

16:                                               ; preds = %45, %2
  %17 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %18 = call i32 @fs3270_working(%struct.fs3270* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %22 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %25 = call i32 @fs3270_working(%struct.fs3270* %24)
  %26 = call i32 @wait_event_interruptible(i32 %23, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %50

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.raw3270_view*, %struct.raw3270_view** %3, align 8
  %33 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %34 = call i32 @raw3270_start(%struct.raw3270_view* %32, %struct.raw3270_request* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.fs3270*, %struct.fs3270** %5, align 8
  %39 = getelementptr inbounds %struct.fs3270, %struct.fs3270* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.raw3270_request*, %struct.raw3270_request** %4, align 8
  %42 = call i32 @raw3270_request_final(%struct.raw3270_request* %41)
  %43 = call i32 @wait_event(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %16, label %50

50:                                               ; preds = %45, %29
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @fs3270_working(%struct.fs3270*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @raw3270_start(%struct.raw3270_view*, %struct.raw3270_request*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @raw3270_request_final(%struct.raw3270_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
