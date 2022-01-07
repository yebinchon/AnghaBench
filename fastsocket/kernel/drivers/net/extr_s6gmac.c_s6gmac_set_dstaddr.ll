; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_set_dstaddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s6gmac.c_s6gmac_set_dstaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6gmac = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6gmac*, i32, i32, i32, i32, i32)* @s6gmac_set_dstaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6gmac_set_dstaddr(%struct.s6gmac* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.s6gmac*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.s6gmac* %0, %struct.s6gmac** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %15 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @S6_GMAC_HOST_DSTADDRLO(i32 %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @writel(i32 %13, i64 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %23 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @S6_GMAC_HOST_DSTADDRHI(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @writel(i32 %21, i64 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %31 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @S6_GMAC_HOST_DSTMASKLO(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = call i32 @writel(i32 %29, i64 %35)
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.s6gmac*, %struct.s6gmac** %7, align 8
  %39 = getelementptr inbounds %struct.s6gmac, %struct.s6gmac* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @S6_GMAC_HOST_DSTMASKHI(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i32 %37, i64 %43)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @S6_GMAC_HOST_DSTADDRLO(i32) #1

declare dso_local i64 @S6_GMAC_HOST_DSTADDRHI(i32) #1

declare dso_local i64 @S6_GMAC_HOST_DSTMASKLO(i32) #1

declare dso_local i64 @S6_GMAC_HOST_DSTMASKHI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
