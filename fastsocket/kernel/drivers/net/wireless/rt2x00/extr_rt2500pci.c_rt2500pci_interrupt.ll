; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2500pci.c_rt2500pci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i32, i32 }

@CSR7 = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DEVICE_STATE_ENABLED_RADIO = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CSR7_TBCN_EXPIRE = common dso_local global i32 0, align 4
@CSR7_RXDONE = common dso_local global i32 0, align 4
@CSR7_TXDONE_ATIMRING = common dso_local global i32 0, align 4
@CSR7_TXDONE_PRIORING = common dso_local global i32 0, align 4
@CSR7_TXDONE_TXRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_TXRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_ATIMRING = common dso_local global i32 0, align 4
@CSR8_TXDONE_PRIORING = common dso_local global i32 0, align 4
@CSR8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt2500pci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2500pci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.rt2x00_dev*
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %6, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %12 = load i32, i32* @CSR7, align 4
  %13 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %11, i32 %12, i32* %7)
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %15 = load i32, i32* @CSR7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %92

22:                                               ; preds = %2
  %23 = load i32, i32* @DEVICE_STATE_ENABLED_RADIO, align 4
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %25 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %24, i32 0, i32 4
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CSR7_TBCN_EXPIRE, align 4
  %34 = call i64 @rt2x00_get_field32(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 3
  %39 = call i32 @tasklet_hi_schedule(i32* %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @CSR7_RXDONE, align 4
  %43 = call i64 @rt2x00_get_field32(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 2
  %48 = call i32 @tasklet_schedule(i32* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @CSR7_TXDONE_ATIMRING, align 4
  %52 = call i64 @rt2x00_get_field32(i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @CSR7_TXDONE_PRIORING, align 4
  %57 = call i64 @rt2x00_get_field32(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @CSR7_TXDONE_TXRING, align 4
  %62 = call i64 @rt2x00_get_field32(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59, %54, %49
  %65 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %66 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %65, i32 0, i32 1
  %67 = call i32 @tasklet_schedule(i32* %66)
  %68 = load i32, i32* @CSR8_TXDONE_TXRING, align 4
  %69 = call i32 @rt2x00_set_field32(i32* %8, i32 %68, i32 1)
  %70 = load i32, i32* @CSR8_TXDONE_ATIMRING, align 4
  %71 = call i32 @rt2x00_set_field32(i32* %8, i32 %70, i32 1)
  %72 = load i32, i32* @CSR8_TXDONE_PRIORING, align 4
  %73 = call i32 @rt2x00_set_field32(i32* %8, i32 %72, i32 1)
  br label %74

74:                                               ; preds = %64, %59
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %76 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %75, i32 0, i32 0
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %79 = load i32, i32* @CSR8, align 4
  %80 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %78, i32 %79, i32* %7)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %85 = load i32, i32* @CSR8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %84, i32 %85, i32 %86)
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %89 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %74, %28, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
