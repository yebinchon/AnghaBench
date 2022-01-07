; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_reset_current_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_reset_current_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@SIMODE1 = common dso_local global i32 0, align 4
@ENSCSIRST = common dso_local global i32 0, align 4
@SCSISEQ = common dso_local global i32 0, align 4
@SCSIRSTO = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_reset_current_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_reset_current_bus(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %3 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %4 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %5 = load i32, i32* @SIMODE1, align 4
  %6 = call i32 @aic_inb(%struct.aic7xxx_host* %4, i32 %5)
  %7 = load i32, i32* @ENSCSIRST, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = load i32, i32* @SIMODE1, align 4
  %11 = call i32 @aic_outb(%struct.aic7xxx_host* %3, i32 %9, i32 %10)
  %12 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %13 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %14 = load i32, i32* @SCSISEQ, align 4
  %15 = call i32 @aic_inb(%struct.aic7xxx_host* %13, i32 %14)
  %16 = load i32, i32* @SCSIRSTO, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SCSISEQ, align 4
  %19 = call i32 @aic_outb(%struct.aic7xxx_host* %12, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %27, %1
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %22 = load i32, i32* @SCSISEQ, align 4
  %23 = call i32 @aic_inb(%struct.aic7xxx_host* %21, i32 %22)
  %24 = load i32, i32* @SCSIRSTO, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @mdelay(i32 5)
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %31 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AHC_ULTRA2, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @mdelay(i32 250)
  br label %40

38:                                               ; preds = %29
  %39 = call i32 @mdelay(i32 50)
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %42 = load i32, i32* @SCSISEQ, align 4
  %43 = call i32 @aic_outb(%struct.aic7xxx_host* %41, i32 0, i32 %42)
  %44 = call i32 @mdelay(i32 10)
  %45 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %46 = call i32 @aic7xxx_clear_intstat(%struct.aic7xxx_host* %45)
  %47 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %48 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %49 = load i32, i32* @SIMODE1, align 4
  %50 = call i32 @aic_inb(%struct.aic7xxx_host* %48, i32 %49)
  %51 = load i32, i32* @ENSCSIRST, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @SIMODE1, align 4
  %54 = call i32 @aic_outb(%struct.aic7xxx_host* %47, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @aic7xxx_clear_intstat(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
