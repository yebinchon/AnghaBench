; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_adapter = type { i32, i64 }

@AVM_STATUS0 = common dso_local global i64 0, align 8
@AVM_STATUS0_IRQ_MASK = common dso_local global i8 0, align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"STATUS0 %#x\00", align 1
@AVM_STATUS0_IRQ_ISAC = common dso_local global i8 0, align 1
@AVM_STATUS0_IRQ_HDLC = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fcpci2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcpci2_irq(i32 %0, i8* %1) #0 {
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
  %13 = load i64, i64* @AVM_STATUS0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call zeroext i8 @inb(i64 %14)
  store i8 %15, i8* %7, align 1
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @AVM_STATUS0_IRQ_MASK, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %2
  %25 = load i8, i8* %7, align 1
  %26 = call i32 @DBG(i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8 zeroext %25)
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @AVM_STATUS0_IRQ_ISAC, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.fritz_adapter*, %struct.fritz_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %34, i32 0, i32 0
  %36 = call i32 @isacsx_irq(i32* %35)
  br label %37

37:                                               ; preds = %33, %24
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @AVM_STATUS0_IRQ_HDLC, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.fritz_adapter*, %struct.fritz_adapter** %6, align 8
  %46 = call i32 @hdlc_irq(%struct.fritz_adapter* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @AVM_STATUS0_IRQ_ISAC, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.fritz_adapter*, %struct.fritz_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %55, i32 0, i32 0
  %57 = call i32 @isacsx_irq(i32* %56)
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @DBG(i32, i8*, i8 zeroext) #1

declare dso_local i32 @isacsx_irq(i32*) #1

declare dso_local i32 @hdlc_irq(%struct.fritz_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
