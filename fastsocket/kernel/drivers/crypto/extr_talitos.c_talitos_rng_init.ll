; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_rng_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_talitos_rng_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.device = type { i32 }
%struct.talitos_private = type { i64 }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@TALITOS_RNGURCR_LO = common dso_local global i64 0, align 8
@TALITOS_RNGURCR_LO_SR = common dso_local global i32 0, align 4
@TALITOS_RNGUSR_LO = common dso_local global i64 0, align 8
@TALITOS_RNGUSR_LO_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset rng hw\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TALITOS_RNGUDSR_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*)* @talitos_rng_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_rng_init(%struct.hwrng* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwrng*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.talitos_private*, align 8
  %6 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %3, align 8
  %7 = load %struct.hwrng*, %struct.hwrng** %3, align 8
  %8 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.device*
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %11)
  store %struct.talitos_private* %12, %struct.talitos_private** %5, align 8
  %13 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %15 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TALITOS_RNGURCR_LO, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @TALITOS_RNGURCR_LO_SR, align 4
  %20 = call i32 @setbits32(i64 %18, i32 %19)
  br label %21

21:                                               ; preds = %37, %1
  %22 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %23 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TALITOS_RNGUSR_LO, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @in_be32(i64 %26)
  %28 = load i32, i32* @TALITOS_RNGUSR_LO_RD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %31, %21
  %36 = phi i1 [ false, %21 ], [ %34, %31 ]
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call i32 (...) @cpu_relax()
  br label %21

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %54

47:                                               ; preds = %39
  %48 = load %struct.talitos_private*, %struct.talitos_private** %5, align 8
  %49 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TALITOS_RNGUDSR_LO, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @setbits32(i64 %52, i32 0)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
