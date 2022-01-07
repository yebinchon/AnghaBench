; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci16xx.c_i_APCI16XX_InsnReadTTLIOAllPortValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-datahwdrv_apci16xx.c_i_APCI16XX_InsnReadTTLIOAllPortValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@APCI16XX_TTL_READ_ALL_INPUTS = common dso_local global i8 0, align 1
@APCI16XX_TTL_READ_ALL_OUTPUTS = common dso_local global i8 0, align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"\0ABuffer size error\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"\0ACommand selection error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI16XX_InsnReadTTLIOAllPortValue(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @CR_AREF(i32 %16)
  %18 = trunc i64 %17 to i8
  store i8 %18, i8* %9, align 1
  %19 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  %22 = load i32*, i32** %8, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @APCI16XX_TTL_READ_ALL_INPUTS, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load i8, i8* %9, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @APCI16XX_TTL_READ_ALL_OUTPUTS, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %160

34:                                               ; preds = %28, %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 32
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %12, align 1
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = mul nsw i32 %43, 32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load i8, i8* %12, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, 1
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %12, align 1
  br label %56

56:                                               ; preds = %51, %34
  %57 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8, i8* %12, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %157

63:                                               ; preds = %56
  %64 = load i8, i8* %9, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @APCI16XX_TTL_READ_ALL_INPUTS, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %63
  store i8 0, i8* %11, align 1
  br label %70

70:                                               ; preds = %109, %69
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %12, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %70
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 8
  %81 = load i8, i8* %11, align 1
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %80, %84
  %86 = call i32 @inl(i64 %85)
  %87 = load i32*, i32** %13, align 8
  %88 = load i8, i8* %11, align 1
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = load i8, i8* %11, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %95, %103
  %105 = load i32*, i32** %13, align 8
  %106 = load i8, i8* %11, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %76
  %110 = load i8, i8* %11, align 1
  %111 = add i8 %110, 1
  store i8 %111, i8* %11, align 1
  br label %70

112:                                              ; preds = %70
  br label %156

113:                                              ; preds = %63
  store i8 0, i8* %11, align 1
  br label %114

114:                                              ; preds = %152, %113
  %115 = load i8, i8* %11, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %12, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %155

120:                                              ; preds = %114
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 20
  %125 = load i8, i8* %11, align 1
  %126 = zext i8 %125 to i32
  %127 = mul nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = call i32 @inl(i64 %129)
  %131 = load i32*, i32** %13, align 8
  %132 = load i8, i8* %11, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i8, i8* %11, align 1
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i8, i8* %11, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %139, %146
  %148 = load i32*, i32** %13, align 8
  %149 = load i8, i8* %11, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  br label %152

152:                                              ; preds = %120
  %153 = load i8, i8* %11, align 1
  %154 = add i8 %153, 1
  store i8 %154, i8* %11, align 1
  br label %114

155:                                              ; preds = %114
  br label %156

156:                                              ; preds = %155, %112
  br label %159

157:                                              ; preds = %56
  %158 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -101, i32* %10, align 4
  br label %159

159:                                              ; preds = %157, %156
  br label %162

160:                                              ; preds = %28
  %161 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 -100, i32* %10, align 4
  br label %162

162:                                              ; preds = %160, %159
  %163 = load i32, i32* %10, align 4
  ret i32 %163
}

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
