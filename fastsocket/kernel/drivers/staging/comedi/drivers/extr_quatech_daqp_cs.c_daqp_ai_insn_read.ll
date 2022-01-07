; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_quatech_daqp_cs.c_daqp_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i64 }
%struct.comedi_insn = type { i32, i32 }
%struct.local_info_t = type { i32, %struct.comedi_subdevice*, %struct.comedi_device*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@DAQP_AUX = common dso_local global i64 0, align 8
@DAQP_COMMAND_RSTQ = common dso_local global i32 0, align 4
@DAQP_COMMAND = common dso_local global i64 0, align 8
@AREF_DIFF = common dso_local global i64 0, align 8
@DAQP_SCANLIST_DIFFERENTIAL = common dso_local global i32 0, align 4
@DAQP_SCANLIST_START = common dso_local global i32 0, align 4
@DAQP_SCANLIST = common dso_local global i64 0, align 8
@DAQP_COMMAND_RSTF = common dso_local global i32 0, align 4
@DAQP_CONTROL_TRIGGER_ONESHOT = common dso_local global i32 0, align 4
@DAQP_CONTROL_TRIGGER_INTERNAL = common dso_local global i32 0, align 4
@DAQP_CONTROL_PACER_100kHz = common dso_local global i32 0, align 4
@DAQP_CONTROL_EOS_INT_ENABLE = common dso_local global i32 0, align 4
@DAQP_CONTROL = common dso_local global i64 0, align 8
@DAQP_STATUS = common dso_local global i64 0, align 8
@DAQP_STATUS_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"daqp: couldn't clear interrupts in status register\0A\00", align 1
@semaphore = common dso_local global i32 0, align 4
@DAQP_COMMAND_ARM = common dso_local global i32 0, align 4
@DAQP_COMMAND_FIFO_DATA = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@DAQP_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @daqp_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqp_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.local_info_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.local_info_t*
  store %struct.local_info_t* %17, %struct.local_info_t** %10, align 8
  store i32 10000, i32* %13, align 4
  %18 = load %struct.local_info_t*, %struct.local_info_t** %10, align 8
  %19 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %199

25:                                               ; preds = %4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = call i32 @daqp_ai_cancel(%struct.comedi_device* %26, %struct.comedi_subdevice* %27)
  %29 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %30 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DAQP_AUX, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb(i32 0, i64 %33)
  %35 = load i32, i32* @DAQP_COMMAND_RSTQ, align 4
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DAQP_COMMAND, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %43 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @CR_CHAN(i32 %44)
  %46 = call i32 @DAQP_SCANLIST_CHANNEL(i32 %45)
  %47 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %48 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CR_RANGE(i32 %49)
  %51 = call i32 @DAQP_SCANLIST_GAIN(i32 %50)
  %52 = or i32 %46, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %54 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @CR_AREF(i32 %55)
  %57 = load i64, i64* @AREF_DIFF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %25
  %60 = load i32, i32* @DAQP_SCANLIST_DIFFERENTIAL, align 4
  %61 = load i32, i32* %12, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %59, %25
  %64 = load i32, i32* @DAQP_SCANLIST_START, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 255
  %69 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %70 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @DAQP_SCANLIST, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %68, i64 %73)
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 8
  %77 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %78 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DAQP_SCANLIST, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @outb(i32 %76, i64 %81)
  %83 = load i32, i32* @DAQP_COMMAND_RSTF, align 4
  %84 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @DAQP_COMMAND, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outb(i32 %83, i64 %88)
  %90 = load i32, i32* @DAQP_CONTROL_TRIGGER_ONESHOT, align 4
  %91 = load i32, i32* @DAQP_CONTROL_TRIGGER_INTERNAL, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @DAQP_CONTROL_PACER_100kHz, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @DAQP_CONTROL_EOS_INT_ENABLE, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %99 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @DAQP_CONTROL, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i32 %97, i64 %102)
  br label %104

104:                                              ; preds = %120, %63
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DAQP_STATUS, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @inb(i64 %113)
  %115 = load i32, i32* @DAQP_STATUS_EVENTS, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %108, %104
  %119 = phi i1 [ false, %104 ], [ %117, %108 ]
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  br label %104

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %199

126:                                              ; preds = %121
  %127 = load %struct.local_info_t*, %struct.local_info_t** %10, align 8
  %128 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %127, i32 0, i32 0
  %129 = call i32 @sema_init(i32* %128, i32 0)
  %130 = load i32, i32* @semaphore, align 4
  %131 = load %struct.local_info_t*, %struct.local_info_t** %10, align 8
  %132 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 8
  %133 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %134 = load %struct.local_info_t*, %struct.local_info_t** %10, align 8
  %135 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %134, i32 0, i32 2
  store %struct.comedi_device* %133, %struct.comedi_device** %135, align 8
  %136 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %137 = load %struct.local_info_t*, %struct.local_info_t** %10, align 8
  %138 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %137, i32 0, i32 1
  store %struct.comedi_subdevice* %136, %struct.comedi_subdevice** %138, align 8
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %192, %126
  %140 = load i32, i32* %11, align 4
  %141 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %142 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %195

145:                                              ; preds = %139
  %146 = load i32, i32* @DAQP_COMMAND_ARM, align 4
  %147 = load i32, i32* @DAQP_COMMAND_FIFO_DATA, align 4
  %148 = or i32 %146, %147
  %149 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %150 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DAQP_COMMAND, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @outb(i32 %148, i64 %153)
  %155 = load %struct.local_info_t*, %struct.local_info_t** %10, align 8
  %156 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %155, i32 0, i32 0
  %157 = call i64 @down_interruptible(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %145
  %160 = load i32, i32* @EINTR, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %199

162:                                              ; preds = %145
  %163 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %164 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @DAQP_FIFO, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @inb(i64 %167)
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  %173 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %174 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @DAQP_FIFO, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @inb(i64 %177)
  %179 = shl i32 %178, 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %179
  store i32 %185, i32* %183, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = xor i32 %190, 32768
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %162
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %11, align 4
  br label %139

195:                                              ; preds = %139
  %196 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %197 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %195, %159, %124, %22
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @daqp_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DAQP_SCANLIST_CHANNEL(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @DAQP_SCANLIST_GAIN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @CR_AREF(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i64 @down_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
