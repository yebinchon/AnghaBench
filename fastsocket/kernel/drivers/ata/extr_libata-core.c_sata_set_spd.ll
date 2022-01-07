; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_set_spd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_set_spd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@SCR_CONTROL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_set_spd(%struct.ata_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  %6 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %7 = load i32, i32* @SCR_CONTROL, align 4
  %8 = call i32 @sata_scr_read(%struct.ata_link* %6, i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %14 = call i32 @__sata_set_spd_needed(%struct.ata_link* %13, i32* %4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %26

17:                                               ; preds = %12
  %18 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %19 = load i32, i32* @SCR_CONTROL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sata_scr_write(%struct.ata_link* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %16, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @__sata_set_spd_needed(%struct.ata_link*, i32*) #1

declare dso_local i32 @sata_scr_write(%struct.ata_link*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
