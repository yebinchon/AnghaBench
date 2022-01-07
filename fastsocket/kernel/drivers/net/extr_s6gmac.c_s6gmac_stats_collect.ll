; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stats_collect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stats_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6gmac = type { i64, i32* }
%struct.s6gmac_statinf = type { i64, i32, i64 }

@S6_STATS_B = common dso_local global i32 0, align 4
@S6_GMAC_STAT_REGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6gmac*, %struct.s6gmac_statinf*)* @s6gmac_stats_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_stats_collect(%struct.s6gmac* %0, %struct.s6gmac_statinf* %1) #0 {
  %3 = alloca %struct.s6gmac*, align 8
  %4 = alloca %struct.s6gmac_statinf*, align 8
  %5 = alloca i32, align 4
  store %struct.s6gmac* %0, %struct.s6gmac** %3, align 8
  store %struct.s6gmac_statinf* %1, %struct.s6gmac_statinf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %49, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @S6_STATS_B, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %6
  %11 = load %struct.s6gmac_statinf*, %struct.s6gmac_statinf** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %11, i64 %13
  %15 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %10
  %19 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %20 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @S6_GMAC_STAT_REGS, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.s6gmac_statinf*, %struct.s6gmac_statinf** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %24, i64 %26
  %28 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = add i64 %23, %31
  %33 = call i64 @readl(i64 %32)
  %34 = load %struct.s6gmac*, %struct.s6gmac** %3, align 8
  %35 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.s6gmac_statinf*, %struct.s6gmac_statinf** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %37, i64 %39
  %41 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %36, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %33
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  br label %48

48:                                               ; preds = %18, %10
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %6

52:                                               ; preds = %6
  ret void
}

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
