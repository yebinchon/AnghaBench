; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_check_channel_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_check_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"range/channel list is empty!\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"comedi%d: range/channel list is too long for actual configuration (%d>%d)!\00", align 1
@AREF_DIFF = common dso_local global i64 0, align 8
@PCI9118_BIPOLAR_RANGES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Differencial and single ended inputs cann't be mixtured!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Bipolar and unipolar ranges cann't be mixtured!\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"If AREF_DIFF is used then is available only first 8 channels!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32*, i32, i32)* @check_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_channel_list(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_device*, align 8
  %9 = alloca %struct.comedi_subdevice*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %8, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %21 = call i32 @comedi_error(%struct.comedi_device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %130

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %13, align 4
  %27 = add nsw i32 %25, %26
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %22
  %33 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %34 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %9, align 8
  %38 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %13, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @printk(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %43)
  store i32 0, i32* %7, align 4
  br label %130

45:                                               ; preds = %22
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @CR_AREF(i32 %48)
  %50 = load i64, i64* @AREF_DIFF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @CR_RANGE(i32 %56)
  %58 = load i64, i64* @PCI9118_BIPOLAR_RANGES, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 1, i32* %16, align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %129

64:                                               ; preds = %61
  store i32 1, i32* %14, align 4
  br label %65

65:                                               ; preds = %125, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %128

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %14, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @CR_AREF(i32 %74)
  %76 = load i64, i64* @AREF_DIFF, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %83 = call i32 @comedi_error(%struct.comedi_device* %82, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %130

84:                                               ; preds = %69
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @CR_RANGE(i32 %89)
  %91 = load i64, i64* @PCI9118_BIPOLAR_RANGES, align 8
  %92 = icmp slt i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %98 = call i32 @comedi_error(%struct.comedi_device* %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %130

99:                                               ; preds = %84
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %105, %106
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %14, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @CR_CHAN(i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sge i64 %113, %116
  %118 = zext i1 %117 to i32
  %119 = and i32 %107, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %99
  %122 = load %struct.comedi_device*, %struct.comedi_device** %8, align 8
  %123 = call i32 @comedi_error(%struct.comedi_device* %122, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %130

124:                                              ; preds = %99
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %65

128:                                              ; preds = %65
  br label %129

129:                                              ; preds = %128, %61
  store i32 1, i32* %7, align 4
  br label %130

130:                                              ; preds = %129, %121, %96, %81, %32, %19
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i64 @CR_RANGE(i32) #1

declare dso_local i64 @CR_CHAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
