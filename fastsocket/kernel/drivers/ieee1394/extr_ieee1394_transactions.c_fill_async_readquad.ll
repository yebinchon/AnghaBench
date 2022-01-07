; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_fill_async_readquad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_fill_async_readquad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i32, i64 }

@TCODE_READQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_packet*, i32)* @fill_async_readquad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_async_readquad(%struct.hpsb_packet* %0, i32 %1) #0 {
  %3 = alloca %struct.hpsb_packet*, align 8
  %4 = alloca i32, align 4
  store %struct.hpsb_packet* %0, %struct.hpsb_packet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @TCODE_READQ, align 4
  %6 = call i32 @PREP_ASYNC_HEAD_ADDRESS(i32 %5)
  %7 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %8 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %7, i32 0, i32 0
  store i32 12, i32* %8, align 8
  %9 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %10 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.hpsb_packet*, %struct.hpsb_packet** %3, align 8
  %12 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  ret void
}

declare dso_local i32 @PREP_ASYNC_HEAD_ADDRESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
