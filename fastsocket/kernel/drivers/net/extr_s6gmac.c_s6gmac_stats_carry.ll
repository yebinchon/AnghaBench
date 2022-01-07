; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stats_carry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_stats_carry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6gmac = type { i32* }
%struct.s6gmac_statinf = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6gmac*, %struct.s6gmac_statinf*, i32)* @s6gmac_stats_carry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_stats_carry(%struct.s6gmac* %0, %struct.s6gmac_statinf* %1, i32 %2) #0 {
  %4 = alloca %struct.s6gmac*, align 8
  %5 = alloca %struct.s6gmac_statinf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s6gmac* %0, %struct.s6gmac** %4, align 8
  store %struct.s6gmac_statinf* %1, %struct.s6gmac_statinf** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @fls(i32 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.s6gmac_statinf*, %struct.s6gmac_statinf** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %20, i64 %22
  %24 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = load %struct.s6gmac*, %struct.s6gmac** %4, align 8
  %28 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.s6gmac_statinf*, %struct.s6gmac_statinf** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %30, i64 %32
  %34 = getelementptr inbounds %struct.s6gmac_statinf, %struct.s6gmac_statinf* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %26
  store i32 %38, i32* %36, align 4
  br label %8

39:                                               ; preds = %8
  ret void
}

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
