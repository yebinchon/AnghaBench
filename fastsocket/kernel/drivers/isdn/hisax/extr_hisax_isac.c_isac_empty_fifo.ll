; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_empty_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_isac.c_isac_empty_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac = type { i64, i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32*, i32)*, i32* }

@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"count %d\00", align 1
@MAX_DFRAME_LEN_L1 = common dso_local global i64 0, align 8
@DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"overrun %d\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@ISAC_CMDR_RMC = common dso_local global i32 0, align 4
@DBG_RFIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac*, i32)* @isac_empty_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isac_empty_fifo(%struct.isac* %0, i32 %1) #0 {
  %3 = alloca %struct.isac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.isac* %0, %struct.isac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @DBG_IRQ, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @DBG(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.isac*, %struct.isac** %3, align 8
  %10 = getelementptr inbounds %struct.isac, %struct.isac* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load i64, i64* @MAX_DFRAME_LEN_L1, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load i32, i32* @DBG_WARN, align 4
  %19 = load %struct.isac*, %struct.isac** %3, align 8
  %20 = getelementptr inbounds %struct.isac, %struct.isac* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = trunc i64 %24 to i32
  %26 = call i32 @DBG(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.isac*, %struct.isac** %3, align 8
  %28 = getelementptr inbounds %struct.isac, %struct.isac* %27, i32 0, i32 1
  %29 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %28, align 8
  %30 = load %struct.isac*, %struct.isac** %3, align 8
  %31 = load i32, i32* @ISAC_CMDR, align 4
  %32 = load i32, i32* @ISAC_CMDR_RMC, align 4
  %33 = call i32 %29(%struct.isac* %30, i32 %31, i32 %32)
  %34 = load %struct.isac*, %struct.isac** %3, align 8
  %35 = getelementptr inbounds %struct.isac, %struct.isac* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %68

36:                                               ; preds = %2
  %37 = load %struct.isac*, %struct.isac** %3, align 8
  %38 = getelementptr inbounds %struct.isac, %struct.isac* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.isac*, %struct.isac** %3, align 8
  %41 = getelementptr inbounds %struct.isac, %struct.isac* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32* %43, i32** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = load %struct.isac*, %struct.isac** %3, align 8
  %47 = getelementptr inbounds %struct.isac, %struct.isac* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.isac*, %struct.isac** %3, align 8
  %51 = getelementptr inbounds %struct.isac, %struct.isac* %50, i32 0, i32 2
  %52 = load i32 (%struct.isac*, i32*, i32)*, i32 (%struct.isac*, i32*, i32)** %51, align 8
  %53 = load %struct.isac*, %struct.isac** %3, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %52(%struct.isac* %53, i32* %54, i32 %55)
  %57 = load %struct.isac*, %struct.isac** %3, align 8
  %58 = getelementptr inbounds %struct.isac, %struct.isac* %57, i32 0, i32 1
  %59 = load i32 (%struct.isac*, i32, i32)*, i32 (%struct.isac*, i32, i32)** %58, align 8
  %60 = load %struct.isac*, %struct.isac** %3, align 8
  %61 = load i32, i32* @ISAC_CMDR, align 4
  %62 = load i32, i32* @ISAC_CMDR_RMC, align 4
  %63 = call i32 %59(%struct.isac* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @DBG_RFIFO, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @DBG_PACKET(i32 %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %36, %17
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i32) #1

declare dso_local i32 @DBG_PACKET(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
