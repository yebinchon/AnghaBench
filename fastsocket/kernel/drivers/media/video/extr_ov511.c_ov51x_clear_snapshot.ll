; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_clear_snapshot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_clear_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BCL_OV511 = common dso_local global i64 0, align 8
@R51x_SYS_SNAP = common dso_local global i32 0, align 4
@BCL_OV518 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"snapshot reset not supported yet on OV518(+)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"clear snap: invalid bridge type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*)* @ov51x_clear_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov51x_clear_snapshot(%struct.usb_ov511* %0) #0 {
  %2 = alloca %struct.usb_ov511*, align 8
  store %struct.usb_ov511* %0, %struct.usb_ov511** %2, align 8
  %3 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %4 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BCL_OV511, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %10 = load i32, i32* @R51x_SYS_SNAP, align 4
  %11 = call i32 @reg_w(%struct.usb_ov511* %9, i32 %10, i32 0)
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %13 = load i32, i32* @R51x_SYS_SNAP, align 4
  %14 = call i32 @reg_w(%struct.usb_ov511* %12, i32 %13, i32 2)
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %16 = load i32, i32* @R51x_SYS_SNAP, align 4
  %17 = call i32 @reg_w(%struct.usb_ov511* %15, i32 %16, i32 0)
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %20 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BCL_OV518, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %26 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %36

30:                                               ; preds = %18
  %31 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %32 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %30, %24
  br label %37

37:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
