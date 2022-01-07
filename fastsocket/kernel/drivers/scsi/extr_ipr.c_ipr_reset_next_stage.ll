; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_next_stage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_reset_next_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__, i32, i8*, %struct.ipr_ioa_cfg* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, void (i64)*, i64 }
%struct.ipr_ioa_cfg = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@IPR_IPL_INIT_STAGE_MASK = common dso_local global i32 0, align 4
@IPR_IPL_INIT_STAGE_TIME_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"IPL stage = 0x%lx, IPL stage time = %ld\0A\00", align 1
@IPR_IPL_INIT_DEFAULT_STAGE_TIME = common dso_local global i64 0, align 8
@IPR_IPL_INIT_MIN_STAGE_TIME = common dso_local global i64 0, align 8
@IPR_LONG_OPERATIONAL_TIMEOUT = common dso_local global i64 0, align 8
@IPR_IPL_INIT_STAGE_UNKNOWN = common dso_local global i64 0, align 8
@IPR_PCII_IPL_STAGE_CHANGE = common dso_local global i32 0, align 4
@ipr_ioafp_identify_hrrq = common dso_local global i8* null, align 8
@IPR_IPL_INIT_STAGE_TRANSOP = common dso_local global i64 0, align 8
@IPR_PCII_IOA_TRANS_TO_OPER = common dso_local global i32 0, align 4
@IPR_RC_JOB_CONTINUE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ipr_oper_timeout = common dso_local global i64 0, align 8
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_reset_next_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_reset_next_stage(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipr_ioa_cfg*, align 8
  %9 = alloca i32, align 4
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %3, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 5
  %12 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  store %struct.ipr_ioa_cfg* %12, %struct.ipr_ioa_cfg** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %14 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @readl(i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IPR_IPL_INIT_STAGE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @IPR_IPL_INIT_STAGE_TIME_MASK, align 4
  %25 = and i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ipr_dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i64, i64* @IPR_IPL_INIT_DEFAULT_STAGE_TIME, align 8
  store i64 %33, i64* %5, align 8
  br label %48

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @IPR_IPL_INIT_MIN_STAGE_TIME, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @IPR_IPL_INIT_MIN_STAGE_TIME, align 8
  store i64 %39, i64* %5, align 8
  br label %47

40:                                               ; preds = %34
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @IPR_LONG_OPERATIONAL_TIMEOUT, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @IPR_LONG_OPERATIONAL_TIMEOUT, align 8
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @IPR_IPL_INIT_STAGE_UNKNOWN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  %54 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @writel(i32 %53, i32 %57)
  %59 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %60 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @readl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store volatile i32 %64, i32* %7, align 4
  %65 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %66 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %5, align 8
  %68 = load i8*, i8** @ipr_ioafp_identify_hrrq, align 8
  %69 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %70 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  br label %110

71:                                               ; preds = %48
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @IPR_IPL_INIT_STAGE_TRANSOP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %71
  %76 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %77 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @readl(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store volatile i32 %81, i32* %7, align 4
  %82 = load volatile i32, i32* %7, align 4
  %83 = load volatile i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %75
  %87 = load i8*, i8** @ipr_ioafp_identify_hrrq, align 8
  %88 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %89 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @IPR_PCII_IPL_STAGE_CHANGE, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = shl i32 %91, 32
  %93 = load volatile i32, i32* @IPR_PCII_IOA_TRANS_TO_OPER, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %97 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @writeq(i32 %95, i32 %99)
  %101 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %102 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @readl(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  store volatile i32 %106, i32* %7, align 4
  %107 = load i32, i32* @IPR_RC_JOB_CONTINUE, align 4
  store i32 %107, i32* %2, align 4
  br label %143

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %71
  br label %110

110:                                              ; preds = %109, %52
  %111 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %112 = ptrtoint %struct.ipr_cmnd* %111 to i64
  %113 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %114 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* @jiffies, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @HZ, align 8
  %119 = mul i64 %117, %118
  %120 = add i64 %116, %119
  %121 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %122 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i64 %120, i64* %123, align 8
  %124 = load i64, i64* @ipr_oper_timeout, align 8
  %125 = inttoptr i64 %124 to void (i64)*
  %126 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %127 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store void (i64)* %125, void (i64)** %128, align 8
  %129 = load i32, i32* @ipr_reset_ioa_job, align 4
  %130 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %131 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %133 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %132, i32 0, i32 2
  %134 = call i32 @add_timer(%struct.TYPE_6__* %133)
  %135 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %136 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %135, i32 0, i32 1
  %137 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %138 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = call i32 @list_add_tail(i32* %136, i32* %140)
  %142 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %110, %86
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @ipr_dbg(i8*, i64, i64) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
