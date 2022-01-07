; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_smb_waitready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pasemi.c_pasemi_smb_waitready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_smbus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_SMSTA = common dso_local global i32 0, align 4
@SMSTA_XEN = common dso_local global i32 0, align 4
@SMSTA_MTN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Timeout, status 0x%08x\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pasemi_smbus*)* @pasemi_smb_waitready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_smb_waitready(%struct.pasemi_smbus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pasemi_smbus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pasemi_smbus* %0, %struct.pasemi_smbus** %3, align 8
  store i32 10, i32* %4, align 4
  %6 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %7 = load i32, i32* @REG_SMSTA, align 4
  %8 = call i32 @reg_read(%struct.pasemi_smbus* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  br label %9

9:                                                ; preds = %20, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SMSTA_XEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %15, 0
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i1 [ false, %9 ], [ %17, %14 ]
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = call i32 @msleep(i32 1)
  %22 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %23 = load i32, i32* @REG_SMSTA, align 4
  %24 = call i32 @reg_read(%struct.pasemi_smbus* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %9

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SMSTA_MTN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %54

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %38 = getelementptr inbounds %struct.pasemi_smbus, %struct.pasemi_smbus* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %44 = load i32, i32* @REG_SMSTA, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @reg_write(%struct.pasemi_smbus* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @ETIME, align 4
  %48 = sub i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %33
  %50 = load %struct.pasemi_smbus*, %struct.pasemi_smbus** %3, align 8
  %51 = load i32, i32* @REG_SMSTA, align 4
  %52 = load i32, i32* @SMSTA_XEN, align 4
  %53 = call i32 @reg_write(%struct.pasemi_smbus* %50, i32 %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %49, %36, %30
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @reg_read(%struct.pasemi_smbus*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @reg_write(%struct.pasemi_smbus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
