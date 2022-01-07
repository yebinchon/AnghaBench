; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_piix_sidpr_scr_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_piix_sidpr_scr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.piix_host_priv* }
%struct.piix_host_priv = type { i32, i64 }

@piix_sidx_map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIIX_SIDPR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32)* @piix_sidpr_scr_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @piix_sidpr_scr_write(%struct.ata_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.piix_host_priv*, align 8
  %9 = alloca i64, align 8
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.piix_host_priv*, %struct.piix_host_priv** %15, align 8
  store %struct.piix_host_priv* %16, %struct.piix_host_priv** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @piix_sidx_map, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = icmp uge i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %43

24:                                               ; preds = %3
  %25 = load %struct.piix_host_priv*, %struct.piix_host_priv** %8, align 8
  %26 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @piix_sidpr_sel(%struct.ata_link* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.piix_host_priv*, %struct.piix_host_priv** %8, align 8
  %34 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PIIX_SIDPR_DATA, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @iowrite32(i32 %32, i64 %37)
  %39 = load %struct.piix_host_priv*, %struct.piix_host_priv** %8, align 8
  %40 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %24, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @piix_sidpr_sel(%struct.ata_link*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
