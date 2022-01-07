; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_clear_mac_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cassini.c_cas_clear_mac_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64 }

@REG_MAC_COLL_NORMAL = common dso_local global i64 0, align 8
@REG_MAC_COLL_FIRST = common dso_local global i64 0, align 8
@REG_MAC_COLL_EXCESS = common dso_local global i64 0, align 8
@REG_MAC_COLL_LATE = common dso_local global i64 0, align 8
@REG_MAC_TIMER_DEFER = common dso_local global i64 0, align 8
@REG_MAC_ATTEMPTS_PEAK = common dso_local global i64 0, align 8
@REG_MAC_RECV_FRAME = common dso_local global i64 0, align 8
@REG_MAC_LEN_ERR = common dso_local global i64 0, align 8
@REG_MAC_ALIGN_ERR = common dso_local global i64 0, align 8
@REG_MAC_FCS_ERR = common dso_local global i64 0, align 8
@REG_MAC_RX_CODE_ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_clear_mac_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_clear_mac_err(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  store %struct.cas* %0, %struct.cas** %2, align 8
  %3 = load %struct.cas*, %struct.cas** %2, align 8
  %4 = getelementptr inbounds %struct.cas, %struct.cas* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REG_MAC_COLL_NORMAL, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel(i32 0, i64 %7)
  %9 = load %struct.cas*, %struct.cas** %2, align 8
  %10 = getelementptr inbounds %struct.cas, %struct.cas* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_MAC_COLL_FIRST, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load %struct.cas*, %struct.cas** %2, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_MAC_COLL_EXCESS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 0, i64 %19)
  %21 = load %struct.cas*, %struct.cas** %2, align 8
  %22 = getelementptr inbounds %struct.cas, %struct.cas* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_MAC_COLL_LATE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 0, i64 %25)
  %27 = load %struct.cas*, %struct.cas** %2, align 8
  %28 = getelementptr inbounds %struct.cas, %struct.cas* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_MAC_TIMER_DEFER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 0, i64 %31)
  %33 = load %struct.cas*, %struct.cas** %2, align 8
  %34 = getelementptr inbounds %struct.cas, %struct.cas* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_MAC_ATTEMPTS_PEAK, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 0, i64 %37)
  %39 = load %struct.cas*, %struct.cas** %2, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @REG_MAC_RECV_FRAME, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 0, i64 %43)
  %45 = load %struct.cas*, %struct.cas** %2, align 8
  %46 = getelementptr inbounds %struct.cas, %struct.cas* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_MAC_LEN_ERR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 0, i64 %49)
  %51 = load %struct.cas*, %struct.cas** %2, align 8
  %52 = getelementptr inbounds %struct.cas, %struct.cas* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REG_MAC_ALIGN_ERR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 0, i64 %55)
  %57 = load %struct.cas*, %struct.cas** %2, align 8
  %58 = getelementptr inbounds %struct.cas, %struct.cas* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REG_MAC_FCS_ERR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.cas*, %struct.cas** %2, align 8
  %64 = getelementptr inbounds %struct.cas, %struct.cas* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @REG_MAC_RX_CODE_ERR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 0, i64 %67)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
