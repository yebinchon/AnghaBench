; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_setup_pioqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_setup_pioqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i32, i64, i64, i32, i32, i32, i32, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@tx_tasklet = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_BE = common dso_local global i32 0, align 4
@B43legacy_PIO_TXQBUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [94 x i8] c"This card does not support PIO operation mode. Please use DMA mode (module parameter pio=0).\0A\00", align 1
@B43legacy_PIO_TXQADJUST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"PIO tx device-queue too small (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43legacy_pioqueue* (%struct.b43legacy_wldev*, i64)* @b43legacy_setup_pioqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43legacy_pioqueue* @b43legacy_setup_pioqueue(%struct.b43legacy_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.b43legacy_pioqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.b43legacy_pioqueue* @kzalloc(i32 48, i32 %8)
  store %struct.b43legacy_pioqueue* %9, %struct.b43legacy_pioqueue** %5, align 8
  %10 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %11 = icmp ne %struct.b43legacy_pioqueue* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %89

13:                                               ; preds = %2
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %15 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %16 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %15, i32 0, i32 7
  store %struct.b43legacy_wldev* %14, %struct.b43legacy_wldev** %16, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %19 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %21 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %29 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %31 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %30, i32 0, i32 6
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %34 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %33, i32 0, i32 5
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %37 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %36, i32 0, i32 4
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %40 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %39, i32 0, i32 3
  %41 = load i32, i32* @tx_tasklet, align 4
  %42 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %43 = ptrtoint %struct.b43legacy_pioqueue* %42 to i64
  %44 = call i32 @tasklet_init(i32* %40, i32 %41, i64 %43)
  %45 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %46 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %47 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @B43legacy_MACCTL_BE, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %53 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %52, i32 %53, i32 %54)
  %56 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %57 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %58 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @B43legacy_PIO_TXQBUFSIZE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i64 @b43legacy_read16(%struct.b43legacy_wldev* %56, i64 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %13
  %66 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %67 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @b43legacyerr(i32 %68, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0))
  br label %91

70:                                               ; preds = %13
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @B43legacy_PIO_TXQADJUST, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %76 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 (i32, i8*, ...) @b43legacyerr(i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %78)
  br label %91

80:                                               ; preds = %70
  %81 = load i64, i64* @B43legacy_PIO_TXQADJUST, align 8
  %82 = load i64, i64* %7, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %86 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %88 = call i32 @setup_txqueues(%struct.b43legacy_pioqueue* %87)
  br label %89

89:                                               ; preds = %91, %80, %12
  %90 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  ret %struct.b43legacy_pioqueue* %90

91:                                               ; preds = %74, %65
  %92 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %5, align 8
  %93 = call i32 @kfree(%struct.b43legacy_pioqueue* %92)
  store %struct.b43legacy_pioqueue* null, %struct.b43legacy_pioqueue** %5, align 8
  br label %89
}

declare dso_local %struct.b43legacy_pioqueue* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i64 @b43legacy_read16(%struct.b43legacy_wldev*, i64) #1

declare dso_local i32 @b43legacyerr(i32, i8*, ...) #1

declare dso_local i32 @setup_txqueues(%struct.b43legacy_pioqueue*) #1

declare dso_local i32 @kfree(%struct.b43legacy_pioqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
