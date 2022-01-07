; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_init_compression.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_init_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@phy = common dso_local global i32 0, align 4
@phuv = common dso_local global i32 0, align 4
@pvy = common dso_local global i32 0, align 4
@pvuv = common dso_local global i32 0, align 4
@qhy = common dso_local global i32 0, align 4
@qhuv = common dso_local global i32 0, align 4
@qvy = common dso_local global i32 0, align 4
@qvuv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error uploading quantization tables\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @ov511_init_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_init_compression(%struct.usb_ov511* %0) #0 {
  %2 = alloca %struct.usb_ov511*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %5 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %1
  %9 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %10 = load i32, i32* @phy, align 4
  %11 = call i32 @reg_w(%struct.usb_ov511* %9, i32 112, i32 %10)
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %13 = load i32, i32* @phuv, align 4
  %14 = call i32 @reg_w(%struct.usb_ov511* %12, i32 113, i32 %13)
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %16 = load i32, i32* @pvy, align 4
  %17 = call i32 @reg_w(%struct.usb_ov511* %15, i32 114, i32 %16)
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %19 = load i32, i32* @pvuv, align 4
  %20 = call i32 @reg_w(%struct.usb_ov511* %18, i32 115, i32 %19)
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %22 = load i32, i32* @qhy, align 4
  %23 = call i32 @reg_w(%struct.usb_ov511* %21, i32 116, i32 %22)
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %25 = load i32, i32* @qhuv, align 4
  %26 = call i32 @reg_w(%struct.usb_ov511* %24, i32 117, i32 %25)
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %28 = load i32, i32* @qvy, align 4
  %29 = call i32 @reg_w(%struct.usb_ov511* %27, i32 118, i32 %28)
  %30 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %31 = load i32, i32* @qvuv, align 4
  %32 = call i32 @reg_w(%struct.usb_ov511* %30, i32 119, i32 %31)
  %33 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %34 = call i64 @ov511_upload_quan_tables(%struct.usb_ov511* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %8
  %37 = call i32 @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %8
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %43 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i64 @ov511_upload_quan_tables(%struct.usb_ov511*) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
