; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_rf_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt73usb.c_rt73usb_rf_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@PHY_CSR4_VALUE = common dso_local global i32 0, align 4
@PHY_CSR4_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@RF5225 = common dso_local global i32 0, align 4
@RF2527 = common dso_local global i32 0, align 4
@PHY_CSR4_IF_SELECT = common dso_local global i32 0, align 4
@PHY_CSR4_BUSY = common dso_local global i32 0, align 4
@PHY_CSR4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, i32, i32)* @rt73usb_rf_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt73usb_rf_write(%struct.rt2x00_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %12 = call i64 @WAIT_FOR_RF(%struct.rt2x00_dev* %11, i32* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @PHY_CSR4_VALUE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rt2x00_set_field32(i32* %7, i32 %15, i32 %16)
  %18 = load i32, i32* @PHY_CSR4_NUMBER_OF_BITS, align 4
  %19 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %20 = load i32, i32* @RF5225, align 4
  %21 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %14
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %25 = load i32, i32* @RF2527, align 4
  %26 = call i64 @rt2x00_rf(%struct.rt2x00_dev* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %14
  %29 = phi i1 [ true, %14 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 20, %30
  %32 = call i32 @rt2x00_set_field32(i32* %7, i32 %18, i32 %31)
  %33 = load i32, i32* @PHY_CSR4_IF_SELECT, align 4
  %34 = call i32 @rt2x00_set_field32(i32* %7, i32 %33, i32 0)
  %35 = load i32, i32* @PHY_CSR4_BUSY, align 4
  %36 = call i32 @rt2x00_set_field32(i32* %7, i32 %35, i32 1)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %38 = load i32, i32* @PHY_CSR4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @rt2x00usb_register_write_lock(%struct.rt2x00_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @rt2x00_rf_write(%struct.rt2x00_dev* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %28, %3
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WAIT_FOR_RF(%struct.rt2x00_dev*, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i64 @rt2x00_rf(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00usb_register_write_lock(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00_rf_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
