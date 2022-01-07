; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_set_rds_ps_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_set_rds_ps_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@MAX_RDS_PS_NAME = common dso_local global i32 0, align 4
@RDS_BLOCK = common dso_local global i32 0, align 4
@SI4713_TX_RDS_PS_MESSAGE_COUNT = common dso_local global i32 0, align 4
@SI4713_TX_RDS_PS_REPEAT_COUNT = common dso_local global i32 0, align 4
@DEFAULT_RDS_PS_REPEAT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*, i8*)* @si4713_set_rds_ps_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_set_rds_ps_name(%struct.si4713_device* %0, i8* %1) #0 {
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strlen(i8* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @memset(i8* %12, i32 0, i32 %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %18 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %21 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RDS_BLOCK, align 4
  %33 = sdiv i32 %32, 2
  %34 = sdiv i32 %31, %33
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = call i32 @si4713_tx_rds_ps(%struct.si4713_device* %30, i32 %34, i8* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %85

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* @RDS_BLOCK, align 4
  %46 = sdiv i32 %45, 2
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %58

57:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %60 = load i32, i32* @SI4713_TX_RDS_PS_MESSAGE_COUNT, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @rds_ps_nblocks(i32 %61)
  %63 = call i32 @si4713_write_property(%struct.si4713_device* %59, i32 %60, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %85

67:                                               ; preds = %58
  %68 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %69 = load i32, i32* @SI4713_TX_RDS_PS_REPEAT_COUNT, align 4
  %70 = load i32, i32* @DEFAULT_RDS_PS_REPEAT_COUNT, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @si4713_write_property(%struct.si4713_device* %68, i32 %69, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %85

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %16
  %78 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %79 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* @MAX_RDS_PS_NAME, align 4
  %84 = call i32 @strncpy(i32 %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %75, %66, %42
  %86 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %87 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @si4713_tx_rds_ps(%struct.si4713_device*, i32, i8*) #1

declare dso_local i32 @si4713_write_property(%struct.si4713_device*, i32, i32) #1

declare dso_local i32 @rds_ps_nblocks(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
