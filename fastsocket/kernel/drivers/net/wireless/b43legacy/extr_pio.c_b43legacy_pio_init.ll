; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_pio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_pio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, i32, %struct.TYPE_4__*, %struct.b43legacy_pio }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_pio = type { %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue* }
%struct.b43legacy_pioqueue = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO1_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO2_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO3_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO4_BASE = common dso_local global i32 0, align 4
@B43legacy_IRQ_PIO_WORKAROUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PIO initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_pio_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_pio*, align 8
  %4 = alloca %struct.b43legacy_pioqueue*, align 8
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 3
  store %struct.b43legacy_pio* %7, %struct.b43legacy_pio** %3, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %11 = load i32, i32* @B43legacy_MMIO_PIO1_BASE, align 4
  %12 = call %struct.b43legacy_pioqueue* @b43legacy_setup_pioqueue(%struct.b43legacy_wldev* %10, i32 %11)
  store %struct.b43legacy_pioqueue* %12, %struct.b43legacy_pioqueue** %4, align 8
  %13 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %14 = icmp ne %struct.b43legacy_pioqueue* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %68

16:                                               ; preds = %1
  %17 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %18 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %19 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %18, i32 0, i32 0
  store %struct.b43legacy_pioqueue* %17, %struct.b43legacy_pioqueue** %19, align 8
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %21 = load i32, i32* @B43legacy_MMIO_PIO2_BASE, align 4
  %22 = call %struct.b43legacy_pioqueue* @b43legacy_setup_pioqueue(%struct.b43legacy_wldev* %20, i32 %21)
  store %struct.b43legacy_pioqueue* %22, %struct.b43legacy_pioqueue** %4, align 8
  %23 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %24 = icmp ne %struct.b43legacy_pioqueue* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %84

26:                                               ; preds = %16
  %27 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %28 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %29 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %28, i32 0, i32 1
  store %struct.b43legacy_pioqueue* %27, %struct.b43legacy_pioqueue** %29, align 8
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %31 = load i32, i32* @B43legacy_MMIO_PIO3_BASE, align 4
  %32 = call %struct.b43legacy_pioqueue* @b43legacy_setup_pioqueue(%struct.b43legacy_wldev* %30, i32 %31)
  store %struct.b43legacy_pioqueue* %32, %struct.b43legacy_pioqueue** %4, align 8
  %33 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %34 = icmp ne %struct.b43legacy_pioqueue* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %77

36:                                               ; preds = %26
  %37 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %38 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %39 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %38, i32 0, i32 2
  store %struct.b43legacy_pioqueue* %37, %struct.b43legacy_pioqueue** %39, align 8
  %40 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %41 = load i32, i32* @B43legacy_MMIO_PIO4_BASE, align 4
  %42 = call %struct.b43legacy_pioqueue* @b43legacy_setup_pioqueue(%struct.b43legacy_wldev* %40, i32 %41)
  store %struct.b43legacy_pioqueue* %42, %struct.b43legacy_pioqueue** %4, align 8
  %43 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %44 = icmp ne %struct.b43legacy_pioqueue* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %70

46:                                               ; preds = %36
  %47 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %48 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %49 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %48, i32 0, i32 3
  store %struct.b43legacy_pioqueue* %47, %struct.b43legacy_pioqueue** %49, align 8
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %51 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load i32, i32* @B43legacy_IRQ_PIO_WORKAROUND, align 4
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %60 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %46
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %65 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @b43legacydbg(i32 %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %84, %63, %15
  %69 = load i32, i32* %5, align 4
  ret i32 %69

70:                                               ; preds = %45
  %71 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %72 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %71, i32 0, i32 2
  %73 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %72, align 8
  %74 = call i32 @b43legacy_destroy_pioqueue(%struct.b43legacy_pioqueue* %73)
  %75 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %76 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %75, i32 0, i32 2
  store %struct.b43legacy_pioqueue* null, %struct.b43legacy_pioqueue** %76, align 8
  br label %77

77:                                               ; preds = %70, %35
  %78 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %79 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %78, i32 0, i32 1
  %80 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %79, align 8
  %81 = call i32 @b43legacy_destroy_pioqueue(%struct.b43legacy_pioqueue* %80)
  %82 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %83 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %82, i32 0, i32 1
  store %struct.b43legacy_pioqueue* null, %struct.b43legacy_pioqueue** %83, align 8
  br label %84

84:                                               ; preds = %77, %25
  %85 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %86 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %85, i32 0, i32 0
  %87 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %86, align 8
  %88 = call i32 @b43legacy_destroy_pioqueue(%struct.b43legacy_pioqueue* %87)
  %89 = load %struct.b43legacy_pio*, %struct.b43legacy_pio** %3, align 8
  %90 = getelementptr inbounds %struct.b43legacy_pio, %struct.b43legacy_pio* %89, i32 0, i32 0
  store %struct.b43legacy_pioqueue* null, %struct.b43legacy_pioqueue** %90, align 8
  br label %68
}

declare dso_local %struct.b43legacy_pioqueue* @b43legacy_setup_pioqueue(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*) #1

declare dso_local i32 @b43legacy_destroy_pioqueue(%struct.b43legacy_pioqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
