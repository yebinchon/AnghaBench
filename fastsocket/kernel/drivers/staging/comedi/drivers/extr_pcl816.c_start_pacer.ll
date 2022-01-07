; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_start_pacer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcl816.c_start_pacer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }

@PCL816_CTRCTL = common dso_local global i64 0, align 8
@PCL816_CTR0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"mode %d, divisor1 %d, divisor2 %d\0A\00", align 1
@PCL816_CTR2 = common dso_local global i64 0, align 8
@PCL816_CTR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @start_pacer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_pacer(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCL816_CTRCTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @outb(i32 50, i64 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCL816_CTR0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 255, i64 %19)
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCL816_CTR0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outb(i32 0, i64 %25)
  %27 = call i32 @udelay(i32 1)
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCL816_CTRCTL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i32 180, i64 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PCL816_CTRCTL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i32 116, i64 %38)
  %40 = call i32 @udelay(i32 1)
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %82

43:                                               ; preds = %4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DPRINTK(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 255
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCL816_CTR2, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCL816_CTR2, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 %58, i64 %63)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 255
  %67 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCL816_CTR1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PCL816_CTR1, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %43, %4
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DPRINTK(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
