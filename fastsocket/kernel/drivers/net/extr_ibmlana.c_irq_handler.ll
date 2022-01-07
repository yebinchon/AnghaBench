; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmlana.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmlana.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@BCMREG = common dso_local global i64 0, align 8
@BCMREG_IPEND = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SONIC_ISREG = common dso_local global i64 0, align 8
@ISREG_RBE = common dso_local global i32 0, align 4
@ISREG_PKTRX = common dso_local global i32 0, align 4
@ISREG_TXDN = common dso_local global i32 0, align 4
@ISREG_TXER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BCMREG, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  %16 = load i32, i32* @BCMREG_IPEND, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SONIC_ISREG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @inw(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ISREG_RBE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = call i32 @irqrbe_handler(%struct.net_device* %34)
  %36 = load i32, i32* @ISREG_RBE, align 4
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SONIC_ISREG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i32 %36, i64 %41)
  br label %43

43:                                               ; preds = %33, %22
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ISREG_PKTRX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call i32 @irqrx_handler(%struct.net_device* %49)
  %51 = load i32, i32* @ISREG_PKTRX, align 4
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SONIC_ISREG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ISREG_TXDN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = call i32 @irqtx_handler(%struct.net_device* %64)
  %66 = load i32, i32* @ISREG_TXDN, align 4
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SONIC_ISREG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %63, %58
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ISREG_TXER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = call i32 @irqtxerr_handler(%struct.net_device* %79)
  %81 = load i32, i32* @ISREG_TXER, align 4
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SONIC_ISREG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @outw(i32 %81, i64 %86)
  br label %88

88:                                               ; preds = %78, %73
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @irqrbe_handler(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @irqrx_handler(%struct.net_device*) #1

declare dso_local i32 @irqtx_handler(%struct.net_device*) #1

declare dso_local i32 @irqtxerr_handler(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
