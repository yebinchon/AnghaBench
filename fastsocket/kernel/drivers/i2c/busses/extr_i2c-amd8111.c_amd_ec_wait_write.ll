; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-amd8111.c_amd_ec_wait_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-amd8111.c_amd_ec_wait_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_smbus = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@AMD_EC_SC = common dso_local global i64 0, align 8
@AMD_EC_SC_IBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout while waiting for IBF to clear\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_smbus*)* @amd_ec_wait_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ec_wait_write(%struct.amd_smbus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_smbus*, align 8
  %4 = alloca i32, align 4
  store %struct.amd_smbus* %0, %struct.amd_smbus** %3, align 8
  store i32 500, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load %struct.amd_smbus*, %struct.amd_smbus** %3, align 8
  %7 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AMD_EC_SC, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @inb(i64 %10)
  %12 = load i32, i32* @AMD_EC_SC_IBF, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %15, %5
  %20 = phi i1 [ false, %5 ], [ %18, %15 ]
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = call i32 @udelay(i32 1)
  br label %5

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load %struct.amd_smbus*, %struct.amd_smbus** %3, align 8
  %28 = getelementptr inbounds %struct.amd_smbus, %struct.amd_smbus* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
