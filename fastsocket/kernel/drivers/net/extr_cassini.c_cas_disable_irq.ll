; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_disable_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i64 }

@REG_INTR_MASK = common dso_local global i64 0, align 8
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@INTRN_MASK_CLEAR_ALL = common dso_local global i32 0, align 4
@INTRN_MASK_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32)* @cas_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_disable_irq(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca %struct.cas*, align 8
  %4 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.cas*, %struct.cas** %3, align 8
  %9 = getelementptr inbounds %struct.cas, %struct.cas* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REG_INTR_MASK, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 -1, i64 %12)
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.cas*, %struct.cas** %3, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %23 [
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @INTRN_MASK_CLEAR_ALL, align 4
  %25 = load %struct.cas*, %struct.cas** %3, align 8
  %26 = getelementptr inbounds %struct.cas, %struct.cas* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @REG_PLUS_INTRN_MASK(i32 %28)
  %30 = add nsw i64 %27, %29
  %31 = call i32 @writel(i32 %24, i64 %30)
  br label %32

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %7, %32, %14
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REG_PLUS_INTRN_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
