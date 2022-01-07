; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_enable_ioa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_enable_ioa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_9__*, i32, %struct.TYPE_10__, i32, i32, %struct.ipr_ioa_cfg* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, void (i64)*, i64 }
%struct.ipr_ioa_cfg = type { i32, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENTER = common dso_local global i32 0, align 4
@ipr_ioafp_identify_hrrq = common dso_local global i32 0, align 4
@IPR_ENDIAN_SWAP_KEY = common dso_local global i32 0, align 4
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@IPR_PCII_ERROR_INTERRUPTS = common dso_local global i32 0, align 4
@IPR_PCII_HRRQ_UPDATED = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@IPR_PCII_IPL_STAGE_CHANGE = common dso_local global i32 0, align 4
@IPR_PCII_OPER_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Initializing IOA.\0A\00", align 1
@ipr_reset_next_stage = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ipr_oper_timeout = common dso_local global i64 0, align 8
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_enable_ioa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_enable_ioa(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 5
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %9, align 8
  store %struct.ipr_ioa_cfg* %10, %struct.ipr_ioa_cfg** %4, align 8
  %11 = load i32, i32* @ENTER, align 4
  %12 = load i32, i32* @ipr_ioafp_identify_hrrq, align 4
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %16 = call i32 @ipr_init_ioa_mem(%struct.ipr_ioa_cfg* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %1
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %24, i32 0, i32 6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 6
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %40 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %39, i32 0, i32 6
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %17

50:                                               ; preds = %17
  %51 = call i32 (...) @wmb()
  %52 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %53 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load volatile i32, i32* @IPR_ENDIAN_SWAP_KEY, align 4
  %58 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %59 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @writel(i32 %57, i32 %61)
  %63 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @readl(i32 %66)
  store volatile i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %56, %50
  %69 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %70 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @readl(i32 %72)
  store volatile i32 %73, i32* %5, align 4
  %74 = load volatile i32, i32* %5, align 4
  %75 = load volatile i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %68
  %79 = load volatile i32, i32* @IPR_PCII_ERROR_INTERRUPTS, align 4
  %80 = load volatile i32, i32* @IPR_PCII_HRRQ_UPDATED, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %83 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @writel(i32 %81, i32 %85)
  %87 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %88 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @readl(i32 %90)
  store volatile i32 %91, i32* %5, align 4
  %92 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %92, i32* %2, align 4
  br label %182

93:                                               ; preds = %68
  %94 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %95 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %94, i32 0, i32 1
  %96 = load volatile i32, i32* %95, align 4
  %97 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %98 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @writel(i32 %96, i32 %100)
  %102 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %103 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %93
  %107 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  store volatile i32 %107, i32* %6, align 4
  %108 = load volatile i32, i32* %6, align 4
  %109 = shl i32 %108, 32
  %110 = load volatile i32, i32* @IPR_PCII_OPER_INTERRUPTS, align 4
  %111 = or i32 %109, %110
  store volatile i32 %111, i32* %6, align 4
  %112 = load volatile i32, i32* %6, align 4
  %113 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %114 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @writeq(i32 %112, i32 %116)
  br label %125

118:                                              ; preds = %93
  %119 = load volatile i32, i32* @IPR_PCII_OPER_INTERRUPTS, align 4
  %120 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %121 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @writel(i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %118, %106
  %126 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %127 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @readl(i32 %129)
  store volatile i32 %130, i32* %5, align 4
  %131 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %132 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %131, i32 0, i32 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = call i32 @dev_info(i32* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %137 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %125
  %141 = load i32, i32* @ipr_reset_next_stage, align 4
  %142 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %143 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %144, i32* %2, align 4
  br label %182

145:                                              ; preds = %125
  %146 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %147 = ptrtoint %struct.ipr_cmnd* %146 to i64
  %148 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %149 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  store i64 %147, i64* %150, align 8
  %151 = load i64, i64* @jiffies, align 8
  %152 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %153 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @HZ, align 4
  %156 = mul nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %151, %157
  %159 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %160 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  store i64 %158, i64* %161, align 8
  %162 = load i64, i64* @ipr_oper_timeout, align 8
  %163 = inttoptr i64 %162 to void (i64)*
  %164 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %165 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  store void (i64)* %163, void (i64)** %166, align 8
  %167 = load i32, i32* @ipr_reset_ioa_job, align 4
  %168 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %169 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %171 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %170, i32 0, i32 2
  %172 = call i32 @add_timer(%struct.TYPE_10__* %171)
  %173 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %174 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %173, i32 0, i32 1
  %175 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %176 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = call i32 @list_add_tail(i32* %174, i32* %178)
  %180 = load i32, i32* @LEAVE, align 4
  %181 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %145, %140, %78
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @ipr_init_ioa_mem(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @add_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
