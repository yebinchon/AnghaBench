; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_reset_enpci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_enternow_pci.c_reset_enpci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"enter:now PCI: reset\00", align 1
@NETJET_CTRL = common dso_local global i64 0, align 8
@TJ_AMD_IRQ = common dso_local global i32 0, align 4
@NETJET_AUXCTRL = common dso_local global i64 0, align 8
@NETJET_IRQMASK1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @reset_enpci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_enpci(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @L1_DEB_ISAC, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = call i32 @debugl1(%struct.IsdnCardState* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %14 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 7, i32* %16, align 8
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NETJET_CTRL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %21, i64 %28)
  %30 = call i32 @mdelay(i32 20)
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 48, i32* %34, align 8
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NETJET_CTRL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outb(i32 %39, i64 %46)
  %48 = call i32 @mdelay(i32 20)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %54 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @TJ_AMD_IRQ, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NETJET_AUXCTRL, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i32 %58, i64 %65)
  %67 = load i32, i32* @TJ_AMD_IRQ, align 4
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %69 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NETJET_IRQMASK1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 %67, i64 %74)
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @outb(i32 %80, i64 %85)
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
