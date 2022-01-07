; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_bind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@LDC_STATE_INIT = common dso_local global i64 0, align 8
@LDC_IRQ_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s RX\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s TX\00", align 1
@ldc_rx = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@ldc_tx = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_IRQS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_QUEUES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LDC_HS_OPEN = common dso_local global i32 0, align 4
@LDC_STATE_BOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldc_bind(%struct.ldc_channel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ldc_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ldc_channel* %0, %struct.ldc_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LDC_STATE_INIT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %218

22:                                               ; preds = %13
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 15
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LDC_IRQ_NAME_MAX, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @snprintf(i32 %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %30 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LDC_IRQ_NAME_MAX, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %36 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ldc_rx, align 4
  %40 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %41 = load i32, i32* @IRQF_DISABLED, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %47 = call i32 @request_irq(i32 %38, i32 %39, i32 %42, i32 %45, %struct.ldc_channel* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %218

52:                                               ; preds = %22
  %53 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %54 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ldc_tx, align 4
  %58 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %59 = load i32, i32* @IRQF_DISABLED, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %62 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %65 = call i32 @request_irq(i32 %56, i32 %57, i32 %60, i32 %63, %struct.ldc_channel* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %52
  %69 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %70 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.ldc_channel* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %218

76:                                               ; preds = %52
  %77 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %78 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %77, i32 0, i32 1
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %82 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @enable_irq(i32 %84)
  %86 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %87 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @enable_irq(i32 %89)
  %91 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %92 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %93 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  %98 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %99 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @sun4v_ldc_tx_qconf(i32 %100, i32 0, i32 0)
  store i64 %101, i64* %6, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %76
  br label %194

105:                                              ; preds = %76
  %106 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %107 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %110 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %113 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %112, i32 0, i32 12
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @sun4v_ldc_tx_qconf(i32 %108, i32 %111, i32 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %105
  br label %194

119:                                              ; preds = %105
  %120 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %121 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @sun4v_ldc_rx_qconf(i32 %122, i32 0, i32 0)
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %6, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %189

127:                                              ; preds = %119
  %128 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %129 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %132 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %135 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %134, i32 0, i32 10
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @sun4v_ldc_rx_qconf(i32 %130, i32 %133, i32 %136)
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %189

141:                                              ; preds = %127
  %142 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %143 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %144 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %148 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %151 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %150, i32 0, i32 6
  %152 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %153 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %152, i32 0, i32 9
  %154 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %155 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %154, i32 0, i32 8
  %156 = call i64 @sun4v_ldc_tx_get_state(i32 %149, i32* %151, i32* %153, i32* %155)
  store i64 %156, i64* %6, align 8
  %157 = load i32, i32* @EBUSY, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  %159 = load i64, i64* %6, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %141
  br label %178

162:                                              ; preds = %141
  %163 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %164 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %167 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %166, i32 0, i32 7
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @LDC_HS_OPEN, align 4
  %169 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %170 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %172 = load i32, i32* @LDC_STATE_BOUND, align 4
  %173 = call i32 @ldc_set_state(%struct.ldc_channel* %171, i32 %172)
  %174 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %175 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %174, i32 0, i32 1
  %176 = load i64, i64* %7, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  store i32 0, i32* %3, align 4
  br label %218

178:                                              ; preds = %161
  %179 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %180 = xor i32 %179, -1
  %181 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %182 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %186 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @sun4v_ldc_rx_qconf(i32 %187, i32 0, i32 0)
  br label %189

189:                                              ; preds = %178, %140, %126
  %190 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %191 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @sun4v_ldc_tx_qconf(i32 %192, i32 0, i32 0)
  br label %194

194:                                              ; preds = %189, %118, %104
  %195 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %198 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 4
  %201 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %202 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %206 = call i32 @free_irq(i32 %204, %struct.ldc_channel* %205)
  %207 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %208 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %212 = call i32 @free_irq(i32 %210, %struct.ldc_channel* %211)
  %213 = load %struct.ldc_channel*, %struct.ldc_channel** %4, align 8
  %214 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %213, i32 0, i32 1
  %215 = load i64, i64* %7, align 8
  %216 = call i32 @spin_unlock_irqrestore(i32* %214, i64 %215)
  %217 = load i32, i32* %8, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %194, %162, %68, %50, %19
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ldc_channel*) #1

declare dso_local i32 @free_irq(i32, %struct.ldc_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @sun4v_ldc_tx_qconf(i32, i32, i32) #1

declare dso_local i64 @sun4v_ldc_rx_qconf(i32, i32, i32) #1

declare dso_local i64 @sun4v_ldc_tx_get_state(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
