; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_initialize_daqboard2000.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_initialize_daqboard2000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DAQBOARD2000_EEPROM_PRESENT = common dso_local global i32 0, align 4
@DAQBOARD2000_CPLD_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8*, i32)* @initialize_daqboard2000 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initialize_daqboard2000(%struct.comedi_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 108
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @DAQBOARD2000_EEPROM_PRESENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %115

27:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %110, %27
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = call i32 @daqboard2000_resetLocalBus(%struct.comedi_device* %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %35 = call i32 @daqboard2000_reloadPLX(%struct.comedi_device* %34)
  %36 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %37 = call i32 @daqboard2000_pulseProgPin(%struct.comedi_device* %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = load i32, i32* @DAQBOARD2000_CPLD_INIT, align 4
  %40 = call i64 @daqboard2000_pollCPLD(%struct.comedi_device* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55, %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %43

69:                                               ; preds = %64, %43
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl i32 %80, 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %81, %88
  store i32 %89, i32* %12, align 4
  %90 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @daqboard2000_writeCPLD(%struct.comedi_device* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %74
  br label %99

95:                                               ; preds = %74
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %11, align 4
  br label %70

99:                                               ; preds = %94, %70
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %105 = call i32 @daqboard2000_resetLocalBus(%struct.comedi_device* %104)
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = call i32 @daqboard2000_reloadPLX(%struct.comedi_device* %106)
  store i32 0, i32* %8, align 4
  br label %113

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %31
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %28

113:                                              ; preds = %103, %28
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %24
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @daqboard2000_resetLocalBus(%struct.comedi_device*) #1

declare dso_local i32 @daqboard2000_reloadPLX(%struct.comedi_device*) #1

declare dso_local i32 @daqboard2000_pulseProgPin(%struct.comedi_device*) #1

declare dso_local i64 @daqboard2000_pollCPLD(%struct.comedi_device*, i32) #1

declare dso_local i32 @daqboard2000_writeCPLD(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
