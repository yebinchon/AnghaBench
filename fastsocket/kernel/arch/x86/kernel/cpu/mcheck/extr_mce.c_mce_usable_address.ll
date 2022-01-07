; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_usable_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_mce_usable_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32 }

@MCI_STATUS_MISCV = common dso_local global i32 0, align 4
@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MCI_MISC_ADDR_PHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mce*)* @mce_usable_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mce_usable_address(%struct.mce* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce*, align 8
  store %struct.mce* %0, %struct.mce** %3, align 8
  %4 = load %struct.mce*, %struct.mce** %3, align 8
  %5 = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.mce*, %struct.mce** %3, align 8
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %35

18:                                               ; preds = %10
  %19 = load %struct.mce*, %struct.mce** %3, align 8
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @MCI_MISC_ADDR_LSB(i32 %21)
  %23 = load i64, i64* @PAGE_SHIFT, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %35

26:                                               ; preds = %18
  %27 = load %struct.mce*, %struct.mce** %3, align 8
  %28 = getelementptr inbounds %struct.mce, %struct.mce* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @MCI_MISC_ADDR_MODE(i32 %29)
  %31 = load i64, i64* @MCI_MISC_ADDR_PHYS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %35

34:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33, %25, %17
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @MCI_MISC_ADDR_LSB(i32) #1

declare dso_local i64 @MCI_MISC_ADDR_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
