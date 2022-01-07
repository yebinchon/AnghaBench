; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"CAMERA INTERFACE REGS\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"DRAM INTERFACE REGS\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ISO FIFO REGS\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"PIO REGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"I2C REGS\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SYSTEM CONTROL REGS\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"OmniCE REGS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*)* @ov511_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_dump_regs(%struct.usb_ov511* %0) #0 {
  %2 = alloca %struct.usb_ov511*, align 8
  store %struct.usb_ov511* %0, %struct.usb_ov511** %2, align 8
  %3 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %4 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %9 = call i32 @dump_reg_range(%struct.usb_ov511* %8, i32 16, i32 31)
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %16 = call i32 @dump_reg_range(%struct.usb_ov511* %15, i32 32, i32 35)
  %17 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %18 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %23 = call i32 @dump_reg_range(%struct.usb_ov511* %22, i32 48, i32 49)
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %25 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %30 = call i32 @dump_reg_range(%struct.usb_ov511* %29, i32 56, i32 57)
  %31 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %32 = call i32 @dump_reg_range(%struct.usb_ov511* %31, i32 62, i32 62)
  %33 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %34 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %38 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %39 = call i32 @dump_reg_range(%struct.usb_ov511* %38, i32 64, i32 73)
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %41 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @dev_info(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %46 = call i32 @dump_reg_range(%struct.usb_ov511* %45, i32 80, i32 85)
  %47 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %48 = call i32 @dump_reg_range(%struct.usb_ov511* %47, i32 94, i32 95)
  %49 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %50 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %54 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %55 = call i32 @dump_reg_range(%struct.usb_ov511* %54, i32 112, i32 121)
  %56 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %57 = call i32 @dump_reg_range(%struct.usb_ov511* %56, i32 128, i32 159)
  %58 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %59 = call i32 @dump_reg_range(%struct.usb_ov511* %58, i32 160, i32 191)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @dump_reg_range(%struct.usb_ov511*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
