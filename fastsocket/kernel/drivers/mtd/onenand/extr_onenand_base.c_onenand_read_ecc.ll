; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_read_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_read_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i32 (i64)*, i64 }

@ONENAND_REG_ECC_STATUS = common dso_local global i64 0, align 8
@FLEXONENAND_UNCORRECTABLE_ERROR = common dso_local global i32 0, align 4
@ONENAND_ECC_2BIT_ALL = common dso_local global i32 0, align 4
@ONENAND_ECC_1BIT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.onenand_chip*)* @onenand_read_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_read_ecc(%struct.onenand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %8 = call i32 @FLEXONENAND(%struct.onenand_chip* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %11, i32 0, i32 0
  %13 = load i32 (i64)*, i32 (i64)** %12, align 8
  %14 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %15 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ONENAND_REG_ECC_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 %13(i64 %18)
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %26 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %25, i32 0, i32 0
  %27 = load i32 (i64)*, i32 (i64)** %26, align 8
  %28 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %29 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ONENAND_REG_ECC_STATUS, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 %27(i64 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %54

44:                                               ; preds = %24
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @FLEXONENAND_UNCORRECTABLE_ERROR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ONENAND_ECC_2BIT_ALL, align 4
  store i32 %50, i32* %2, align 4
  br label %59

51:                                               ; preds = %44
  %52 = load i32, i32* @ONENAND_ECC_1BIT_ALL, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %21

57:                                               ; preds = %21
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %49, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @FLEXONENAND(%struct.onenand_chip*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
