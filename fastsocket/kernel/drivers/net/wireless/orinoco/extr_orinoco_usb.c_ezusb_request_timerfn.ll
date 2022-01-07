; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_request_timerfn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_orinoco_usb.c_ezusb_request_timerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_context = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@URB_ASYNC_UNLINK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EZUSB_CTX_REQ_TIMEOUT = common dso_local global i32 0, align 4
@EZUSB_CTX_RESP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"couldn't unlink\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ezusb_request_timerfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ezusb_request_timerfn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.request_context*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.request_context*
  store %struct.request_context* %6, %struct.request_context** %3, align 8
  %7 = load i32, i32* @URB_ASYNC_UNLINK, align 4
  %8 = load %struct.request_context*, %struct.request_context** %3, align 8
  %9 = getelementptr inbounds %struct.request_context, %struct.request_context* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %7
  store i32 %13, i32* %11, align 4
  %14 = load %struct.request_context*, %struct.request_context** %3, align 8
  %15 = getelementptr inbounds %struct.request_context, %struct.request_context* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @usb_unlink_urb(%struct.TYPE_2__* %16)
  %18 = load i32, i32* @EINPROGRESS, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @EZUSB_CTX_REQ_TIMEOUT, align 4
  %23 = load %struct.request_context*, %struct.request_context** %3, align 8
  %24 = getelementptr inbounds %struct.request_context, %struct.request_context* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  br label %39

25:                                               ; preds = %1
  %26 = load i32, i32* @EZUSB_CTX_RESP_TIMEOUT, align 4
  %27 = load %struct.request_context*, %struct.request_context** %3, align 8
  %28 = getelementptr inbounds %struct.request_context, %struct.request_context* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = call i32 @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.request_context*, %struct.request_context** %3, align 8
  %31 = getelementptr inbounds %struct.request_context, %struct.request_context* %30, i32 0, i32 1
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.request_context*, %struct.request_context** %3, align 8
  %34 = getelementptr inbounds %struct.request_context, %struct.request_context* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.request_context*, %struct.request_context** %3, align 8
  %36 = call i32 @ezusb_ctx_complete(%struct.request_context* %35)
  %37 = load %struct.request_context*, %struct.request_context** %3, align 8
  %38 = call i32 @ezusb_request_context_put(%struct.request_context* %37)
  br label %39

39:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_2__*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ezusb_ctx_complete(%struct.request_context*) #1

declare dso_local i32 @ezusb_request_context_put(%struct.request_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
