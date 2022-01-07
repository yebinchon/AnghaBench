; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_hw.c_ath_hw_setbssidmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_hw.c_ath_hw_setbssidmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64, i64, i8* }

@AR_STA_ID0 = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_SADH_MASK = common dso_local global i32 0, align 4
@AR_BSSMSKL = common dso_local global i32 0, align 4
@AR_BSSMSKU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_hw_setbssidmask(%struct.ath_common* %0) #0 {
  %2 = alloca %struct.ath_common*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_common* %0, %struct.ath_common** %2, align 8
  %5 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %6 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %5, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @AR_STA_ID0, align 4
  %10 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %11 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @get_unaligned_le32(i64 %12)
  %14 = call i32 @REG_WRITE(i8* %8, i32 %9, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @AR_STA_ID1, align 4
  %17 = call i32 @REG_READ(i8* %15, i32 %16)
  %18 = load i32, i32* @AR_STA_ID1_SADH_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %22 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = call i32 @get_unaligned_le16(i64 %24)
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @AR_STA_ID1, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @REG_WRITE(i8* %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* @AR_BSSMSKL, align 4
  %34 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %35 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @get_unaligned_le32(i64 %36)
  %38 = call i32 @REG_WRITE(i8* %32, i32 %33, i32 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @AR_BSSMSKU, align 4
  %41 = load %struct.ath_common*, %struct.ath_common** %2, align 8
  %42 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  %45 = call i32 @get_unaligned_le16(i64 %44)
  %46 = call i32 @REG_WRITE(i8* %39, i32 %40, i32 %45)
  ret void
}

declare dso_local i32 @REG_WRITE(i8*, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

declare dso_local i32 @REG_READ(i8*, i32) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
