; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_fill_async_lock_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_fill_async_lock_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32*, i32, i32 }

@RCODE_COMPLETE = common dso_local global i32 0, align 4
@TCODE_LOCK_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_packet*, i32, i32, i32)* @fill_async_lock_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_async_lock_resp(%struct.hpsb_packet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hpsb_packet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RCODE_COMPLETE, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %12, %4
  %14 = load i32, i32* @TCODE_LOCK_RESPONSE, align 4
  %15 = call i32 @PREP_ASYNC_HEAD_RCODE(i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %21 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %19, i32* %23, align 4
  %24 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %25 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %24, i32 0, i32 1
  store i32 16, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  %28 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @PREP_ASYNC_HEAD_RCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
