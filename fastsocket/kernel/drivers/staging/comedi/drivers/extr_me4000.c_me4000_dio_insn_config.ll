; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_me4000_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_me4000_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"In me4000_dio_insn_config()\0A\00", align 1
@INSN_CONFIG_DIO_QUERY = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@info = common dso_local global %struct.TYPE_4__* null, align 8
@ME4000_DIO_CTRL_BIT_MODE_0 = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_BIT_MODE_1 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ME4000_DIO_CTRL_BIT_MODE_2 = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_BIT_MODE_3 = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_BIT_MODE_4 = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_BIT_MODE_5 = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_BIT_MODE_6 = common dso_local global i64 0, align 8
@ME4000_DIO_CTRL_BIT_MODE_7 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @me4000_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %9, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @INSN_CONFIG_DIO_QUERY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @COMEDI_INPUT, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %39 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %221

41:                                               ; preds = %4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @me4000_inl(%struct.comedi_device* %42, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @COMEDI_OUTPUT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %139

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %58 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, 255
  store i32 %60, i32* %58, align 4
  %61 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_0, align 8
  %62 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_1, align 8
  %63 = or i64 %61, %62
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %10, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_0, align 8
  %68 = load i64, i64* %10, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %10, align 8
  br label %138

70:                                               ; preds = %53
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 16
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @me4000_inl(%struct.comedi_device* %74, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %221

84:                                               ; preds = %73
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 65280
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_2, align 8
  %90 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_3, align 8
  %91 = or i64 %89, %90
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %10, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_2, align 8
  %96 = load i64, i64* %10, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %10, align 8
  br label %137

98:                                               ; preds = %70
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 24
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, 16711680
  store i32 %105, i32* %103, align 4
  %106 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_4, align 8
  %107 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_5, align 8
  %108 = or i64 %106, %107
  %109 = xor i64 %108, -1
  %110 = load i64, i64* %10, align 8
  %111 = and i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %10, align 8
  br label %136

115:                                              ; preds = %98
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 32
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, -16777216
  store i32 %122, i32* %120, align 4
  %123 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_6, align 8
  %124 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_7, align 8
  %125 = or i64 %123, %124
  %126 = xor i64 %125, -1
  %127 = load i64, i64* %10, align 8
  %128 = and i64 %127, %126
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_6, align 8
  %130 = load i64, i64* %10, align 8
  %131 = or i64 %130, %129
  store i64 %131, i64* %10, align 8
  br label %135

132:                                              ; preds = %115
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %221

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135, %101
  br label %137

137:                                              ; preds = %136, %84
  br label %138

138:                                              ; preds = %137, %56
  br label %213

139:                                              ; preds = %41
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 8
  br i1 %141, label %142, label %164

142:                                              ; preds = %139
  %143 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @me4000_inl(%struct.comedi_device* %143, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %221

153:                                              ; preds = %142
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %155 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, -256
  store i32 %157, i32* %155, align 4
  %158 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_0, align 8
  %159 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_1, align 8
  %160 = or i64 %158, %159
  %161 = xor i64 %160, -1
  %162 = load i64, i64* %10, align 8
  %163 = and i64 %162, %161
  store i64 %163, i64* %10, align 8
  br label %212

164:                                              ; preds = %139
  %165 = load i32, i32* %11, align 4
  %166 = icmp slt i32 %165, 16
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %169 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, -65281
  store i32 %171, i32* %169, align 4
  %172 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_2, align 8
  %173 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_3, align 8
  %174 = or i64 %172, %173
  %175 = xor i64 %174, -1
  %176 = load i64, i64* %10, align 8
  %177 = and i64 %176, %175
  store i64 %177, i64* %10, align 8
  br label %211

178:                                              ; preds = %164
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %179, 24
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %183 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, -16711681
  store i32 %185, i32* %183, align 4
  %186 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_4, align 8
  %187 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_5, align 8
  %188 = or i64 %186, %187
  %189 = xor i64 %188, -1
  %190 = load i64, i64* %10, align 8
  %191 = and i64 %190, %189
  store i64 %191, i64* %10, align 8
  br label %210

192:                                              ; preds = %178
  %193 = load i32, i32* %11, align 4
  %194 = icmp slt i32 %193, 32
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %197 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 16777215
  store i32 %199, i32* %197, align 4
  %200 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_6, align 8
  %201 = load i64, i64* @ME4000_DIO_CTRL_BIT_MODE_7, align 8
  %202 = or i64 %200, %201
  %203 = xor i64 %202, -1
  %204 = load i64, i64* %10, align 8
  %205 = and i64 %204, %203
  store i64 %205, i64* %10, align 8
  br label %209

206:                                              ; preds = %192
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %5, align 4
  br label %221

209:                                              ; preds = %195
  br label %210

210:                                              ; preds = %209, %181
  br label %211

211:                                              ; preds = %210, %167
  br label %212

212:                                              ; preds = %211, %153
  br label %213

213:                                              ; preds = %212, %138
  %214 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %215 = load i64, i64* %10, align 8
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @me4000_outl(%struct.comedi_device* %214, i64 %215, i32 %219)
  store i32 1, i32* %5, align 4
  br label %221

221:                                              ; preds = %213, %206, %150, %132, %81, %34
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i64 @me4000_inl(%struct.comedi_device*, i32) #1

declare dso_local i32 @me4000_outl(%struct.comedi_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
