; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6mii_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6mii_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6gmac = type { i64 }

@S6_GMAC_MACMIIINDI = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6gmac*, i32)* @s6mii_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6mii_busy(%struct.s6gmac* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s6gmac*, align 8
  %5 = alloca i32, align 4
  store %struct.s6gmac* %0, %struct.s6gmac** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %21, %2
  %7 = load %struct.s6gmac*, %struct.s6gmac** %4, align 8
  %8 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S6_GMAC_MACMIIINDI, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @readl(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @ETIME, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %14
  %22 = call i32 @udelay(i32 64)
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
