; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci8164.c_adl_pci8164_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci8164.c_adl_pci8164_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@PCI8164_AXIS_X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@PCI8164_AXIS_Y = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@PCI8164_AXIS_Z = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@PCI8164_AXIS_U = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"comedi: pci8164 %s read -> %04X:%04X on axis %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*, i8*, i16)* @adl_pci8164_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adl_pci8164_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3, i8* %4, i16 zeroext %5) #0 {
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_insn*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i16 %5, i16* %12, align 2
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %9, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_CHAN(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  switch i32 %20, label %29 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %25
    i32 3, label %27
  ]

21:                                               ; preds = %6
  %22 = load i32, i32* @PCI8164_AXIS_X, align 4
  store i32 %22, i32* %14, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %31

23:                                               ; preds = %6
  %24 = load i32, i32* @PCI8164_AXIS_Y, align 4
  store i32 %24, i32* %14, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %31

25:                                               ; preds = %6
  %26 = load i32, i32* @PCI8164_AXIS_Z, align 4
  store i32 %26, i32* %14, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %31

27:                                               ; preds = %6
  %28 = load i32, i32* @PCI8164_AXIS_U, align 4
  store i32 %28, i32* %14, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @PCI8164_AXIS_X, align 4
  store i32 %30, i32* %14, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21
  %32 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i16, i16* %12, align 2
  %39 = zext i16 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @inw(i64 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %47, i32 %50, i8* %51)
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @printk(i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
