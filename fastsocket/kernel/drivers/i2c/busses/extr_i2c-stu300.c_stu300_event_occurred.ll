; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_event_occurred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-stu300.c_stu300_event_occurred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stu300_dev = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@I2C_SR1 = common dso_local global i64 0, align 8
@I2C_SR1_EVF_IND = common dso_local global i32 0, align 4
@I2C_SR2 = common dso_local global i64 0, align 8
@I2C_SR2_AF_IND = common dso_local global i32 0, align 4
@STU300_ERROR_ACKNOWLEDGE_FAILURE = common dso_local global i32 0, align 4
@I2C_SR2_BERR_IND = common dso_local global i32 0, align 4
@STU300_ERROR_BUS_ERROR = common dso_local global i32 0, align 4
@I2C_SR2_ARLO_IND = common dso_local global i32 0, align 4
@STU300_ERROR_ARBITRATION_LOST = common dso_local global i32 0, align 4
@I2C_SR1_ADSL_IND = common dso_local global i32 0, align 4
@I2C_SR1_BTF_IND = common dso_local global i32 0, align 4
@I2C_SR2_STOPF_IND = common dso_local global i32 0, align 4
@I2C_SR1_SB_IND = common dso_local global i32 0, align 4
@I2C_SR2_ENDAD_IND = common dso_local global i32 0, align 4
@I2C_SR1_ADD10_IND = common dso_local global i32 0, align 4
@STU300_ERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unhandled interrupt! %d sr1: 0x%x sr2: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stu300_dev*, i32)* @stu300_event_occurred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stu300_event_occurred(%struct.stu300_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stu300_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stu300_dev* %0, %struct.stu300_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %9 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @I2C_SR1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @stu300_r8(i64 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @I2C_SR1_EVF_IND, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %21 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @I2C_SR2, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @stu300_r8(i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %27 = call i32 @stu300_irq_disable(%struct.stu300_dev* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @I2C_SR2_AF_IND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i32, i32* @STU300_ERROR_ACKNOWLEDGE_FAILURE, align 4
  %34 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %35 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  store i32 1, i32* %3, align 4
  br label %113

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @I2C_SR2_BERR_IND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @STU300_ERROR_BUS_ERROR, align 4
  %43 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %44 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  store i32 1, i32* %3, align 4
  br label %113

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @I2C_SR2_ARLO_IND, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @STU300_ERROR_ARBITRATION_LOST, align 4
  %52 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %53 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  store i32 1, i32* %3, align 4
  br label %113

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  switch i32 %57, label %100 [
    i32 136, label %58
    i32 135, label %65
    i32 134, label %65
    i32 130, label %65
    i32 129, label %65
    i32 133, label %72
    i32 132, label %79
    i32 131, label %86
    i32 128, label %93
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @I2C_SR1_ADSL_IND, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %113

64:                                               ; preds = %58
  br label %101

65:                                               ; preds = %56, %56, %56, %56
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @I2C_SR1_BTF_IND, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %113

71:                                               ; preds = %65
  br label %101

72:                                               ; preds = %56
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @I2C_SR2_STOPF_IND, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %3, align 4
  br label %113

78:                                               ; preds = %72
  br label %101

79:                                               ; preds = %56
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @I2C_SR1_SB_IND, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %113

85:                                               ; preds = %79
  br label %101

86:                                               ; preds = %56
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @I2C_SR2_ENDAD_IND, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 1, i32* %3, align 4
  br label %113

92:                                               ; preds = %86
  br label %101

93:                                               ; preds = %56
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @I2C_SR1_ADD10_IND, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %113

99:                                               ; preds = %93
  br label %101

100:                                              ; preds = %56
  br label %101

101:                                              ; preds = %100, %99, %92, %85, %78, %71, %64
  %102 = load i32, i32* @STU300_ERROR_UNKNOWN, align 4
  %103 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %104 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.stu300_dev*, %struct.stu300_dev** %4, align 8
  %106 = getelementptr inbounds %struct.stu300_dev, %struct.stu300_dev* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %101, %98, %91, %84, %77, %70, %63, %50, %41, %32, %18
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @stu300_r8(i64) #1

declare dso_local i32 @stu300_irq_disable(%struct.stu300_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
