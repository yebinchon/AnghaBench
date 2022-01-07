; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das800.c_das800_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@ID = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@DAS800_ID = common dso_local global i64 0, align 8
@thisboard = common dso_local global i32 0, align 4
@das800_boards = common dso_local global i32 0, align 4
@das800 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c" Board model: DAS-800\0A\00", align 1
@ciodas800 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c" Board model: CIO-DAS800\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c" Board model (probed): DAS-800\0A\00", align 1
@das801 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c" Board model: DAS-801\0A\00", align 1
@ciodas801 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c" Board model: CIO-DAS801\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c" Board model (probed): DAS-801\0A\00", align 1
@das802 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c" Board model: DAS-802\0A\00", align 1
@ciodas802 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c" Board model: CIO-DAS802\0A\00", align 1
@ciodas80216 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c" Board model: CIO-DAS802/16\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c" Board model (probed): DAS-802\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c" Board model: probe returned 0x%x (unknown)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @das800_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_probe(%struct.comedi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @ID, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DAS800_GAIN, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outb(i32 %11, i64 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DAS800_ID, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inb(i64 %22)
  %24 = and i32 %23, 3
  store i32 %24, i32* %4, align 4
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load i32, i32* @thisboard, align 4
  %30 = load i32, i32* @das800_boards, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %91 [
    i32 0, label %33
    i32 2, label %50
    i32 3, label %67
  ]

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @das800, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %95

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ciodas800, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %95

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @das800, align 4
  store i32 %49, i32* %2, align 4
  br label %95

50:                                               ; preds = %1
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @das801, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %95

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ciodas801, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %95

64:                                               ; preds = %57
  %65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @das801, align 4
  store i32 %66, i32* %2, align 4
  br label %95

67:                                               ; preds = %1
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @das802, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %95

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @ciodas802, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %95

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ciodas80216, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %95

88:                                               ; preds = %81
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %90 = load i32, i32* @das802, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %1
  %92 = load i32, i32* %4, align 4
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %88, %85, %78, %71, %64, %61, %54, %47, %44, %37
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
