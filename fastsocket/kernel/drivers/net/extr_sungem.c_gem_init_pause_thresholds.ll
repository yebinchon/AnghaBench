; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_init_pause_thresholds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_init_pause_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@GREG_CFG_RONPAULBIT = common dso_local global i32 0, align 4
@GREG_CFG_ENBUG2FIX = common dso_local global i32 0, align 4
@GREG_CFG_IBURST = common dso_local global i32 0, align 4
@GREG_CFG_TXDMALIM = common dso_local global i32 0, align 4
@GREG_CFG_RXDMALIM = common dso_local global i32 0, align 4
@GREG_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_init_pause_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_pause_thresholds(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %7 = load %struct.gem*, %struct.gem** %2, align 8
  %8 = getelementptr inbounds %struct.gem, %struct.gem* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %9, 2048
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.gem*, %struct.gem** %2, align 8
  %13 = getelementptr inbounds %struct.gem, %struct.gem* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.gem*, %struct.gem** %2, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load %struct.gem*, %struct.gem** %2, align 8
  %18 = getelementptr inbounds %struct.gem, %struct.gem* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  br label %41

19:                                               ; preds = %1
  %20 = load %struct.gem*, %struct.gem** %2, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 4
  %24 = add nsw i32 %23, 64
  %25 = and i32 %24, -64
  store i32 %25, i32* %4, align 4
  %26 = load %struct.gem*, %struct.gem** %2, align 8
  %27 = getelementptr inbounds %struct.gem, %struct.gem* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sub nsw i32 %28, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.gem*, %struct.gem** %2, align 8
  %37 = getelementptr inbounds %struct.gem, %struct.gem* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.gem*, %struct.gem** %2, align 8
  %40 = getelementptr inbounds %struct.gem, %struct.gem* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %19, %11
  store i32 0, i32* %3, align 4
  %42 = load %struct.gem*, %struct.gem** %2, align 8
  %43 = getelementptr inbounds %struct.gem, %struct.gem* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @GREG_CFG_RONPAULBIT, align 4
  %51 = load i32, i32* @GREG_CFG_ENBUG2FIX, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* @GREG_CFG_IBURST, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @GREG_CFG_TXDMALIM, align 4
  %60 = and i32 62, %59
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @GREG_CFG_RXDMALIM, align 4
  %64 = and i32 1984, %63
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.gem*, %struct.gem** %2, align 8
  %69 = getelementptr inbounds %struct.gem, %struct.gem* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GREG_CFG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load %struct.gem*, %struct.gem** %2, align 8
  %75 = getelementptr inbounds %struct.gem, %struct.gem* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GREG_CFG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @readl(i64 %78)
  %80 = load i32, i32* @GREG_CFG_IBURST, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %55
  %84 = load i32, i32* @GREG_CFG_TXDMALIM, align 4
  %85 = and i32 4, %84
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* @GREG_CFG_RXDMALIM, align 4
  %87 = and i32 512, %86
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.gem*, %struct.gem** %2, align 8
  %92 = getelementptr inbounds %struct.gem, %struct.gem* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @GREG_CFG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  br label %97

97:                                               ; preds = %83, %55
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
