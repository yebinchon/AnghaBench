; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci16xx.c_i_APCI16XX_InsnBitsReadTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci16xx.c_i_APCI16XX_InsnBitsReadTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@APCI16XX_TTL_READCHANNEL = common dso_local global i8 0, align 1
@APCI16XX_TTL_READPORT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"\0AChannel selection error\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"\0APort selection error\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"\0ACommand selection error\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\0ABuffer size error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI16XX_InsnBitsReadTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 8
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %11, align 1
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call zeroext i8 @CR_RANGE(i32 %28)
  store i8 %29, i8* %12, align 1
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call zeroext i8 @CR_CHAN(i32 %32)
  store i8 %33, i8* %13, align 1
  %34 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %35 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %99

38:                                               ; preds = %4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %10, align 1
  %43 = load i8, i8* %10, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @APCI16XX_TTL_READCHANNEL, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @APCI16XX_TTL_READPORT, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %48, %38
  %55 = load i8, i8* %12, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* %11, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %54
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = sdiv i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = srem i32 %71, 4
  %73 = mul nsw i32 8, %72
  %74 = ashr i32 %69, %73
  %75 = and i32 %74, 255
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %60
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @APCI16XX_TTL_READCHANNEL, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i8, i8* %13, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sgt i32 %85, 7
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -103, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %83, %77
  br label %92

90:                                               ; preds = %60
  %91 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -102, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %89
  br label %95

93:                                               ; preds = %54
  %94 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -102, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %92
  br label %98

96:                                               ; preds = %48
  %97 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -100, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %95
  br label %101

99:                                               ; preds = %4
  %100 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %145

104:                                              ; preds = %101
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = bitcast i32* %106 to i8*
  store i8* %107, i8** %14, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 8
  %112 = load i8, i8* %12, align 1
  %113 = zext i8 %112 to i32
  %114 = sdiv i32 %113, 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %111, %116
  %118 = call i32 @inl(i64 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i8, i8* %12, align 1
  %121 = zext i8 %120 to i32
  %122 = srem i32 %121, 4
  %123 = mul nsw i32 8, %122
  %124 = lshr i32 %119, %123
  %125 = and i32 %124, 255
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %14, align 8
  store i8 %127, i8* %128, align 1
  %129 = load i8, i8* %10, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @APCI16XX_TTL_READCHANNEL, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %104
  %135 = load i8*, i8** %14, align 8
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %13, align 1
  %139 = zext i8 %138 to i32
  %140 = ashr i32 %137, %139
  %141 = and i32 %140, 1
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %14, align 8
  store i8 %142, i8* %143, align 1
  br label %144

144:                                              ; preds = %134, %104
  br label %145

145:                                              ; preds = %144, %101
  %146 = load i32, i32* %9, align 4
  ret i32 %146
}

declare dso_local zeroext i8 @CR_RANGE(i32) #1

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
