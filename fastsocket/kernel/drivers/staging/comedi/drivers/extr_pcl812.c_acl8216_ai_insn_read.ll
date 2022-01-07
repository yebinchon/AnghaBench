; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_acl8216_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl812.c_acl8216_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCL812_MODE = common dso_local global i64 0, align 8
@PCL812_SOFTTRIG = common dso_local global i64 0, align 8
@ACL8216_STATUS = common dso_local global i64 0, align 8
@ACL8216_DRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"comedi%d: pcl812: (%s at 0x%lx) A/D insn read timeout\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@PCL812_AD_HI = common dso_local global i64 0, align 8
@PCL812_AD_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @acl8216_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl8216_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCL812_MODE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 1, i64 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @setup_range_channel(%struct.comedi_device* %18, %struct.comedi_subdevice* %19, i32 %22, i32 1)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %93, %4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %24
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCL812_SOFTTRIG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 255, i64 %35)
  %37 = call i32 @udelay(i32 5)
  store i32 50, i32* %11, align 4
  br label %38

38:                                               ; preds = %53, %30
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %11, align 4
  %41 = icmp ne i32 %39, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ACL8216_STATUS, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @inb(i64 %47)
  %49 = load i32, i32* @ACL8216_DRDY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %74

53:                                               ; preds = %42
  %54 = call i32 @udelay(i32 1)
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i64 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCL812_MODE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb(i32 0, i64 %70)
  %72 = load i32, i32* @ETIME, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %104

74:                                               ; preds = %52
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCL812_AD_HI, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @inb(i64 %79)
  %81 = shl i32 %80, 8
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @PCL812_AD_LO, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @inb(i64 %86)
  %88 = or i32 %81, %87
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %74
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %24

96:                                               ; preds = %24
  %97 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %98 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCL812_MODE, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i32 0, i64 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %96, %55
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @setup_range_channel(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
