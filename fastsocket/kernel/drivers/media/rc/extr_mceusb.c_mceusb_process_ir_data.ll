; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_process_ir_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_process_ir_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.mceusb_dev = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@rawir = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@MCE_PULSE_BIT = common dso_local global i32 0, align 4
@MCE_PULSE_MASK = common dso_local global i32 0, align 4
@MCE_TIME_UNIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Storing %s with duration %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pulse\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@MCE_COMMAND_HEADER = common dso_local global i32 0, align 4
@MCE_COMMAND_MASK = common dso_local global i32 0, align 4
@MCE_COMMAND_IRDATA = common dso_local global i32 0, align 4
@MCE_PACKET_LENGTH_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"processed IR data, calling ir_raw_event_handle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, i32)* @mceusb_process_ir_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mceusb_process_ir_data(%struct.mceusb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* bitcast (%struct.TYPE_7__* @rawir to i64*), align 4
  %7 = call i32 @DEFINE_IR_RAW_EVENT(i64 %6)
  store i32 0, i32* %5, align 4
  %8 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %188

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %176, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %179

24:                                               ; preds = %20
  %25 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %162 [
    i32 128, label %28
    i32 129, label %58
    i32 131, label %100
    i32 130, label %105
  ]

28:                                               ; preds = %24
  %29 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mceusb_cmdsize(i32 %31, i32 %38)
  %40 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %43 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 2
  %52 = call i32 @mceusb_dev_printdata(%struct.mceusb_dev* %42, i32* %45, i32 %47, i32 %51, i32 0)
  %53 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mceusb_handle_command(%struct.mceusb_dev* %53, i32 %54)
  %56 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %56, i32 0, i32 0
  store i32 131, i32* %57, align 8
  br label %162

58:                                               ; preds = %24
  %59 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = call i32 @init_ir_raw_event(%struct.TYPE_7__* @rawir)
  %64 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MCE_PULSE_BIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rawir, i32 0, i32 0), align 4
  %75 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MCE_PULSE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @MCE_TIME_UNIT, align 4
  %85 = call i32 @US_TO_NS(i32 %84)
  %86 = mul nsw i32 %83, %85
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rawir, i32 0, i32 1), align 4
  %87 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %88 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rawir, i32 0, i32 0), align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rawir, i32 0, i32 1), align 4
  %95 = call i32 (i32, i8*, ...) @dev_dbg(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %93, i32 %94)
  %96 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %97 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ir_raw_event_store_with_filter(i32 %98, %struct.TYPE_7__* @rawir)
  br label %162

100:                                              ; preds = %24
  %101 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %102 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 4
  br label %162

105:                                              ; preds = %24
  %106 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %107 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %116 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MCE_COMMAND_HEADER, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %105
  %121 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %122 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MCE_COMMAND_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @MCE_COMMAND_IRDATA, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120, %105
  %129 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %130 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %129, i32 0, i32 0
  store i32 128, i32* %130, align 8
  br label %176

131:                                              ; preds = %120
  %132 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %133 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MCE_PACKET_LENGTH_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %138 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %140 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %141 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %145 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = call i32 @mceusb_dev_printdata(%struct.mceusb_dev* %139, i32* %142, i32 %143, i32 %147, i32 0)
  %149 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %150 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %131
  %154 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %155 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %154, i32 0, i32 0
  store i32 129, i32* %155, align 8
  br label %161

156:                                              ; preds = %131
  %157 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %158 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ir_raw_event_reset(i32 %159)
  br label %161

161:                                              ; preds = %156, %153
  br label %162

162:                                              ; preds = %24, %161, %100, %58, %28
  %163 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %164 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 130
  br i1 %166, label %167, label %175

167:                                              ; preds = %162
  %168 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %169 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %174 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %173, i32 0, i32 0
  store i32 130, i32* %174, align 8
  br label %175

175:                                              ; preds = %172, %167, %162
  br label %176

176:                                              ; preds = %175, %128
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %5, align 4
  br label %20

179:                                              ; preds = %20
  %180 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %181 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @dev_dbg(i32 %182, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %184 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %185 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @ir_raw_event_handle(i32 %186)
  br label %188

188:                                              ; preds = %179, %18
  ret void
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i64) #1

declare dso_local i32 @mceusb_cmdsize(i32, i32) #1

declare dso_local i32 @mceusb_dev_printdata(%struct.mceusb_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @mceusb_handle_command(%struct.mceusb_dev*, i32) #1

declare dso_local i32 @init_ir_raw_event(%struct.TYPE_7__*) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ir_raw_event_store_with_filter(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
