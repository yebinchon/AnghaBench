; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2814.c_dt2814_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i8*, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.comedi_devconfig = type { i64* }

@.str = private unnamed_addr constant [27 x i8] c"comedi%d: dt2814: 0x%04lx \00", align 1
@DT2814_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dt2814\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DT2814_CSR = common dso_local global i64 0, align 8
@DT2814_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"reset error (fatal)\0A\00", align 1
@DT2814_DATA = common dso_local global i64 0, align 8
@dt2814_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"(irq %d unavailable)\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"( irq = %d )\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"(no irq)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"(irq probe not implemented)\0A\00", align 1
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@dt2814_ai_insn_read = common dso_local global i32 0, align 4
@dt2814_ai_cmd = common dso_local global i32 0, align 4
@dt2814_ai_cmdtest = common dso_local global i32 0, align 4
@range_unknown = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@irqs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @dt2814_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2814_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19)
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @DT2814_SIZE, align 4
  %23 = call i32 @request_region(i64 %21, i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %151

29:                                               ; preds = %2
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT2814_CSR, align 8
  %39 = add i64 %37, %38
  %40 = call i32 @outb(i32 0, i64 %39)
  %41 = call i32 @udelay(i32 100)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DT2814_CSR, align 8
  %46 = add i64 %44, %45
  %47 = call i32 @inb(i64 %46)
  %48 = load i32, i32* @DT2814_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %29
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %151

55:                                               ; preds = %29
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DT2814_DATA, align 8
  %60 = add i64 %58, %59
  %61 = call i32 @inb(i64 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DT2814_DATA, align 8
  %66 = add i64 %64, %65
  %67 = call i32 @inb(i64 %66)
  store i32 %67, i32* %6, align 4
  %68 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %69 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 2
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %55
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @dt2814_interrupt, align 4
  %81 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %82 = call i64 @request_irq(i32 %79, i32 %80, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.comedi_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  br label %93

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %84
  br label %102

94:                                               ; preds = %55
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %97
  br label %102

102:                                              ; preds = %101, %93
  %103 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %104 = call i32 @alloc_subdevices(%struct.comedi_device* %103, i32 1)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %151

109:                                              ; preds = %102
  %110 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %111 = call i32 @alloc_private(%struct.comedi_device* %110, i32 4)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %151

116:                                              ; preds = %109
  %117 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %118 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %117, i32 0, i32 4
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %118, align 8
  %120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i64 0
  store %struct.comedi_subdevice* %120, %struct.comedi_subdevice** %9, align 8
  %121 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %122 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 3
  store %struct.comedi_subdevice* %121, %struct.comedi_subdevice** %123, align 8
  %124 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %125 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %126 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @SDF_READABLE, align 4
  %128 = load i32, i32* @SDF_GROUND, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @SDF_CMD_READ, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %133 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %135 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %134, i32 0, i32 1
  store i32 16, i32* %135, align 4
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %136, i32 0, i32 2
  store i32 1, i32* %137, align 8
  %138 = load i32, i32* @dt2814_ai_insn_read, align 4
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %140 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* @dt2814_ai_cmd, align 4
  %142 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %143 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @dt2814_ai_cmdtest, align 4
  %145 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %145, i32 0, i32 5
  store i32 %144, i32* %146, align 8
  %147 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %148 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %147, i32 0, i32 3
  store i32 4095, i32* %148, align 4
  %149 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %150 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %149, i32 0, i32 4
  store i32* @range_unknown, i32** %150, align 8
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %116, %114, %107, %51, %25
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.comedi_device*) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
