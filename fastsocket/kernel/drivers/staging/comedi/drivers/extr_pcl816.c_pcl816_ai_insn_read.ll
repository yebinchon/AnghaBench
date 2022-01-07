; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_pcl816_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"mode 0 analog input\0A\00", align 1
@PCL816_CONTROL = common dso_local global i64 0, align 8
@PCL816_CLRINT = common dso_local global i64 0, align 8
@PCL816_MUX = common dso_local global i64 0, align 8
@PCL816_RANGE = common dso_local global i64 0, align 8
@PCL816_AD_LO = common dso_local global i64 0, align 8
@PCL816_STATUS = common dso_local global i64 0, align 8
@PCL816_STATUS_DRDY_MASK = common dso_local global i32 0, align 4
@PCL816_AD_HI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"A/D insn timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcl816_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcl816_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %12 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCL816_CONTROL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 0, i64 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCL816_CLRINT, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 0, i64 %23)
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CR_CHAN(i32 %27)
  %29 = and i32 %28, 15
  %30 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCL816_MUX, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 %29, i64 %34)
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_RANGE(i32 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PCL816_RANGE, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %117, %4
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %49 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %120

52:                                               ; preds = %46
  %53 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %54 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PCL816_AD_LO, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @outb(i32 0, i64 %57)
  store i32 100, i32* %11, align 4
  br label %59

59:                                               ; preds = %98, %52
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %11, align 4
  %62 = icmp ne i32 %60, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PCL816_STATUS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  %70 = load i32, i32* @PCL816_STATUS_DRDY_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %63
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCL816_AD_HI, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inb(i64 %78)
  %80 = shl i32 %79, 8
  %81 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCL816_AD_LO, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @inb(i64 %85)
  %87 = or i32 %80, %86
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PCL816_CLRINT, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outb(i32 0, i64 %96)
  br label %100

98:                                               ; preds = %63
  %99 = call i32 @udelay(i32 1)
  br label %59

100:                                              ; preds = %73, %59
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = call i32 @comedi_error(%struct.comedi_device* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 0, i32* %107, align 4
  %108 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PCL816_CLRINT, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @outb(i32 0, i64 %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %5, align 4
  br label %122

116:                                              ; preds = %100
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %46

120:                                              ; preds = %46
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %120, %103
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
