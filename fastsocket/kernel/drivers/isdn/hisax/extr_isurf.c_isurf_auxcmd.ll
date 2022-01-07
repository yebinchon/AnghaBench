; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isurf.c_isurf_auxcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isurf.c_isurf_auxcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32)* }
%struct.TYPE_4__ = type { i64, i32 }

@ISDN_CMD_IOCTL = common dso_local global i64 0, align 8
@ISURF_ISAR_EA = common dso_local global i32 0, align 4
@ISURF_ISAC_RESET = common dso_local global i32 0, align 4
@ISURF_ARCOFI_RESET = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, %struct.TYPE_4__*)* @isurf_auxcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isurf_auxcmd(%struct.IsdnCardState* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ISDN_CMD_IOCTL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = call i32 @isar_auxcmd(%struct.IsdnCardState* %19, %struct.TYPE_4__* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @spin_lock_irqsave(i32* %23, i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %18
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %30 = load i32, i32* @ISURF_ISAR_EA, align 4
  %31 = load i32, i32* @ISURF_ISAC_RESET, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ISURF_ARCOFI_RESET, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @reset_isurf(%struct.IsdnCardState* %29, i32 %34)
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %37 = call i32 @initisac(%struct.IsdnCardState* %36)
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 1
  %40 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %39, align 8
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %42 = load i32, i32* @ISAC_MASK, align 4
  %43 = call i32 %40(%struct.IsdnCardState* %41, i32 %42, i32 0)
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 1
  %46 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %45, align 8
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %48 = load i32, i32* @ISAC_CMDR, align 4
  %49 = call i32 %46(%struct.IsdnCardState* %47, i32 %48, i32 65)
  br label %50

50:                                               ; preds = %28, %18
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 0
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %13, %2
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = call i32 @isar_auxcmd(%struct.IsdnCardState* %57, %struct.TYPE_4__* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @isar_auxcmd(%struct.IsdnCardState*, %struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @reset_isurf(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
