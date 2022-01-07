; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Tor.c_i_APCI1710_InsnReadGetTorCounterInitialisation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_addi-dataAPCI1710_Tor.c_i_APCI1710_InsnReadGetTorCounterInitialisation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8, i32 }
%struct.TYPE_6__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@APCI1710_TOR_COUNTER = common dso_local global i32 0, align 4
@APCI1710_TOR_SIMPLE_MODE = common dso_local global i8 0, align 1
@APCI1710_TOR_DOUBLE_MODE = common dso_local global i8 0, align 1
@APCI1710_TOR_QUADRUPLE_MODE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [29 x i8] c"Tor counter not initialised\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Tor counter selection is wrong \0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"The module is not a tor counter module\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Module number error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i_APCI1710_InsnReadGetTorCounterInitialisation(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call zeroext i8 @CR_AREF(i32 %25)
  store i8 %26, i8* %11, align 1
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call zeroext i8 @CR_CHAN(i32 %29)
  store i8 %30, i8* %12, align 1
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %13, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32* %35, i32** %14, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = bitcast i32* %37 to i8*
  store i8* %38, i8** %15, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = bitcast i32* %40 to i8*
  store i8* %41, i8** %16, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %17, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %18, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** %19, align 8
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %207

54:                                               ; preds = %4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = and i64 %63, 4294901760
  %65 = load i32, i32* @APCI1710_TOR_COUNTER, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %204

68:                                               ; preds = %54
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %72, label %201

72:                                               ; preds = %68
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 8
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = mul nsw i32 16, %79
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %77, %81
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = mul nsw i32 64, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %82, %86
  %88 = call i32 @inl(i64 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %198

92:                                               ; preds = %72
  %93 = load i32, i32* %10, align 4
  %94 = and i32 %93, 1
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %18, align 8
  store i8 %95, i8* %96, align 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 4
  %102 = load i8, i8* %12, align 1
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 16, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = load i8, i8* %11, align 1
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 64, %108
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %106, %110
  %112 = call i32 @inl(i64 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = lshr i32 %113, 4
  %115 = and i32 %114, 1
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %17, align 8
  store i8 %116, i8* %117, align 1
  %118 = load i32, i32* %10, align 4
  %119 = lshr i32 %118, 5
  %120 = and i32 %119, 1
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %19, align 8
  store i8 %121, i8* %122, align 1
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 1536
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %156

126:                                              ; preds = %92
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, 1024
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %126
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 30720
  %133 = icmp eq i32 %132, 30720
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i8, i8* @APCI1710_TOR_SIMPLE_MODE, align 1
  %136 = load i8*, i8** %15, align 8
  store i8 %135, i8* %136, align 1
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* %10, align 4
  %139 = and i32 %138, 30720
  %140 = icmp eq i32 %139, 6144
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i8, i8* @APCI1710_TOR_DOUBLE_MODE, align 1
  %143 = load i8*, i8** %15, align 8
  store i8 %142, i8* %143, align 1
  br label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %10, align 4
  %146 = and i32 %145, 30720
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i8, i8* @APCI1710_TOR_QUADRUPLE_MODE, align 1
  %150 = load i8*, i8** %15, align 8
  store i8 %149, i8* %150, align 1
  br label %151

151:                                              ; preds = %148, %144
  br label %154

152:                                              ; preds = %126
  %153 = load i8*, i8** %15, align 8
  store i8 1, i8* %153, align 1
  br label %154

154:                                              ; preds = %152, %151
  %155 = load i8*, i8** %16, align 8
  store i8 0, i8* %155, align 1
  br label %167

156:                                              ; preds = %92
  %157 = load i32, i32* %10, align 4
  %158 = lshr i32 %157, 6
  %159 = and i32 %158, 1
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %15, align 8
  store i8 %160, i8* %161, align 1
  %162 = load i32, i32* %10, align 4
  %163 = lshr i32 %162, 7
  %164 = and i32 %163, 1
  %165 = trunc i32 %164 to i8
  %166 = load i8*, i8** %16, align 8
  store i8 %165, i8* %166, align 1
  br label %167

167:                                              ; preds = %156, %154
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i8, i8* %11, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = load i8, i8* %12, align 1
  %178 = zext i8 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 4
  %182 = load i8*, i8** %13, align 8
  store i8 %181, i8* %182, align 1
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = load i8, i8* %11, align 1
  %187 = zext i8 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i8, i8* %12, align 1
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %14, align 8
  store i32 %196, i32* %197, align 4
  br label %200

198:                                              ; preds = %72
  %199 = call i32 @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -5, i32* %9, align 4
  br label %200

200:                                              ; preds = %198, %167
  br label %203

201:                                              ; preds = %68
  %202 = call i32 @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 -4, i32* %9, align 4
  br label %203

203:                                              ; preds = %201, %200
  br label %206

204:                                              ; preds = %54
  %205 = call i32 @DPRINTK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 -3, i32* %9, align 4
  br label %206

206:                                              ; preds = %204, %203
  br label %209

207:                                              ; preds = %4
  %208 = call i32 @DPRINTK(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %9, align 4
  br label %209

209:                                              ; preds = %207, %206
  %210 = load i32, i32* %9, align 4
  ret i32 %210
}

declare dso_local zeroext i8 @CR_AREF(i32) #1

declare dso_local zeroext i8 @CR_CHAN(i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
