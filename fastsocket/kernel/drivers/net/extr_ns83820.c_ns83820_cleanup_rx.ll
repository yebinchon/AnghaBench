; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_ns83820_cleanup_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ns83820.c_ns83820_cleanup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns83820 = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.sk_buff**, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ns83820_cleanup_rx(%p)\0A\00", align 1
@ISR_RXOK = common dso_local global i32 0, align 4
@ISR_RXDESC = common dso_local global i32 0, align 4
@ISR_RXERR = common dso_local global i32 0, align 4
@ISR_RXEARLY = common dso_local global i32 0, align 4
@ISR_RXIDLE = common dso_local global i32 0, align 4
@IMR = common dso_local global i64 0, align 8
@RXDP_HI = common dso_local global i64 0, align 8
@RXDP = common dso_local global i64 0, align 8
@NR_RX_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ns83820*)* @ns83820_cleanup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns83820_cleanup_rx(%struct.ns83820* %0) #0 {
  %2 = alloca %struct.ns83820*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.ns83820* %0, %struct.ns83820** %2, align 8
  %6 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ns83820* %6)
  %8 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %9 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %8, i32 0, i32 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @ISR_RXOK, align 4
  %13 = load i32, i32* @ISR_RXDESC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ISR_RXERR, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ISR_RXEARLY, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISR_RXIDLE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %23 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %27 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %30 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IMR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %36 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %35, i32 0, i32 4
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %40 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %43 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @synchronize_irq(i32 %46)
  %48 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %49 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IMR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl(i64 %52)
  %54 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %55 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RXDP_HI, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %61 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RXDP, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %91, %1
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @NR_RX_DESC, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  %71 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %72 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %74, i64 %76
  %78 = load %struct.sk_buff*, %struct.sk_buff** %77, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %5, align 8
  %79 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %80 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.sk_buff**, %struct.sk_buff*** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %82, i64 %84
  store %struct.sk_buff* null, %struct.sk_buff** %85, align 8
  %86 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @clear_rx_desc(%struct.ns83820* %86, i32 %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %3, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %66

94:                                               ; preds = %66
  ret void
}

declare dso_local i32 @dprintk(i8*, %struct.ns83820*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clear_rx_desc(%struct.ns83820*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
