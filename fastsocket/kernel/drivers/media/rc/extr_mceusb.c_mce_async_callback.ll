; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mce_async_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mce_async_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.mceusb_dev* }
%struct.mceusb_dev = type { i32 }
%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"callback called (status=%d len=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.pt_regs*)* @mce_async_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_async_callback(%struct.urb* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.mceusb_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %7 = load %struct.urb*, %struct.urb** %3, align 8
  %8 = icmp ne %struct.urb* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %34

10:                                               ; preds = %2
  %11 = load %struct.urb*, %struct.urb** %3, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 3
  %13 = load %struct.mceusb_dev*, %struct.mceusb_dev** %12, align 8
  store %struct.mceusb_dev* %13, %struct.mceusb_dev** %5, align 8
  %14 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %15 = icmp ne %struct.mceusb_dev* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.urb*, %struct.urb** %3, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.urb*, %struct.urb** %3, align 8
  %24 = getelementptr inbounds %struct.urb, %struct.urb* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.mceusb_dev*, %struct.mceusb_dev** %5, align 8
  %29 = load %struct.urb*, %struct.urb** %3, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mceusb_dev_printdata(%struct.mceusb_dev* %28, i32 %31, i32 0, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %9, %16, %10
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @mceusb_dev_printdata(%struct.mceusb_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
