; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_reset_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_talitos.c_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i64 }

@TALITOS_TIMEOUT = common dso_local global i32 0, align 4
@TALITOS_MCR = common dso_local global i64 0, align 8
@TALITOS_MCR_SWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset device\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.talitos_private*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %6)
  store %struct.talitos_private* %7, %struct.talitos_private** %4, align 8
  %8 = load i32, i32* @TALITOS_TIMEOUT, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %10 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TALITOS_MCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @TALITOS_MCR_SWR, align 4
  %15 = call i32 @setbits32(i64 %13, i32 %14)
  br label %16

16:                                               ; preds = %32, %1
  %17 = load %struct.talitos_private*, %struct.talitos_private** %4, align 8
  %18 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TALITOS_MCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @in_be32(i64 %21)
  %23 = load i32, i32* @TALITOS_MCR_SWR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %26, %16
  %31 = phi i1 [ false, %16 ], [ %29, %26 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 (...) @cpu_relax()
  br label %16

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %2, align 4
  ret i32 %44
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
