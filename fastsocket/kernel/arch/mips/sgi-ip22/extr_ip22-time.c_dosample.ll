; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip22-time.c_dosample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sgi-ip22/extr_ip22-time.c_dosample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@SGINT_TCWORD_CNT2 = common dso_local global i32 0, align 4
@SGINT_TCWORD_CALL = common dso_local global i32 0, align 4
@SGINT_TCWORD_MRGEN = common dso_local global i32 0, align 4
@sgint = common dso_local global %struct.TYPE_2__* null, align 8
@SGINT_TCSAMP_COUNTER = common dso_local global i32 0, align 4
@SGINT_TCWORD_CLAT = common dso_local global i32 0, align 4
@SGINT_TCWORD_MSWST = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @dosample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dosample() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @SGINT_TCWORD_CNT2, align 4
  %6 = load i32, i32* @SGINT_TCWORD_CALL, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SGINT_TCWORD_MRGEN, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @SGINT_TCSAMP_COUNTER, align 4
  %13 = and i32 %12, 255
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @SGINT_TCSAMP_COUNTER, align 4
  %17 = ashr i32 %16, 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @read_c0_count()
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %35, %0
  %22 = load i32, i32* @SGINT_TCWORD_CNT2, align 4
  %23 = load i32, i32* @SGINT_TCWORD_CLAT, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @writeb(i32 %24, i32* %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i64 @readb(i32* %29)
  store i64 %30, i64* %4, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i64 @readb(i32* %32)
  store i64 %33, i64* %3, align 8
  %34 = call i32 (...) @read_c0_count()
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %21, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @SGINT_TCWORD_CNT2, align 4
  %40 = load i32, i32* @SGINT_TCWORD_CALL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SGINT_TCWORD_MSWST, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sgint, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @writeb(i32 %43, i32* %45)
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %1, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* @HZ, align 4
  %51 = sdiv i32 500000, %50
  %52 = sdiv i32 %49, %51
  %53 = load i32, i32* @HZ, align 4
  %54 = sdiv i32 500000, %53
  %55 = mul nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  ret i64 %56
}

declare dso_local i32 @read_c0_count(...) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i64 @readb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
