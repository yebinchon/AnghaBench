; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpfe_capture.c_vpfe_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (...)*, i32 (i64)*, i32 (...)* }
%struct.vpfe_device = type { i64, i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\0AStarting vpfe_isr...\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ccdc_dev = common dso_local global %struct.TYPE_10__* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"frame format is progressive...\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"field id = %x:%x.\0A\00", align 1
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vpfe_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vpfe_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vpfe_device*
  store %struct.vpfe_device* %11, %struct.vpfe_device** %6, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %14 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %13, i32 0, i32 6
  %15 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %12, i32* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %17 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %23 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %3, align 4
  br label %153

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32 (...)*, i32 (...)** %31, align 8
  %33 = icmp ne i32 (...)* null, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i32 (...)*, i32 (...)** %37, align 8
  %39 = call i32 (...) %38()
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* @debug, align 4
  %46 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %47 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %46, i32 0, i32 6
  %48 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %45, i32* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %50 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %53 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %58 = call i32 @vpfe_process_buffer_complete(%struct.vpfe_device* %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %60, i32* %3, align 4
  br label %153

61:                                               ; preds = %40
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32 (...)*, i32 (...)** %64, align 8
  %66 = call i32 (...) %65()
  store i32 %66, i32* %9, align 4
  %67 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %68 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = xor i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @debug, align 4
  %72 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %73 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %72, i32 0, i32 6
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %76 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 1, i32 %71, i32* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %81 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %143

84:                                               ; preds = %61
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %120

87:                                               ; preds = %84
  %88 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %89 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %92 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %97 = call i32 @vpfe_process_buffer_complete(%struct.vpfe_device* %96)
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %104 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @videobuf_to_dma_contig(i64 %105)
  store i64 %106, i64* %8, align 8
  %107 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %108 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %8, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %8, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ccdc_dev, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32 (i64)*, i32 (i64)** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 %115(i64 %116)
  br label %118

118:                                              ; preds = %102, %98
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %153

120:                                              ; preds = %84
  %121 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %122 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %121, i32 0, i32 3
  %123 = call i32 @spin_lock(i32* %122)
  %124 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %125 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %124, i32 0, i32 4
  %126 = call i32 @list_empty(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %120
  %129 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %130 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %133 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %138 = call i32 @vpfe_schedule_next_buffer(%struct.vpfe_device* %137)
  br label %139

139:                                              ; preds = %136, %128, %120
  %140 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %141 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %140, i32 0, i32 3
  %142 = call i32 @spin_unlock(i32* %141)
  br label %151

143:                                              ; preds = %61
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.vpfe_device*, %struct.vpfe_device** %6, align 8
  %149 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %143
  br label %151

151:                                              ; preds = %150, %139
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %118, %59, %26
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @vpfe_process_buffer_complete(%struct.vpfe_device*) #1

declare dso_local i64 @videobuf_to_dma_contig(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @vpfe_schedule_next_buffer(%struct.vpfe_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
