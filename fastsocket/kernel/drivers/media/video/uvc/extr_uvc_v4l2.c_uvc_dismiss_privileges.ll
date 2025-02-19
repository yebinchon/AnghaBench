; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_dismiss_privileges.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_v4l2.c_uvc_dismiss_privileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_fh = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UVC_HANDLE_ACTIVE = common dso_local global i64 0, align 8
@UVC_HANDLE_PASSIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_fh*)* @uvc_dismiss_privileges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_dismiss_privileges(%struct.uvc_fh* %0) #0 {
  %2 = alloca %struct.uvc_fh*, align 8
  store %struct.uvc_fh* %0, %struct.uvc_fh** %2, align 8
  %3 = load %struct.uvc_fh*, %struct.uvc_fh** %2, align 8
  %4 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @UVC_HANDLE_ACTIVE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.uvc_fh*, %struct.uvc_fh** %2, align 8
  %10 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @atomic_dec(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load i64, i64* @UVC_HANDLE_PASSIVE, align 8
  %16 = load %struct.uvc_fh*, %struct.uvc_fh** %2, align 8
  %17 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
