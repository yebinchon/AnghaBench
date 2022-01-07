; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_write_isac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_write_isac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c" port %#x, value %#x\00", align 1
@AVM_ISACSX_INDEX = common dso_local global i64 0, align 8
@AVM_ISACSX_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*, i8, i8)* @fcpci2_write_isac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcpci2_write_isac(%struct.isac* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.isac*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca %struct.fritz_adapter*, align 8
  %8 = alloca i64, align 8
  store %struct.isac* %0, %struct.isac** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %9 = load %struct.isac*, %struct.isac** %4, align 8
  %10 = getelementptr inbounds %struct.isac, %struct.isac* %9, i32 0, i32 0
  %11 = load %struct.fritz_adapter*, %struct.fritz_adapter** %10, align 8
  store %struct.fritz_adapter* %11, %struct.fritz_adapter** %7, align 8
  %12 = load i8, i8* %5, align 1
  %13 = load i8, i8* %6, align 1
  %14 = call i32 @DBG(i32 4096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %12, i8 zeroext %13)
  %15 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i8, i8* %5, align 1
  %20 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AVM_ISACSX_INDEX, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outl(i8 zeroext %19, i64 %24)
  %26 = load i8, i8* %6, align 1
  %27 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AVM_ISACSX_DATA, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @outl(i8 zeroext %26, i64 %31)
  %33 = load %struct.fritz_adapter*, %struct.fritz_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i8 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
