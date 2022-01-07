; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_reset_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_reset_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, i64 }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@TALITOS_CCCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to reset channel %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_EAE = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_CDWE = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_CDIE = common dso_local global i32 0, align 4
@TALITOS_FTR_HW_AUTH_CHECK = common dso_local global i32 0, align 4
@TALITOS_CCCR_LO_IWSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @reset_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_channel(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %8)
  store %struct.talitos_private* %9, %struct.talitos_private** %6, align 8
  %10 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %12 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @TALITOS_CCCR(i32 %14)
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* @TALITOS_CCCR_RESET, align 4
  %18 = call i32 @setbits32(i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %36, %2
  %20 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %21 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @TALITOS_CCCR(i32 %23)
  %25 = add nsw i64 %22, %24
  %26 = call i32 @in_be32(i64 %25)
  %27 = load i32, i32* @TALITOS_CCCR_RESET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, -1
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi i1 [ false, %19 ], [ %33, %30 ]
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 (...) @cpu_relax()
  br label %19

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %76

47:                                               ; preds = %38
  %48 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %49 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @TALITOS_CCCR_LO(i32 %51)
  %53 = add nsw i64 %50, %52
  %54 = load i32, i32* @TALITOS_CCCR_LO_EAE, align 4
  %55 = load i32, i32* @TALITOS_CCCR_LO_CDWE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @TALITOS_CCCR_LO_CDIE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @setbits32(i64 %53, i32 %58)
  %60 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %61 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TALITOS_FTR_HW_AUTH_CHECK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %47
  %67 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %68 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @TALITOS_CCCR_LO(i32 %70)
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* @TALITOS_CCCR_LO_IWSE, align 4
  %74 = call i32 @setbits32(i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %47
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %41
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @setbits32(i64, i32) #1

declare dso_local i64 @TALITOS_CCCR(i32) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i64 @TALITOS_CCCR_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
