; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_dealloc_shaper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_dealloc_shaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.zatm_dev = type { i32, i32, i32, i64 }

@uPD98401_PS_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_dev*, i32)* @dealloc_shaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dealloc_shaper(%struct.atm_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zatm_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %8 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %7)
  store %struct.zatm_dev* %8, %struct.zatm_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %11 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %16 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %50

21:                                               ; preds = %14
  %22 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %23 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %26 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %25, i32 0, i32 2
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %30 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @uPD98401_PS(i32 %31)
  %33 = call i32 @zpeekl(%struct.zatm_dev* %30, i32 %32)
  %34 = load i32, i32* @uPD98401_PS_E, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @uPD98401_PS(i32 %37)
  %39 = call i32 @zpokel(%struct.zatm_dev* %29, i32 %36, i32 %38)
  %40 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %41 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %40, i32 0, i32 2
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %4, align 4
  %45 = shl i32 1, %44
  %46 = load %struct.zatm_dev*, %struct.zatm_dev** %5, align 8
  %47 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i32, i32) #1

declare dso_local i32 @zpeekl(%struct.zatm_dev*, i32) #1

declare dso_local i32 @uPD98401_PS(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
