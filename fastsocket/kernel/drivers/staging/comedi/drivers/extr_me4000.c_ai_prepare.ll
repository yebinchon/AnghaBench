; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_me4000.c_ai_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"In ai_prepare()\0A\00", align 1
@info = common dso_local global %struct.TYPE_4__* null, align 8
@TRIG_EXT = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@TRIG_FOLLOW = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_MODE_1 = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_CHANNEL_FIFO = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_DATA_FIFO = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_MODE_2 = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_MODE_0 = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_HF_IRQ = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_BIT_SC_IRQ = common dso_local global i64 0, align 8
@TRIG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*, i32, i32, i32)* @ai_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_prepare(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_cmd* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store %struct.comedi_cmd* %2, %struct.comedi_cmd** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %14 = call i32 @CALL_PDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @ai_write_timer(%struct.comedi_device* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %21 = load i64, i64* %13, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @me4000_outl(%struct.comedi_device* %20, i64 %21, i32 %25)
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRIG_EXT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %6
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TRIG_TIMER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %40 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TRIG_TIMER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %38, %32, %6
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_EXT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TRIG_FOLLOW, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %58 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TRIG_TIMER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56, %38
  %63 = load i64, i64* @ME4000_AI_CTRL_BIT_MODE_1, align 8
  %64 = load i64, i64* @ME4000_AI_CTRL_BIT_CHANNEL_FIFO, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @ME4000_AI_CTRL_BIT_DATA_FIFO, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %13, align 8
  br label %126

68:                                               ; preds = %56, %50, %44
  %69 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %70 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRIG_EXT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %76 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TRIG_EXT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %82 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TRIG_TIMER, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i64, i64* @ME4000_AI_CTRL_BIT_MODE_2, align 8
  %88 = load i64, i64* @ME4000_AI_CTRL_BIT_CHANNEL_FIFO, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @ME4000_AI_CTRL_BIT_DATA_FIFO, align 8
  %91 = or i64 %89, %90
  store i64 %91, i64* %13, align 8
  br label %125

92:                                               ; preds = %80, %74, %68
  %93 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %94 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TRIG_EXT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %92
  %99 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %100 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TRIG_EXT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRIG_EXT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i64, i64* @ME4000_AI_CTRL_BIT_MODE_0, align 8
  %112 = load i64, i64* @ME4000_AI_CTRL_BIT_MODE_1, align 8
  %113 = or i64 %111, %112
  %114 = load i64, i64* @ME4000_AI_CTRL_BIT_CHANNEL_FIFO, align 8
  %115 = or i64 %113, %114
  %116 = load i64, i64* @ME4000_AI_CTRL_BIT_DATA_FIFO, align 8
  %117 = or i64 %115, %116
  store i64 %117, i64* %13, align 8
  br label %124

118:                                              ; preds = %104, %98, %92
  %119 = load i64, i64* @ME4000_AI_CTRL_BIT_MODE_0, align 8
  %120 = load i64, i64* @ME4000_AI_CTRL_BIT_CHANNEL_FIFO, align 8
  %121 = or i64 %119, %120
  %122 = load i64, i64* @ME4000_AI_CTRL_BIT_DATA_FIFO, align 8
  %123 = or i64 %121, %122
  store i64 %123, i64* %13, align 8
  br label %124

124:                                              ; preds = %118, %110
  br label %125

125:                                              ; preds = %124, %86
  br label %126

126:                                              ; preds = %125, %62
  %127 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %128 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TRIG_COUNT, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %134 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %135 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = mul i64 %136, %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @me4000_outl(%struct.comedi_device* %133, i64 %140, i32 %144)
  %146 = load i64, i64* @ME4000_AI_CTRL_BIT_HF_IRQ, align 8
  %147 = load i64, i64* @ME4000_AI_CTRL_BIT_SC_IRQ, align 8
  %148 = or i64 %146, %147
  %149 = load i64, i64* %13, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %13, align 8
  br label %183

151:                                              ; preds = %126
  %152 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %153 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TRIG_NONE, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %151
  %158 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %159 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TRIG_COUNT, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %157
  %164 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %165 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %166 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @me4000_outl(%struct.comedi_device* %164, i64 %167, i32 %171)
  %173 = load i64, i64* @ME4000_AI_CTRL_BIT_HF_IRQ, align 8
  %174 = load i64, i64* @ME4000_AI_CTRL_BIT_SC_IRQ, align 8
  %175 = or i64 %173, %174
  %176 = load i64, i64* %13, align 8
  %177 = or i64 %176, %175
  store i64 %177, i64* %13, align 8
  br label %182

178:                                              ; preds = %157, %151
  %179 = load i64, i64* @ME4000_AI_CTRL_BIT_HF_IRQ, align 8
  %180 = load i64, i64* %13, align 8
  %181 = or i64 %180, %179
  store i64 %181, i64* %13, align 8
  br label %182

182:                                              ; preds = %178, %163
  br label %183

183:                                              ; preds = %182, %132
  %184 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %185 = load i64, i64* %13, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @info, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @me4000_outl(%struct.comedi_device* %184, i64 %185, i32 %189)
  %191 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %192 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %193 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %194 = call i32 @ai_write_chanlist(%struct.comedi_device* %191, %struct.comedi_subdevice* %192, %struct.comedi_cmd* %193)
  ret i32 0
}

declare dso_local i32 @CALL_PDEBUG(i8*) #1

declare dso_local i32 @ai_write_timer(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @me4000_outl(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @ai_write_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
