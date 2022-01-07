; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioboot.c_rio_start_card_running.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioboot.c_rio_start_card_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Host = type { i32, i32, i32, i32 }

@RIO_DEBUG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Start ISA card running\0A\00", align 1
@BOOT_FROM_RAM = common dso_local global i32 0, align 4
@EXTERNAL_BUS_ON = common dso_local global i32 0, align 4
@RIOAtVec2Ctrl = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Start PCI card running\0A\00", align 1
@PCITpBootFromRam = common dso_local global i32 0, align 4
@PCITpBusEnable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown host type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rio_start_card_running(%struct.Host* %0) #0 {
  %2 = alloca %struct.Host*, align 8
  store %struct.Host* %0, %struct.Host** %2, align 8
  %3 = load %struct.Host*, %struct.Host** %2, align 8
  %4 = getelementptr inbounds %struct.Host, %struct.Host* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %41 [
    i32 129, label %6
    i32 128, label %28
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %8 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @BOOT_FROM_RAM, align 4
  %10 = load i32, i32* @EXTERNAL_BUS_ON, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.Host*, %struct.Host** %2, align 8
  %13 = getelementptr inbounds %struct.Host, %struct.Host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %11, %14
  %16 = load i32*, i32** @RIOAtVec2Ctrl, align 8
  %17 = load %struct.Host*, %struct.Host** %2, align 8
  %18 = getelementptr inbounds %struct.Host, %struct.Host* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 15
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %15, %23
  %25 = load %struct.Host*, %struct.Host** %2, align 8
  %26 = getelementptr inbounds %struct.Host, %struct.Host* %25, i32 0, i32 3
  %27 = call i32 @writeb(i32 %24, i32* %26)
  br label %47

28:                                               ; preds = %1
  %29 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %30 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @PCITpBootFromRam, align 4
  %32 = load i32, i32* @PCITpBusEnable, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.Host*, %struct.Host** %2, align 8
  %35 = getelementptr inbounds %struct.Host, %struct.Host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load %struct.Host*, %struct.Host** %2, align 8
  %39 = getelementptr inbounds %struct.Host, %struct.Host* %38, i32 0, i32 3
  %40 = call i32 @writeb(i32 %37, i32* %39)
  br label %47

41:                                               ; preds = %1
  %42 = load i32, i32* @RIO_DEBUG_BOOT, align 4
  %43 = load %struct.Host*, %struct.Host** %2, align 8
  %44 = getelementptr inbounds %struct.Host, %struct.Host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %28, %6
  ret void
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
