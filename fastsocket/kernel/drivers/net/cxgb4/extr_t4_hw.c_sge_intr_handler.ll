; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_sge_intr_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_sge_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32, i32 }
%struct.adapter = type { i32 }

@sge_intr_handler.sge_intr_info = internal constant [16 x %struct.intr_info] [%struct.intr_info { i32 140, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1, i32 0 }, %struct.intr_info { i32 134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 132, i8* null, i32 -1, i32 0, i32 128 }, %struct.intr_info { i32 133, i8* null, i32 -1, i32 0, i32 128 }, %struct.intr_info { i32 131, i8* null, i32 -1, i32 0, i32 129 }, %struct.intr_info { i32 139, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 144, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [36 x i8] c"SGE received CPL exceeding IQE size\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SGE GTS CIDX increment too large\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SGE received 0-length CPL\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SGE IQID > 1023 received CPL for FL\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SGE DBP 3 pidx increment too large\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"SGE DBP 2 pidx increment too large\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"SGE DBP 1 pidx increment too large\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SGE DBP 0 pidx increment too large\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"SGE too many priority ingress contexts\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"SGE too many priority egress contexts\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"SGE illegal ingress QID\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"SGE illegal egress QID\00", align 1
@SGE_INT_CAUSE1 = common dso_local global i32 0, align 4
@SGE_INT_CAUSE2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"SGE parity error (%#llx)\0A\00", align 1
@SGE_INT_CAUSE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @sge_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = load i32, i32* @SGE_INT_CAUSE1, align 4
  %6 = call i64 @t4_read_reg(%struct.adapter* %4, i32 %5)
  %7 = trunc i64 %6 to i32
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = load i32, i32* @SGE_INT_CAUSE2, align 4
  %10 = call i64 @t4_read_reg(%struct.adapter* %8, i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 32
  %13 = or i32 %7, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = call i32 @dev_alert(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %21)
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = load i32, i32* @SGE_INT_CAUSE1, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @t4_write_reg(%struct.adapter* %23, i32 %24, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* @SGE_INT_CAUSE2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = ashr i32 %29, 32
  %31 = call i32 @t4_write_reg(%struct.adapter* %27, i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %16, %1
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = load i32, i32* @SGE_INT_CAUSE3, align 4
  %35 = call i64 @t4_handle_intr_status(%struct.adapter* %33, i32 %34, %struct.intr_info* getelementptr inbounds ([16 x %struct.intr_info], [16 x %struct.intr_info]* @sge_intr_handler.sge_intr_info, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %32
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = call i32 @t4_fatal_err(%struct.adapter* %41)
  br label %43

43:                                               ; preds = %40, %37
  ret void
}

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i64) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i64 @t4_handle_intr_status(%struct.adapter*, i32, %struct.intr_info*) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
