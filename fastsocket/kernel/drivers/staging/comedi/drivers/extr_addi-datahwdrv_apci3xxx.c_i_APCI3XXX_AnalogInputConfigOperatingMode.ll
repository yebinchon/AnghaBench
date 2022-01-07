; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3xxx.c_i_APCI3XXX_AnalogInputConfigOperatingMode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci3xxx.c_i_APCI3XXX_AnalogInputConfigOperatingMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i8, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI3XXX_SINGLE = common dso_local global i8 0, align 1
@APCI3XXX_DIFF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"Single/Diff selection error\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Any conversion started\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Convert time value selection error\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Convert time base unity selection error\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Buffer size error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3XXX_AnalogInputConfigOperatingMode(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  store i8 0, i8* %10, align 1
  store i8 0, i8* %11, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %163

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %11, align 1
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %10, align 1
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8, i8* %10, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 1, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %160

43:                                               ; preds = %21
  %44 = load i32, i32* %12, align 4
  %45 = icmp uge i32 %44, 0
  br i1 %45, label %46, label %157

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp ule i32 %47, 65535
  br i1 %48, label %49, label %157

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i8, i8* %10, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = mul i64 %56, 1000
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i8, i8* %10, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* %13, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 1000000
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp uge i32 %69, %74
  br i1 %75, label %76, label %154

76:                                               ; preds = %68
  %77 = load i8, i8* %11, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @APCI3XXX_SINGLE, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* @APCI3XXX_DIFF, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %151

88:                                               ; preds = %82, %76
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @APCI3XXX_SINGLE, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %94, %88
  %102 = load i8, i8* %11, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8, i8* @APCI3XXX_DIFF, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107, %94
  %115 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %150

116:                                              ; preds = %107, %101
  %117 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %118 = call i64 @i_APCI3XXX_TestConversionStarted(%struct.comedi_device* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i8, i8* %10, align 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i8 %124, i8* %126, align 4
  %127 = load i8, i8* %11, align 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i8 %127, i8* %129, align 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store i32 1, i32* %131, align 8
  %132 = load i8, i8* %10, align 1
  %133 = zext i8 %132 to i32
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 36
  %138 = inttoptr i64 %137 to i8*
  %139 = call i32 @writel(i32 %133, i8* %138)
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 32
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @writel(i32 %140, i8* %145)
  br label %149

147:                                              ; preds = %116
  %148 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -10, i32* %9, align 4
  br label %149

149:                                              ; preds = %147, %120
  br label %150

150:                                              ; preds = %149, %114
  br label %153

151:                                              ; preds = %82
  %152 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %153

153:                                              ; preds = %151, %150
  br label %156

154:                                              ; preds = %68
  %155 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %156

156:                                              ; preds = %154, %153
  br label %159

157:                                              ; preds = %46, %43
  %158 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %159

159:                                              ; preds = %157, %156
  br label %162

160:                                              ; preds = %21
  %161 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %162

162:                                              ; preds = %160, %159
  br label %165

163:                                              ; preds = %4
  %164 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %165

165:                                              ; preds = %163, %162
  %166 = load i32, i32* %9, align 4
  ret i32 %166
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @i_APCI3XXX_TestConversionStarted(%struct.comedi_device*) #1

declare dso_local i32 @writel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
