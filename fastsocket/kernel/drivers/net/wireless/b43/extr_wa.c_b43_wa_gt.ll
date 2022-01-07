; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_gt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_wa.c_b43_wa_gt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_OFDMTAB_GAIN2 = common dso_local global i32 0, align 4
@B43_OFDMTAB_GAIN0 = common dso_local global i32 0, align 4
@B43_OFDMTAB_GAIN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wa_gt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wa_gt(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 2
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = load i32, i32* @B43_OFDMTAB_GAIN2, align 4
  %11 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %9, i32 %10, i32 0, i32 15)
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %13 = load i32, i32* @B43_OFDMTAB_GAIN2, align 4
  %14 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %12, i32 %13, i32 1, i32 31)
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = load i32, i32* @B43_OFDMTAB_GAIN2, align 4
  %17 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %15, i32 %16, i32 2, i32 42)
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %19 = load i32, i32* @B43_OFDMTAB_GAIN2, align 4
  %20 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %18, i32 %19, i32 3, i32 48)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = load i32, i32* @B43_OFDMTAB_GAIN2, align 4
  %23 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %21, i32 %22, i32 4, i32 58)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %26 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %24, i32 %25, i32 0, i32 19)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %28 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %29 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %27, i32 %28, i32 1, i32 19)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %31 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %32 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %30, i32 %31, i32 2, i32 19)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %35 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %33, i32 %34, i32 3, i32 19)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %37 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %38 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %36, i32 %37, i32 4, i32 21)
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %40 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %41 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %39, i32 %40, i32 5, i32 21)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %44 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %42, i32 %43, i32 6, i32 25)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = load i32, i32* @B43_OFDMTAB_GAIN1, align 4
  %47 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %45, i32 %46, i32 0, i32 3)
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = load i32, i32* @B43_OFDMTAB_GAIN1, align 4
  %50 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %48, i32 %49, i32 1, i32 3)
  %51 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %52 = load i32, i32* @B43_OFDMTAB_GAIN1, align 4
  %53 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %51, i32 %52, i32 2, i32 7)
  br label %76

54:                                               ; preds = %1
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %57 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %55, i32 %56, i32 0, i32 19)
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %59 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %60 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %58, i32 %59, i32 1, i32 19)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %63 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %61, i32 %62, i32 2, i32 19)
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %65 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %66 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %64, i32 %65, i32 3, i32 19)
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %68 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %69 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %67, i32 %68, i32 4, i32 21)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %72 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %70, i32 %71, i32 5, i32 21)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = load i32, i32* @B43_OFDMTAB_GAIN0, align 4
  %75 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %73, i32 %74, i32 6, i32 25)
  br label %76

76:                                               ; preds = %54, %8
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
