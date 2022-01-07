; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_iso.c_hpsb_iso_xmit_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { i64, i64, i32 }

@HPSB_ISO_XMIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_iso_xmit_sync(%struct.hpsb_iso* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hpsb_iso*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %3, align 8
  %4 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %5 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HPSB_ISO_XMIT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %14 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %17 = call i64 @hpsb_iso_n_ready(%struct.hpsb_iso* %16)
  %18 = load %struct.hpsb_iso*, %struct.hpsb_iso** %3, align 8
  %19 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @wait_event_interruptible(i32 %15, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @hpsb_iso_n_ready(%struct.hpsb_iso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
