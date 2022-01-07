; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"dt2801: resetting board...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"fingerprint: 0x%02x 0x%02x\0A\00", align 1
@DT2801_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"dt2801: stop\0A\00", align 1
@DT_C_STOP = common dso_local global i32 0, align 4
@DT2801_CMD = common dso_local global i64 0, align 8
@DT2801_STATUS = common dso_local global i64 0, align 8
@DT_S_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dt2801: timeout 1 status=0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"dt2801: reset\0A\00", align 1
@DT_C_RESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"dt2801: timeout 2 status=0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"dt2801: reading code\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"dt2801: ok.  code=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dt2801_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2801_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @inb_p(i64 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @inb_p(i64 %14)
  %16 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %15)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT2801_DATA, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inb_p(i64 %21)
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DT2801_DATA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inb_p(i64 %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DT2801_DATA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb_p(i64 %33)
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DT2801_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inb_p(i64 %39)
  %41 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @DT_C_STOP, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DT2801_CMD, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb_p(i32 %42, i64 %47)
  %49 = call i32 @udelay(i32 100)
  store i32 10000, i32* %5, align 4
  br label %50

50:                                               ; preds = %63, %1
  %51 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DT2801_STATUS, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb_p(i64 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @DT_S_READY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %67

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %50, label %67

67:                                               ; preds = %63, %61
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @DT_C_RESET, align 4
  %76 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DT2801_CMD, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb_p(i32 %75, i64 %80)
  %82 = call i32 @udelay(i32 100)
  store i32 10000, i32* %5, align 4
  br label %83

83:                                               ; preds = %96, %73
  %84 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DT2801_STATUS, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @inb_p(i64 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @DT_S_READY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %100

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %5, align 4
  %99 = icmp ne i32 %97, 0
  br i1 %99, label %83, label %100

100:                                              ; preds = %96, %94
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %108 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %109 = call i32 @dt2801_readdata(%struct.comedi_device* %108, i32* %3)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dt2801_readdata(%struct.comedi_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
