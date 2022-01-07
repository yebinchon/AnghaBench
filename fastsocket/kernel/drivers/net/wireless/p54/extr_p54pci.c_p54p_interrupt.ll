; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54pci.c_p54p_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54pci.c_p54p_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { i32, i32 }

@int_ident = common dso_local global i32 0, align 4
@int_ack = common dso_local global i32 0, align 4
@int_enable = common dso_local global i32 0, align 4
@ISL38XX_INT_IDENT_UPDATE = common dso_local global i32 0, align 4
@ISL38XX_INT_IDENT_INIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @p54p_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54p_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.p54p_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.p54p_priv*, %struct.p54p_priv** %11, align 8
  store %struct.p54p_priv* %12, %struct.p54p_priv** %6, align 8
  %13 = load i32, i32* @int_ident, align 4
  %14 = call i32 @P54P_READ(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @cpu_to_le32(i32 -1)
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %51

22:                                               ; preds = %2
  %23 = load i32, i32* @int_ack, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @P54P_WRITE(i32 %23, i32 %24)
  %26 = load i32, i32* @int_enable, align 4
  %27 = call i32 @P54P_READ(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ISL38XX_INT_IDENT_UPDATE, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %37 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %36, i32 0, i32 1
  %38 = call i32 @tasklet_schedule(i32* %37)
  br label %50

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ISL38XX_INT_IDENT_INIT, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.p54p_priv*, %struct.p54p_priv** %6, align 8
  %47 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %46, i32 0, i32 0
  %48 = call i32 @complete(i32* %47)
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %35
  br label %51

51:                                               ; preds = %50, %21
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @IRQ_NONE, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  ret i32 %59
}

declare dso_local i32 @P54P_READ(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @P54P_WRITE(i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
