; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_read_isac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_fcpci2_read_isac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { %struct.fritz_adapter* }
%struct.fritz_adapter = type { i32, i64 }

@AVM_ISACSX_INDEX = common dso_local global i64 0, align 8
@AVM_ISACSX_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c" port %#x, value %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.isac*, i8)* @fcpci2_read_isac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fcpci2_read_isac(%struct.isac* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.isac*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.fritz_adapter*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store %struct.isac* %0, %struct.isac** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.isac*, %struct.isac** %3, align 8
  %9 = getelementptr inbounds %struct.isac, %struct.isac* %8, i32 0, i32 0
  %10 = load %struct.fritz_adapter*, %struct.fritz_adapter** %9, align 8
  store %struct.fritz_adapter* %10, %struct.fritz_adapter** %5, align 8
  %11 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i8, i8* %4, align 1
  %16 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AVM_ISACSX_INDEX, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outl(i8 zeroext %15, i64 %20)
  %22 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AVM_ISACSX_DATA, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i8 @inl(i64 %26)
  store i8 %27, i8* %6, align 1
  %28 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i8, i8* %4, align 1
  %33 = load i8, i8* %6, align 1
  %34 = call i32 @DBG(i32 4096, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8 zeroext %32, i8 zeroext %33)
  %35 = load i8, i8* %6, align 1
  ret i8 %35
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outl(i8 zeroext, i64) #1

declare dso_local zeroext i8 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DBG(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
