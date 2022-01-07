; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das16m1.c_das16m1_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.comedi_device = type { i64, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [35 x i8] c"irq required to execute comedi_cmd\00", align 1
@INTE = common dso_local global i32 0, align 4
@PACER_MASK = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@DAS16M1_INTR_CONTROL = common dso_local global i64 0, align 8
@DAS16M1_8254_FIRST = common dso_local global i64 0, align 8
@DAS16M1_QUEUE_ADDR = common dso_local global i64 0, align 8
@DAS16M1_QUEUE_DATA = common dso_local global i64 0, align 8
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@TRIG_EXT = common dso_local global i64 0, align 8
@EXT_TRIG_BIT = common dso_local global i32 0, align 4
@DAS16M1_CS = common dso_local global i64 0, align 8
@DAS16M1_CLEAR_INTR = common dso_local global i64 0, align 8
@TRIG_TIMER = common dso_local global i64 0, align 8
@INT_PACER = common dso_local global i32 0, align 4
@EXT_PACER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das16m1_cmd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16m1_cmd_exec(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %6, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call i32 @comedi_error(%struct.comedi_device* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %180

22:                                               ; preds = %2
  %23 = load i32, i32* @INTE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* @PACER_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DAS16M1_INTR_CONTROL, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outb(i32 %34, i64 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DAS16M1_8254_FIRST, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @i8254_load(i64 %47, i32 0, i32 1, i32 0, i32 2)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DAS16M1_8254_FIRST, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @i8254_read(i64 %53, i32 0, i32 1)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %97, %22
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %60 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %66 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DAS16M1_QUEUE_ADDR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outb(i32 %64, i64 %69)
  %71 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CR_CHAN(i32 %77)
  %79 = call i32 @Q_CHAN(i32 %78)
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @CR_RANGE(i32 %86)
  %88 = call i32 @Q_RANGE(i32 %87)
  %89 = or i32 %79, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DAS16M1_QUEUE_DATA, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i32 %90, i64 %95)
  br label %97

97:                                               ; preds = %63
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %57

100:                                              ; preds = %57
  %101 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %102 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %103 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %109 = and i32 %107, %108
  %110 = call i32 @das16m1_set_pacer(%struct.comedi_device* %101, i32 %104, i32 %109)
  %111 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %112 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %8, align 4
  %113 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %114 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TRIG_EXT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %100
  %119 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %120 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @TRIG_EXT, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load i32, i32* @EXT_TRIG_BIT, align 4
  %126 = load i32, i32* %8, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %118, %100
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DAS16M1_CS, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @outb(i32 %129, i64 %134)
  %136 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %137 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @DAS16M1_CLEAR_INTR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outb(i32 0, i64 %140)
  %142 = load i32, i32* @PACER_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %149 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TRIG_TIMER, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %128
  %154 = load i32, i32* @INT_PACER, align 4
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %165

159:                                              ; preds = %128
  %160 = load i32, i32* @EXT_PACER, align 4
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 8
  br label %165

165:                                              ; preds = %159, %153
  %166 = load i32, i32* @INTE, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %175 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DAS16M1_INTR_CONTROL, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @outb(i32 %173, i64 %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %165, %19
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @i8254_load(i64, i32, i32, i32, i32) #1

declare dso_local i32 @i8254_read(i64, i32, i32) #1

declare dso_local i32 @Q_CHAN(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @Q_RANGE(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @das16m1_set_pacer(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
