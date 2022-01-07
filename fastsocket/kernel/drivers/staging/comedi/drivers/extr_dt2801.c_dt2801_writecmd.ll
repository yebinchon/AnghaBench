; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_writecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2801.c_dt2801_writecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@DT2801_STATUS = common dso_local global i64 0, align 8
@DT_S_COMPOSITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"dt2801: composite-error in dt2801_writecmd(), ignoring\0A\00", align 1
@DT_S_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"dt2801: !ready in dt2801_writecmd(), ignoring\0A\00", align 1
@DT2801_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @dt2801_writecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2801_writecmd(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = call i32 @dt2801_wait_for_ready(%struct.comedi_device* %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DT2801_STATUS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @inb_p(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DT_S_COMPOSITE_ERROR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DT_S_READY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DT2801_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb_p(i32 %28, i64 %33)
  ret i32 0
}

declare dso_local i32 @dt2801_wait_for_ready(%struct.comedi_device*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @outb_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
