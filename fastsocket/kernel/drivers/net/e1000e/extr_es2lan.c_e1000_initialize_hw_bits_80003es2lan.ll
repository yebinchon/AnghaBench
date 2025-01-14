; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_initialize_hw_bits_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_es2lan.c_e1000_initialize_hw_bits_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NEW_IPV6_EXT_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_initialize_hw_bits_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_initialize_hw_bits_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @TXDCTL(i32 0)
  %5 = call i32 @er32(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = or i32 %6, 4194304
  store i32 %7, i32* %3, align 4
  %8 = call i32 @TXDCTL(i32 0)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @ew32(i32 %8, i32 %9)
  %11 = call i32 @TXDCTL(i32 1)
  %12 = call i32 @er32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, 4194304
  store i32 %14, i32* %3, align 4
  %15 = call i32 @TXDCTL(i32 1)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ew32(i32 %15, i32 %16)
  %18 = call i32 @TARC(i32 0)
  %19 = call i32 @er32(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, -2013265921
  store i32 %21, i32* %3, align 4
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @e1000_media_type_copper, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, -1048577
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %1
  %32 = call i32 @TARC(i32 0)
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ew32(i32 %32, i32 %33)
  %35 = call i32 @TARC(i32 1)
  %36 = call i32 @er32(i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @TCTL, align 4
  %38 = call i32 @er32(i32 %37)
  %39 = load i32, i32* @E1000_TCTL_MULR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, -268435457
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, 268435456
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 @TARC(i32 1)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ew32(i32 %49, i32 %50)
  %52 = load i32, i32* @RFCTL, align 4
  %53 = call i32 @er32(i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %55 = load i32, i32* @E1000_RFCTL_NEW_IPV6_EXT_DIS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @RFCTL, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @ew32(i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @TXDCTL(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
