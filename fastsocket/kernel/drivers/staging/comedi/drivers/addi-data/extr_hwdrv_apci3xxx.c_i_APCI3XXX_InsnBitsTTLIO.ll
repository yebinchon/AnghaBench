; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnBitsTTLIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/addi-data/extr_hwdrv_apci3xxx.c_i_APCI3XXX_InsnBitsTTLIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Channel mask error\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Buffer size error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI3XXX_InsnBitsTTLIO(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
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
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %19, 2
  br i1 %20, label %21, label %206

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, -16711936
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %203

31:                                               ; preds = %21
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %51, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %203

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 16711680
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %203

51:                                               ; preds = %47, %31
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %149

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 255
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %54
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 80
  %63 = call i32 @inl(i64 %62)
  store i32 %63, i32* %13, align 4
  store i8 0, i8* %10, align 1
  br label %64

64:                                               ; preds = %89, %58
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = lshr i32 %69, %71
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load i32, i32* %13, align 4
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 1, %78
  %80 = sub nsw i32 255, %79
  %81 = and i32 %76, %80
  %82 = load i32, i32* %12, align 4
  %83 = load i8, i8* %10, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 1, %84
  %86 = and i32 %82, %85
  %87 = or i32 %81, %86
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %75, %68
  br label %89

89:                                               ; preds = %88
  %90 = load i8, i8* %10, align 1
  %91 = add i8 %90, 1
  store i8 %91, i8* %10, align 1
  br label %64

92:                                               ; preds = %64
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 80
  %98 = call i32 @outl(i32 %93, i64 %97)
  br label %99

99:                                               ; preds = %92, %54
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 16711680
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %148

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = lshr i32 %104, 16
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %11, align 4
  %107 = lshr i32 %106, 16
  store i32 %107, i32* %11, align 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 112
  %112 = call i32 @inl(i64 %111)
  store i32 %112, i32* %13, align 4
  store i8 0, i8* %10, align 1
  br label %113

113:                                              ; preds = %138, %103
  %114 = load i8, i8* %10, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp slt i32 %115, 8
  br i1 %116, label %117, label %141

117:                                              ; preds = %113
  %118 = load i32, i32* %11, align 4
  %119 = load i8, i8* %10, align 1
  %120 = zext i8 %119 to i32
  %121 = lshr i32 %118, %120
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load i32, i32* %13, align 4
  %126 = load i8, i8* %10, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 1, %127
  %129 = sub nsw i32 255, %128
  %130 = and i32 %125, %129
  %131 = load i32, i32* %12, align 4
  %132 = load i8, i8* %10, align 1
  %133 = zext i8 %132 to i32
  %134 = shl i32 1, %133
  %135 = and i32 %131, %134
  %136 = or i32 %130, %135
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %124, %117
  br label %138

138:                                              ; preds = %137
  %139 = load i8, i8* %10, align 1
  %140 = add i8 %139, 1
  store i8 %140, i8* %10, align 1
  br label %113

141:                                              ; preds = %113
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 112
  %147 = call i32 @outl(i32 %142, i64 %146)
  br label %148

148:                                              ; preds = %141, %99
  br label %149

149:                                              ; preds = %148, %51
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 80
  %154 = call i32 @inl(i64 %153)
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %154, i32* %156, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 64
  %164 = call i32 @inl(i64 %163)
  %165 = shl i32 %164, 8
  %166 = or i32 %159, %165
  %167 = load i32*, i32** %8, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 255
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %149
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 96
  %184 = call i32 @inl(i64 %183)
  %185 = shl i32 %184, 16
  %186 = or i32 %179, %185
  %187 = load i32*, i32** %8, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  store i32 %186, i32* %188, align 4
  br label %202

189:                                              ; preds = %149
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %195, 112
  %197 = call i32 @inl(i64 %196)
  %198 = shl i32 %197, 16
  %199 = or i32 %192, %198
  %200 = load i32*, i32** %8, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %189, %176
  br label %205

203:                                              ; preds = %47, %39, %21
  %204 = call i32 @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %205

205:                                              ; preds = %203, %202
  br label %208

206:                                              ; preds = %4
  %207 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -101, i32* %9, align 4
  br label %208

208:                                              ; preds = %206, %205
  %209 = load i32, i32* %9, align 4
  ret i32 %209
}

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
