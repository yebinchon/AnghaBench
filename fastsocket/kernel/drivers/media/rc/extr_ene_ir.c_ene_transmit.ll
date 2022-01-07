; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_transmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ene_device* }
%struct.ene_device = type { i32*, i32, i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"TX: %d samples\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"TX: timeout\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"TX: done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @ene_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ene_transmit(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ene_device*, align 8
  %8 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.ene_device*, %struct.ene_device** %10, align 8
  store %struct.ene_device* %11, %struct.ene_device** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %14 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %20 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %22 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %24 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %26 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %28 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %27, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %30 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %32 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %36 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %35, i32 0, i32 2
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %40 = call i32 @ene_tx_enable(%struct.ene_device* %39)
  %41 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %42 = call i32 @ene_tx_sample(%struct.ene_device* %41)
  %43 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %44 = call i32 @ene_tx_sample(%struct.ene_device* %43)
  %45 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %46 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %45, i32 0, i32 2
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %50 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %49, i32 0, i32 3
  %51 = load i32, i32* @HZ, align 4
  %52 = mul nsw i32 2, %51
  %53 = call i64 @wait_for_completion_timeout(i32* %50, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %3
  %56 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %58 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %57, i32 0, i32 2
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %62 = call i32 @ene_tx_disable(%struct.ene_device* %61)
  %63 = load %struct.ene_device*, %struct.ene_device** %7, align 8
  %64 = getelementptr inbounds %struct.ene_device, %struct.ene_device* %63, i32 0, i32 2
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %69

67:                                               ; preds = %3
  %68 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %55
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ene_tx_enable(%struct.ene_device*) #1

declare dso_local i32 @ene_tx_sample(%struct.ene_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ene_tx_disable(%struct.ene_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
