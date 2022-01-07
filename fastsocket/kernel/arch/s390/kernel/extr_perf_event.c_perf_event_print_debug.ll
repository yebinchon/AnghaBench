; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_event.c_perf_event_print_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_event.c_perf_event_print_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumf_ctr_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"CPU[%i] CPUM_CF: ver=%u.%u A=%04x E=%04x C=%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"CPUMF Query: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_event_print_debug() #0 {
  %1 = alloca %struct.cpumf_ctr_info, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @cpum_cf_avail()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %32

7:                                                ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = call i32 (...) @smp_processor_id()
  store i32 %10, i32* %3, align 4
  %11 = call i32 @memset(%struct.cpumf_ctr_info* %1, i32 0, i32 20)
  %12 = call i32 @qctri(%struct.cpumf_ctr_info* %1)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.cpumf_ctr_info, %struct.cpumf_ctr_info* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %17, i32 %19, i32 %21, i32 %23, i32 %25)
  %27 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %28 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %27, %struct.cpumf_ctr_info* %1, i32 20)
  br label %29

29:                                               ; preds = %14, %7
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @local_irq_restore(i64 %30)
  br label %32

32:                                               ; preds = %29, %6
  ret void
}

declare dso_local i32 @cpum_cf_avail(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @memset(%struct.cpumf_ctr_info*, i32, i32) #1

declare dso_local i32 @qctri(%struct.cpumf_ctr_info*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, %struct.cpumf_ctr_info*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
