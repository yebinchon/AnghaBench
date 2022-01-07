; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_adapter = type { i32, i64 }

@AVM_STATUS0_IRQ_MASK = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sval %#x\00", align 1
@AVM_STATUS0_IRQ_ISAC = common dso_local global i8 0, align 1
@AVM_STATUS0_IRQ_HDLC = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fcpci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcpci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fritz_adapter*, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.fritz_adapter*
  store %struct.fritz_adapter* %9, %struct.fritz_adapter** %6, align 8
  %10 = load %struct.fritz_adapter*, %struct.fritz_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 2
  %14 = call zeroext i8 @inb(i64 %13)
  store i8 %14, i8* %7, align 1
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @AVM_STATUS0_IRQ_MASK, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %16, %18
  %20 = load i8, i8* @AVM_STATUS0_IRQ_MASK, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load i8, i8* %7, align 1
  %27 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 zeroext %26)
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @AVM_STATUS0_IRQ_ISAC, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load %struct.fritz_adapter*, %struct.fritz_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %35, i32 0, i32 0
  %37 = call i32 @isac_irq(i32* %36)
  br label %38

38:                                               ; preds = %34, %25
  %39 = load i8, i8* %7, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @AVM_STATUS0_IRQ_HDLC, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load %struct.fritz_adapter*, %struct.fritz_adapter** %6, align 8
  %47 = call i32 @hdlc_irq(%struct.fritz_adapter* %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %23
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @DBG(i32, i8*, i8 zeroext) #1

declare dso_local i32 @isac_irq(i32*) #1

declare dso_local i32 @hdlc_irq(%struct.fritz_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
