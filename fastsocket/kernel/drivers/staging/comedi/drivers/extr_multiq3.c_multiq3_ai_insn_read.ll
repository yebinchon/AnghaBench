; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MULTIQ3_CONTROL_MUST = common dso_local global i32 0, align 4
@MULTIQ3_AD_MUX_EN = common dso_local global i32 0, align 4
@MULTIQ3_CONTROL = common dso_local global i64 0, align 8
@MULTIQ3_TIMEOUT = common dso_local global i32 0, align 4
@MULTIQ3_STATUS = common dso_local global i64 0, align 8
@MULTIQ3_STATUS_EOC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MULTIQ3_AD_CS = common dso_local global i64 0, align 8
@MULTIQ3_STATUS_EOC_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @multiq3_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq3_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @MULTIQ3_CONTROL_MUST, align 4
  %20 = load i32, i32* @MULTIQ3_AD_MUX_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %12, align 4
  %23 = shl i32 %22, 3
  %24 = or i32 %21, %23
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MULTIQ3_CONTROL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outw(i32 %24, i64 %29)
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %47, %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MULTIQ3_TIMEOUT, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MULTIQ3_STATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inw(i64 %40)
  %42 = load i32, i32* @MULTIQ3_STATUS_EOC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %50

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %31

50:                                               ; preds = %45, %31
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @MULTIQ3_TIMEOUT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %125

57:                                               ; preds = %50
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %120, %57
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %61 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %123

64:                                               ; preds = %58
  %65 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MULTIQ3_AD_CS, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outw(i32 0, i64 %69)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %87, %64
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @MULTIQ3_TIMEOUT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MULTIQ3_STATUS, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @inw(i64 %80)
  %82 = load i32, i32* @MULTIQ3_STATUS_EOC_I, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %90

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %71

90:                                               ; preds = %85, %71
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @MULTIQ3_TIMEOUT, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %125

97:                                               ; preds = %90
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MULTIQ3_AD_CS, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @inb(i64 %102)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MULTIQ3_AD_CS, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @inb(i64 %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %13, align 4
  %111 = shl i32 %110, 8
  %112 = load i32, i32* %14, align 4
  %113 = or i32 %111, %112
  %114 = add i32 %113, 4096
  %115 = and i32 %114, 8191
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %120

120:                                              ; preds = %97
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %58

123:                                              ; preds = %58
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %94, %54
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
