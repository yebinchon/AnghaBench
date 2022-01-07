; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_avm_fritzv2_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_avm_fritzv2_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s: irq stat0 %x\0A\00", align 1
@AVM_STATUS0_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_HDLC = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_ISAC = common dso_local global i32 0, align 4
@ISACX_ISTA = common dso_local global i32 0, align 4
@AVM_STATUS0_IRQ_TIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: timer irq\0A\00", align 1
@AVM_STATUS0_RES_TIMER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @avm_fritzv2_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avm_fritzv2_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fritzcard*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fritzcard*
  store %struct.fritzcard* %10, %struct.fritzcard** %6, align 8
  %11 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %12 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %15 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 2
  %18 = call i32 @inb(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %20 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @AVM_STATUS0_IRQ_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %30 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %92

33:                                               ; preds = %2
  %34 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %35 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @AVM_STATUS0_IRQ_HDLC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %44 = call i32 @HDLC_irq_main(%struct.fritzcard* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @AVM_STATUS0_IRQ_ISAC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %52 = load i32, i32* @ISACX_ISTA, align 4
  %53 = call i32 @ReadISAC_V2(%struct.fritzcard* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %55 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %54, i32 0, i32 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mISDNisac_irq(i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @AVM_STATUS0_IRQ_TIMER, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %87

63:                                               ; preds = %58
  %64 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %65 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %69 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AVM_STATUS0_RES_TIMER, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %74 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 2
  %77 = call i32 @outb(i32 %72, i64 %76)
  %78 = call i32 @udelay(i32 1)
  %79 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %80 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %83 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 2
  %86 = call i32 @outb(i32 %81, i64 %85)
  br label %87

87:                                               ; preds = %63, %58
  %88 = load %struct.fritzcard*, %struct.fritzcard** %6, align 8
  %89 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %28
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @HDLC_irq_main(%struct.fritzcard*) #1

declare dso_local i32 @ReadISAC_V2(%struct.fritzcard*, i32) #1

declare dso_local i32 @mISDNisac_irq(i32*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
