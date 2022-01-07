; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_fill_async_writeblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_fill_async_writeblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32*, i32, i32, i32 }

@TCODE_WRITEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_packet*, i32, i32)* @fill_async_writeblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_async_writeblock(%struct.hpsb_packet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hpsb_packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @TCODE_WRITEB, align 4
  %8 = call i32 @PREP_ASYNC_HEAD_ADDRESS(i32 %7)
  %9 = load i32, i32* %6, align 4
  %10 = shl i32 %9, 16
  %11 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %12 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  store i32 %10, i32* %14, align 4
  %15 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %16 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %15, i32 0, i32 1
  store i32 16, i32* %16, align 8
  %17 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %18 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %17, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %24, 4
  %26 = sub nsw i32 4, %25
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  %30 = add nsw i32 %19, %29
  %31 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %32 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i32 @PREP_ASYNC_HEAD_ADDRESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
