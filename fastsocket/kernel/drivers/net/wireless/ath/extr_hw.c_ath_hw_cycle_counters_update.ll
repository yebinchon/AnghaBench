; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_hw.c_ath_hw_cycle_counters_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_hw.c_ath_hw_cycle_counters_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { %struct.TYPE_4__, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AR_MIBC = common dso_local global i32 0, align 4
@AR_MIBC_FMC = common dso_local global i32 0, align 4
@AR_CCCNT = common dso_local global i32 0, align 4
@AR_RCCNT = common dso_local global i32 0, align 4
@AR_RFCNT = common dso_local global i32 0, align 4
@AR_TFCNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_hw_cycle_counters_update(%struct.ath_common* %0) #0 {
  %2 = alloca %struct.ath_common*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %2, align 8
  %8 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %9 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @AR_MIBC, align 4
  %13 = load i32, i32* @AR_MIBC_FMC, align 4
  %14 = call i32 @REG_WRITE(i8* %11, i32 %12, i32 %13)
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @AR_CCCNT, align 4
  %17 = call i64 @REG_READ(i8* %15, i32 %16)
  store i64 %17, i64* %3, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @AR_RCCNT, align 4
  %20 = call i64 @REG_READ(i8* %18, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @AR_RFCNT, align 4
  %23 = call i64 @REG_READ(i8* %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @AR_TFCNT, align 4
  %26 = call i64 @REG_READ(i8* %24, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @AR_CCCNT, align 4
  %29 = call i32 @REG_WRITE(i8* %27, i32 %28, i32 0)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @AR_RFCNT, align 4
  %32 = call i32 @REG_WRITE(i8* %30, i32 %31, i32 0)
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @AR_RCCNT, align 4
  %35 = call i32 @REG_WRITE(i8* %33, i32 %34, i32 0)
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @AR_TFCNT, align 4
  %38 = call i32 @REG_WRITE(i8* %36, i32 %37, i32 0)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @AR_MIBC, align 4
  %41 = call i32 @REG_WRITE(i8* %39, i32 %40, i32 0)
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %44 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %42
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %52 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %50
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %60 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %68 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %76 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %84 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %82
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %92 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %90
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %100 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %98
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  ret void
}

declare dso_local i32 @REG_WRITE(i8*, i32, i32) #1

declare dso_local i64 @REG_READ(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
