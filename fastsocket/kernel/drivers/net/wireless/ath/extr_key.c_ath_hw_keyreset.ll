; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_hw_keyreset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/extr_key.c_ath_hw_keyreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i64, i32, i8* }

@.str = private unnamed_addr constant [42 x i8] c"keyreset: keycache entry %u out of range\0A\00", align 1
@AR_KEYTABLE_TYPE_CLR = common dso_local global i32 0, align 4
@AR_KEYTABLE_TYPE_TKIP = common dso_local global i64 0, align 8
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hw_keyreset(%struct.ath_common* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.ath_common* %0, %struct.ath_common** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %10 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %14 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @ath_err(%struct.ath_common* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %19)
  store i32 0, i32* %3, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @AR_KEYTABLE_TYPE(i64 %23)
  %25 = call i64 @REG_READ(i8* %22, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @ENABLE_REGWRITE_BUFFER(i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @AR_KEYTABLE_KEY0(i64 %29)
  %31 = call i32 @REG_WRITE(i8* %28, i32 %30, i32 0)
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @AR_KEYTABLE_KEY1(i64 %33)
  %35 = call i32 @REG_WRITE(i8* %32, i32 %34, i32 0)
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @AR_KEYTABLE_KEY2(i64 %37)
  %39 = call i32 @REG_WRITE(i8* %36, i32 %38, i32 0)
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @AR_KEYTABLE_KEY3(i64 %41)
  %43 = call i32 @REG_WRITE(i8* %40, i32 %42, i32 0)
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @AR_KEYTABLE_KEY4(i64 %45)
  %47 = call i32 @REG_WRITE(i8* %44, i32 %46, i32 0)
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @AR_KEYTABLE_TYPE(i64 %49)
  %51 = load i32, i32* @AR_KEYTABLE_TYPE_CLR, align 4
  %52 = call i32 @REG_WRITE(i8* %48, i32 %50, i32 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @AR_KEYTABLE_MAC0(i64 %54)
  %56 = call i32 @REG_WRITE(i8* %53, i32 %55, i32 0)
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @AR_KEYTABLE_MAC1(i64 %58)
  %60 = call i32 @REG_WRITE(i8* %57, i32 %59, i32 0)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @AR_KEYTABLE_TYPE_TKIP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %21
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %65, 64
  store i64 %66, i64* %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @AR_KEYTABLE_KEY0(i64 %68)
  %70 = call i32 @REG_WRITE(i8* %67, i32 %69, i32 0)
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i32 @AR_KEYTABLE_KEY1(i64 %72)
  %74 = call i32 @REG_WRITE(i8* %71, i32 %73, i32 0)
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @AR_KEYTABLE_KEY2(i64 %76)
  %78 = call i32 @REG_WRITE(i8* %75, i32 %77, i32 0)
  %79 = load i8*, i8** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @AR_KEYTABLE_KEY3(i64 %80)
  %82 = call i32 @REG_WRITE(i8* %79, i32 %81, i32 0)
  %83 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %84 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %64
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @AR_KEYTABLE_KEY4(i64 %91)
  %93 = call i32 @REG_WRITE(i8* %90, i32 %92, i32 0)
  %94 = load i8*, i8** %7, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @AR_KEYTABLE_TYPE(i64 %95)
  %97 = load i32, i32* @AR_KEYTABLE_TYPE_CLR, align 4
  %98 = call i32 @REG_WRITE(i8* %94, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %89, %64
  br label %100

100:                                              ; preds = %99, %21
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @REGWRITE_BUFFER_FLUSH(i8* %101)
  store i32 1, i32* %3, align 4
  br label %103

103:                                              ; preds = %100, %17
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i64) #1

declare dso_local i64 @REG_READ(i8*, i32) #1

declare dso_local i32 @AR_KEYTABLE_TYPE(i64) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(i8*) #1

declare dso_local i32 @REG_WRITE(i8*, i32, i32) #1

declare dso_local i32 @AR_KEYTABLE_KEY0(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY1(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY2(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY3(i64) #1

declare dso_local i32 @AR_KEYTABLE_KEY4(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC0(i64) #1

declare dso_local i32 @AR_KEYTABLE_MAC1(i64) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
