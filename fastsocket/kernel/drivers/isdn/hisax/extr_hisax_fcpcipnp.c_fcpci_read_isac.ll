; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_read_isac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci_read_isac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i64 }

@AVM_IDX_ISAC_REG_HIGH = common dso_local global i8 0, align 1
@AVM_IDX_ISAC_REG_LOW = common dso_local global i8 0, align 1
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c" port %#x, value %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.isac*, i8)* @fcpci_read_isac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fcpci_read_isac(%struct.isac* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.isac*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.fritz_adapter*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.isac* %0, %struct.isac** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load %struct.isac*, %struct.isac** %3, align 8
  %10 = getelementptr inbounds %struct.isac, %struct.isac* %9, i32 0, i32 0
  %11 = load %struct.fritz_adapter*, %struct.fritz_adapter** %10, align 8
  store %struct.fritz_adapter* %11, %struct.fritz_adapter** %5, align 8
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, 47
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8, i8* @AVM_IDX_ISAC_REG_HIGH, align 1
  %17 = zext i8 %16 to i32
  br label %21

18:                                               ; preds = %2
  %19 = load i8, i8* @AVM_IDX_ISAC_REG_LOW, align 1
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %6, align 1
  %24 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i8, i8* %6, align 1
  %29 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AVM_INDEX, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i8 zeroext %28, i64 %33)
  %35 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AVM_DATA, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %39, %43
  %45 = call zeroext i8 @inb(i64 %44)
  store i8 %45, i8* %7, align 1
  %46 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i8, i8* %4, align 1
  %51 = load i8, i8* %7, align 1
  %52 = call i32 @DBG(i32 4096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %50, i8 zeroext %51)
  %53 = load i8, i8* %7, align 1
  ret i8 %53
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBG(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
