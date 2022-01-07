; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i32, i32 (%struct.isac*, i32, i8)*, i32 (%struct.isac*, i32*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"count %d\00", align 1
@ISAC_CMDR_XTF = common dso_local global i8 0, align 1
@ISAC_CMDR_XME = common dso_local global i8 0, align 1
@DBG_XFIFO = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*)* @isac_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_fill_fifo(%struct.isac* %0) #0 {
  %2 = alloca %struct.isac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  store %struct.isac* %0, %struct.isac** %2, align 8
  %6 = load %struct.isac*, %struct.isac** %2, align 8
  %7 = getelementptr inbounds %struct.isac, %struct.isac* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.isac*, %struct.isac** %2, align 8
  %14 = getelementptr inbounds %struct.isac, %struct.isac* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* @DBG_IRQ, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @DBG(i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %25, 32
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  store i32 32, i32* %3, align 4
  %28 = load i8, i8* @ISAC_CMDR_XTF, align 1
  store i8 %28, i8* %4, align 1
  br label %36

29:                                               ; preds = %1
  %30 = load i8, i8* @ISAC_CMDR_XTF, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @ISAC_CMDR_XME, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %4, align 1
  br label %36

36:                                               ; preds = %29, %27
  %37 = load %struct.isac*, %struct.isac** %2, align 8
  %38 = getelementptr inbounds %struct.isac, %struct.isac* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %5, align 8
  %42 = load %struct.isac*, %struct.isac** %2, align 8
  %43 = getelementptr inbounds %struct.isac, %struct.isac* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @skb_pull(%struct.TYPE_2__* %44, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.isac*, %struct.isac** %2, align 8
  %49 = getelementptr inbounds %struct.isac, %struct.isac* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @DBG_XFIFO, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @DBG_PACKET(i32 %52, i32* %53, i32 %54)
  %56 = load %struct.isac*, %struct.isac** %2, align 8
  %57 = getelementptr inbounds %struct.isac, %struct.isac* %56, i32 0, i32 2
  %58 = load i32 (%struct.isac*, i32*, i32)*, i32 (%struct.isac*, i32*, i32)** %57, align 8
  %59 = load %struct.isac*, %struct.isac** %2, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 %58(%struct.isac* %59, i32* %60, i32 %61)
  %63 = load %struct.isac*, %struct.isac** %2, align 8
  %64 = getelementptr inbounds %struct.isac, %struct.isac* %63, i32 0, i32 1
  %65 = load i32 (%struct.isac*, i32, i8)*, i32 (%struct.isac*, i32, i8)** %64, align 8
  %66 = load %struct.isac*, %struct.isac** %2, align 8
  %67 = load i32, i32* @ISAC_CMDR, align 4
  %68 = load i8, i8* %4, align 1
  %69 = call i32 %65(%struct.isac* %66, i32 %67, i8 zeroext %68)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @DBG_PACKET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
