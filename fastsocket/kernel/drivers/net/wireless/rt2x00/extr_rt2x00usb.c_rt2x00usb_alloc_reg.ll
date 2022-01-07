; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_alloc_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00usb.c_rt2x00usb_alloc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i8*, %struct.TYPE_4__*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8* }

@CSR_CACHE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to allocate registers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2x00usb_alloc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00usb_alloc_reg(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %4 = load i32, i32* @CSR_CACHE_SIZE, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 %4, i32 %5)
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %47

31:                                               ; preds = %16
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 %36, i32 %37)
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %42 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br label %47

46:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %53

47:                                               ; preds = %45, %30, %15
  %48 = call i32 @rt2x00_probe_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = call i32 @rt2x00usb_free_reg(%struct.rt2x00_dev* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %47, %46
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @rt2x00_probe_err(i8*) #1

declare dso_local i32 @rt2x00usb_free_reg(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
