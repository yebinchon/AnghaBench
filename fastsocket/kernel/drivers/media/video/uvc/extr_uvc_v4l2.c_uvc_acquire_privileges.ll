; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_acquire_privileges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_acquire_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_fh = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UVC_HANDLE_ACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_fh*)* @uvc_acquire_privileges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_acquire_privileges(%struct.uvc_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uvc_fh*, align 8
  store %struct.uvc_fh* %0, %struct.uvc_fh** %3, align 8
  %4 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %5 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UVC_HANDLE_ACTIVE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %12 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc_return(i32* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %19 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @atomic_dec(i32* %21)
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %10
  %26 = load i64, i64* @UVC_HANDLE_ACTIVE, align 8
  %27 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %28 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %17, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
