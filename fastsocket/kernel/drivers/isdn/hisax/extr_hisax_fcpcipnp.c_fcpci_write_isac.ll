; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_write_isac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_write_isac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i64 }

@AVM_IDX_ISAC_REG_HIGH = common dso_local global i8 0, align 1
@AVM_IDX_ISAC_REG_LOW = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [21 x i8] c" port %#x, value %#x\00", align 1
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*, i8, i8)* @fcpci_write_isac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcpci_write_isac(%struct.isac* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.isac*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.fritz_adapter*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.isac* %0, %struct.isac** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %10 = load %struct.isac*, %struct.isac** %4, align 8
  %11 = getelementptr inbounds %struct.isac, %struct.isac* %10, i32 0, i32 0
  %12 = load %struct.fritz_adapter*, %struct.fritz_adapter** %11, align 8
  store %struct.fritz_adapter* %12, %struct.fritz_adapter** %7, align 8
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sgt i32 %14, 47
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8, i8* @AVM_IDX_ISAC_REG_HIGH, align 1
  %18 = zext i8 %17 to i32
  br label %22

19:                                               ; preds = %3
  %20 = load i8, i8* @AVM_IDX_ISAC_REG_LOW, align 1
  %21 = zext i8 %20 to i32
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %18, %16 ], [ %21, %19 ]
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %8, align 1
  %25 = load i8, i8* %5, align 1
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @DBG(i32 4096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %25, i8 zeroext %26)
  %28 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i8, i8* %8, align 1
  %33 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AVM_INDEX, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i8 zeroext %32, i64 %37)
  %39 = load i8, i8* %6, align 1
  %40 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AVM_DATA, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = call i32 @outb(i8 zeroext %39, i64 %49)
  %51 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
