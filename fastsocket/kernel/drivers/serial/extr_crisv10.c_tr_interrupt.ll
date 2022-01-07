; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_tr_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_tr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@R_IRQ_MASK2_RD = common dso_local global i64* null, align 8
@NR_PORTS = common dso_local global i32 0, align 4
@rs_table = common dso_local global %struct.e100_serial* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"tr_interrupt %i\0A\00", align 1
@ser_stat = common dso_local global %struct.TYPE_2__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tr_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.e100_serial*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64*, i64** @R_IRQ_MASK2_RD, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %62, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NR_PORTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load %struct.e100_serial*, %struct.e100_serial** @rs_table, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %16, i64 %18
  store %struct.e100_serial* %19, %struct.e100_serial** %5, align 8
  %20 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %21 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %26 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %15
  br label %62

30:                                               ; preds = %24
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %33 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %31, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  store i32 1, i32* %8, align 4
  %38 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %39 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DEBUG_LOG(i64 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = call i32 @DINTR2(i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ser_stat, align 8
  %45 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %46 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = call i32 @PROCSTAT(i32 %50)
  %53 = call i32 (...) @GET_JIFFIES_USEC()
  %54 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %55 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %58 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.e100_serial*, %struct.e100_serial** %5, align 8
  %60 = call i32 @transmit_chars_dma(%struct.e100_serial* %59)
  br label %61

61:                                               ; preds = %37, %30
  br label %62

62:                                               ; preds = %61, %29
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %11

65:                                               ; preds = %11
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @IRQ_RETVAL(i32 %66)
  ret i32 %67
}

declare dso_local i32 @DINTR2(i32) #1

declare dso_local i32 @DEBUG_LOG(i64, i8*, i32) #1

declare dso_local i32 @PROCSTAT(i32) #1

declare dso_local i32 @GET_JIFFIES_USEC(...) #1

declare dso_local i32 @transmit_chars_dma(%struct.e100_serial*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
