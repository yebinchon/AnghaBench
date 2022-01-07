; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pluto2/extr_pluto2.c_pluto_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pluto2/extr_pluto2.c_pluto_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*, i64, i64, i64)* @pluto_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_rw(%struct.pluto* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pluto*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pluto* %0, %struct.pluto** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.pluto*, %struct.pluto** %5, align 8
  %11 = getelementptr inbounds %struct.pluto, %struct.pluto* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = call i64 @readl(i32* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %9, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.pluto*, %struct.pluto** %5, align 8
  %25 = getelementptr inbounds %struct.pluto, %struct.pluto* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @writel(i64 %23, i32* %28)
  ret void
}

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
