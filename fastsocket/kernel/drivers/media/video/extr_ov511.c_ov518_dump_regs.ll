; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"VIDEO MODE REGS\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"DATA PUMP AND SNAPSHOT REGS\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"I2C REGS\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"SYSTEM CONTROL AND VENDOR REGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"60 - 6F\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"70 - 7F\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Y QUANTIZATION TABLE\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"UV QUANTIZATION TABLE\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"A0 - BF\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"CBR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*)* @ov518_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_dump_regs(%struct.usb_ov511* %0) #0 {
  %2 = alloca %struct.usb_ov511*, align 8
  store %struct.usb_ov511* %0, %struct.usb_ov511** %2, align 8
  %3 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %4 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %9 = call i32 @dump_reg_range(%struct.usb_ov511* %8, i32 32, i32 47)
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_info(i32* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %16 = call i32 @dump_reg_range(%struct.usb_ov511* %15, i32 48, i32 63)
  %17 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %18 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %23 = call i32 @dump_reg_range(%struct.usb_ov511* %22, i32 64, i32 79)
  %24 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %25 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_info(i32* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %30 = call i32 @dump_reg_range(%struct.usb_ov511* %29, i32 80, i32 95)
  %31 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %32 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %37 = call i32 @dump_reg_range(%struct.usb_ov511* %36, i32 96, i32 111)
  %38 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %39 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_info(i32* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %44 = call i32 @dump_reg_range(%struct.usb_ov511* %43, i32 112, i32 127)
  %45 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %46 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @dev_info(i32* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %50 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %51 = call i32 @dump_reg_range(%struct.usb_ov511* %50, i32 128, i32 143)
  %52 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %53 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_info(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %57 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %58 = call i32 @dump_reg_range(%struct.usb_ov511* %57, i32 144, i32 159)
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %60 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @dev_info(i32* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %64 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %65 = call i32 @dump_reg_range(%struct.usb_ov511* %64, i32 160, i32 191)
  %66 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %67 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @dev_info(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %71 = load %struct.usb_ov511*, %struct.usb_ov511** %2, align 8
  %72 = call i32 @dump_reg_range(%struct.usb_ov511* %71, i32 192, i32 207)
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
