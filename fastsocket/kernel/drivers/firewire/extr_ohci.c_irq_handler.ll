; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@OHCI1394_IntEventClear = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@OHCI1394_selfIDComplete = common dso_local global i32 0, align 4
@OHCI1394_RQPkt = common dso_local global i32 0, align 4
@OHCI1394_RSPkt = common dso_local global i32 0, align 4
@OHCI1394_reqTxComplete = common dso_local global i32 0, align 4
@OHCI1394_respTxComplete = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntEventClear = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntEventClear = common dso_local global i32 0, align 4
@OHCI1394_regAccessFail = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Register access failure - please notify linux1394-devel@lists.sf.net\0A\00", align 1
@OHCI1394_postedWriteErr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PCI posted write error\0A\00", align 1
@OHCI1394_cycleTooLong = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"isochronous cycle too long\0A\00", align 1
@OHCI1394_LinkControlSet = common dso_local global i32 0, align 4
@OHCI1394_LinkControl_cycleMaster = common dso_local global i32 0, align 4
@OHCI1394_cycleInconsistent = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"isochronous cycle inconsistent\0A\00", align 1
@OHCI1394_cycle64Seconds = common dso_local global i32 0, align 4
@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fw_ohci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fw_ohci*
  store %struct.fw_ohci* %12, %struct.fw_ohci** %6, align 8
  %13 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %14 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %15 = call i32 @reg_read(%struct.fw_ohci* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, -1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %203

24:                                               ; preds = %18
  %25 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %26 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @OHCI1394_busReset, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @reg_write(%struct.fw_ohci* %25, i32 %26, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @log_irqs(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @OHCI1394_selfIDComplete, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %40 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %39, i32 0, i32 7
  %41 = call i32 @tasklet_schedule(i32* %40)
  br label %42

42:                                               ; preds = %38, %24
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @OHCI1394_RQPkt, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %49 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = call i32 @tasklet_schedule(i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @OHCI1394_RSPkt, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %59 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = call i32 @tasklet_schedule(i32* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @OHCI1394_reqTxComplete, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %69 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = call i32 @tasklet_schedule(i32* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @OHCI1394_respTxComplete, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %79 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = call i32 @tasklet_schedule(i32* %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %84 = load i32, i32* @OHCI1394_IsoRecvIntEventClear, align 4
  %85 = call i32 @reg_read(%struct.fw_ohci* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %87 = load i32, i32* @OHCI1394_IsoRecvIntEventClear, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @reg_write(%struct.fw_ohci* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %93, %82
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @ffs(i32 %94)
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %98 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %97, i32 0, i32 2
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = call i32 @tasklet_schedule(i32* %104)
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 1, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %8, align 4
  br label %90

111:                                              ; preds = %90
  %112 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %113 = load i32, i32* @OHCI1394_IsoXmitIntEventClear, align 4
  %114 = call i32 @reg_read(%struct.fw_ohci* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %116 = load i32, i32* @OHCI1394_IsoXmitIntEventClear, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @reg_write(%struct.fw_ohci* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %122, %111
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @ffs(i32 %123)
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %127 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %126, i32 0, i32 1
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = call i32 @tasklet_schedule(i32* %133)
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 1, %135
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %8, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %119

140:                                              ; preds = %119
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @OHCI1394_regAccessFail, align 4
  %143 = and i32 %141, %142
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = call i32 @fw_error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %140
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @OHCI1394_postedWriteErr, align 4
  %151 = and i32 %149, %150
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = call i32 @fw_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %148
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @OHCI1394_cycleTooLong, align 4
  %159 = and i32 %157, %158
  %160 = call i64 @unlikely(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %156
  %163 = call i64 (...) @printk_ratelimit()
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = call i32 @fw_notify(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %162
  %168 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %169 = load i32, i32* @OHCI1394_LinkControlSet, align 4
  %170 = load i32, i32* @OHCI1394_LinkControl_cycleMaster, align 4
  %171 = call i32 @reg_write(%struct.fw_ohci* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %167, %156
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @OHCI1394_cycleInconsistent, align 4
  %175 = and i32 %173, %174
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = call i64 (...) @printk_ratelimit()
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 @fw_notify(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %178
  br label %184

184:                                              ; preds = %183, %172
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @OHCI1394_cycle64Seconds, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %191 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %192 = call i32 @reg_read(%struct.fw_ohci* %190, i32 %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = and i32 %193, -2147483648
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %189
  %197 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %198 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %197, i32 0, i32 0
  %199 = call i32 @atomic_inc(i32* %198)
  br label %200

200:                                              ; preds = %196, %189
  br label %201

201:                                              ; preds = %200, %184
  %202 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %22
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @log_irqs(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fw_error(i8*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @fw_notify(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
