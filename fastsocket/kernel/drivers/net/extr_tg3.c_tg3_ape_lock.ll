; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ENABLE_APE = common dso_local global i32 0, align 4
@ASIC_REV_5761 = common dso_local global i64 0, align 8
@APE_LOCK_REQ_DRIVER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TG3_APE_LOCK_REQ = common dso_local global i64 0, align 8
@TG3_APE_LOCK_GRANT = common dso_local global i64 0, align 8
@TG3_APE_PER_LOCK_REQ = common dso_local global i64 0, align 8
@TG3_APE_PER_LOCK_GRANT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_ape_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ape_lock(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.tg3*, %struct.tg3** %4, align 8
  %14 = load i32, i32* @ENABLE_APE, align 4
  %15 = call i32 @tg3_flag(%struct.tg3* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %102

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %43 [
    i32 134, label %20
    i32 133, label %27
    i32 132, label %27
    i32 131, label %41
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
  ]

20:                                               ; preds = %18
  %21 = load %struct.tg3*, %struct.tg3** %4, align 8
  %22 = call i64 @tg3_asic_rev(%struct.tg3* %21)
  %23 = load i64, i64* @ASIC_REV_5761, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %102

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %18, %18, %26
  %28 = load %struct.tg3*, %struct.tg3** %4, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @APE_LOCK_REQ_DRIVER, align 8
  store i64 %33, i64* %12, align 8
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.tg3*, %struct.tg3** %4, align 8
  %36 = getelementptr inbounds %struct.tg3, %struct.tg3* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %34, %32
  br label %46

41:                                               ; preds = %18, %18, %18, %18
  %42 = load i64, i64* @APE_LOCK_REQ_DRIVER, align 8
  store i64 %42, i64* %12, align 8
  br label %46

43:                                               ; preds = %18
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %102

46:                                               ; preds = %41, %40
  %47 = load %struct.tg3*, %struct.tg3** %4, align 8
  %48 = call i64 @tg3_asic_rev(%struct.tg3* %47)
  %49 = load i64, i64* @ASIC_REV_5761, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i64, i64* @TG3_APE_LOCK_REQ, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* @TG3_APE_LOCK_GRANT, align 8
  store i64 %53, i64* %11, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i64, i64* @TG3_APE_PER_LOCK_REQ, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* @TG3_APE_PER_LOCK_GRANT, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 4, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.tg3*, %struct.tg3** %4, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i64, i64* %12, align 8
  %66 = call i32 @tg3_ape_write32(%struct.tg3* %60, i64 %64, i64 %65)
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %83, %57
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 100
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load %struct.tg3*, %struct.tg3** %4, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i64 @tg3_ape_read32(%struct.tg3* %71, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %86

81:                                               ; preds = %70
  %82 = call i32 @udelay(i32 10)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %67

86:                                               ; preds = %80, %67
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.tg3*, %struct.tg3** %4, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @tg3_ape_write32(%struct.tg3* %91, i64 %95, i64 %96)
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %90, %86
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %43, %25, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i64, i64) #1

declare dso_local i64 @tg3_ape_read32(%struct.tg3*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
