; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_etherh.c_etherh_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_etherh.c_etherh_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etherh_priv = type { i8, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etherh_priv*, i8)* @etherh_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etherh_set_ctrl(%struct.etherh_priv* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.etherh_priv*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.etherh_priv* %0, %struct.etherh_priv** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.etherh_priv*, %struct.etherh_priv** %3, align 8
  %7 = getelementptr inbounds %struct.etherh_priv, %struct.etherh_priv* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %5, align 1
  %14 = load i8, i8* %5, align 1
  %15 = load %struct.etherh_priv*, %struct.etherh_priv** %3, align 8
  %16 = getelementptr inbounds %struct.etherh_priv, %struct.etherh_priv* %15, i32 0, i32 0
  store i8 %14, i8* %16, align 4
  %17 = load i8, i8* %5, align 1
  %18 = load %struct.etherh_priv*, %struct.etherh_priv** %3, align 8
  %19 = getelementptr inbounds %struct.etherh_priv, %struct.etherh_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @writeb(i8 zeroext %17, i32 %20)
  ret void
}

declare dso_local i32 @writeb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
