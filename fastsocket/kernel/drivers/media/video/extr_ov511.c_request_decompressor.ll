; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_request_decompressor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_request_decompressor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64 }

@BCL_OV511 = common dso_local global i64 0, align 8
@BCL_OV518 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"No decompressor available\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Unknown bridge\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @request_decompressor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_decompressor(%struct.usb_ov511* %0) #0 {
  %2 = alloca %struct.usb_ov511*, align 8
  store %struct.usb_ov511* %0, %struct.usb_ov511** %2, align 8
  %3 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %4 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @BCL_OV511, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %10 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BCL_OV518, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %1
  %15 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %18

16:                                               ; preds = %8
  %17 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  ret i32 %20
}

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
