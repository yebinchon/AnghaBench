; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_handle_other_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_handle_other_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32, i64, %struct.TYPE_5__*, %struct.TYPE_4__, i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IPR_PCII_OPER_INTERRUPTS = common dso_local global i32 0, align 4
@IPR_PCII_IPL_STAGE_CHANGE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@IPR_PCII_HRRQ_UPDATED = common dso_local global i32 0, align 4
@ipr_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Spurious interrupt detected. 0x%08X\0A\00", align 1
@IPR_PCII_IOA_UNIT_CHECKED = common dso_local global i32 0, align 4
@IPR_PCII_NO_HOST_RRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No Host RRQ. 0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Permanent IOA failure. 0x%08X\0A\00", align 1
@WAIT_FOR_DUMP = common dso_local global i64 0, align 8
@GET_DUMP = common dso_local global i64 0, align 8
@IPR_SHUTDOWN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_ioa_cfg*, i32)* @ipr_handle_other_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_handle_other_interrupt(%struct.ipr_ioa_cfg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IPR_PCII_OPER_INTERRUPTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %2
  %23 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @readl(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @readl(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %75

45:                                               ; preds = %27
  %46 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  %47 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @writel(i32 %46, i32 %50)
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @readl(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %60, i32 0, i32 5
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = call i32 @list_del(i32* %63)
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 5
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = call i32 @del_timer(i32* %68)
  %70 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %70, i32 0, i32 5
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @ipr_reset_ioa_job(%struct.TYPE_6__* %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %200

75:                                               ; preds = %27
  br label %76

76:                                               ; preds = %75, %22
  %77 = load i32, i32* @IRQ_NONE, align 4
  store i32 %77, i32* %3, align 4
  br label %200

78:                                               ; preds = %2
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %78
  %84 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @writel(i32 %84, i32 %88)
  %90 = load i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %91 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %92 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @writel(i32 %90, i32 %94)
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @readl(i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %102 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %101, i32 0, i32 5
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = call i32 @list_del(i32* %104)
  %106 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %107 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %106, i32 0, i32 5
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @del_timer(i32* %109)
  %111 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %111, i32 0, i32 5
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = call i32 @ipr_reset_ioa_job(%struct.TYPE_6__* %113)
  br label %198

115:                                              ; preds = %78
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @IPR_PCII_HRRQ_UPDATED, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %115
  %122 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %123 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %121
  %127 = load i64, i64* @ipr_debug, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = call i64 (...) @printk_ratelimit()
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %134 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %132, %129, %126
  %140 = load i32, i32* @IPR_PCII_HRRQ_UPDATED, align 4
  %141 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %142 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @writel(i32 %140, i32 %144)
  %146 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %147 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @readl(i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* @IRQ_NONE, align 4
  store i32 %151, i32* %3, align 4
  br label %200

152:                                              ; preds = %121
  br label %197

153:                                              ; preds = %115
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @IPR_PCII_IOA_UNIT_CHECKED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %160 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  br label %181

161:                                              ; preds = %153
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @IPR_PCII_NO_HOST_RRQ, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %168 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  br label %180

173:                                              ; preds = %161
  %174 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %175 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32, i32* %5, align 4
  %179 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %173, %166
  br label %181

181:                                              ; preds = %180, %158
  %182 = load i64, i64* @WAIT_FOR_DUMP, align 8
  %183 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %184 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load i64, i64* @GET_DUMP, align 8
  %189 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %190 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %181
  %192 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %193 = call i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg* %192, i32 -1)
  %194 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %195 = load i32, i32* @IPR_SHUTDOWN_NONE, align 4
  %196 = call i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %152
  br label %198

198:                                              ; preds = %197, %83
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %139, %76, %45
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @ipr_reset_ioa_job(%struct.TYPE_6__*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ipr_mask_and_clear_interrupts(%struct.ipr_ioa_cfg*, i32) #1

declare dso_local i32 @ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
