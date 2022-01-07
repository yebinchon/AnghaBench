; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte_error.c_shub2_bte_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_bte_error.c_shub2_bte_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nodepda_s = type { %struct.bteinfo_s*, %struct.timer_list }
%struct.bteinfo_s = type { i32, i32 }
%struct.timer_list = type { i32 }

@BTES_PER_NODE = common dso_local global i32 0, align 4
@IBLS_ERROR = common dso_local global i32 0, align 4
@IBLS_BUSY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"eh:%p:%d Marked Giving up\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"bte_error_handler(): Fatal BTE Error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shub2_bte_error_handler(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.nodepda_s*, align 8
  %5 = alloca %struct.timer_list*, align 8
  %6 = alloca %struct.bteinfo_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = inttoptr i64 %10 to %struct.nodepda_s*
  store %struct.nodepda_s* %11, %struct.nodepda_s** %4, align 8
  %12 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %13 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %12, i32 0, i32 1
  store %struct.timer_list* %13, %struct.timer_list** %5, align 8
  %14 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %15 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %14, i32 0, i32 0
  %16 = load %struct.bteinfo_s*, %struct.bteinfo_s** %15, align 8
  %17 = getelementptr inbounds %struct.bteinfo_s, %struct.bteinfo_s* %16, i64 0
  %18 = getelementptr inbounds %struct.bteinfo_s, %struct.bteinfo_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cnodeid_to_nasid(i32 %19)
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %62, %1
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @BTES_PER_NODE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %27 = getelementptr inbounds %struct.nodepda_s, %struct.nodepda_s* %26, i32 0, i32 0
  %28 = load %struct.bteinfo_s*, %struct.bteinfo_s** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bteinfo_s, %struct.bteinfo_s* %28, i64 %30
  store %struct.bteinfo_s* %31, %struct.bteinfo_s** %6, align 8
  %32 = load %struct.bteinfo_s*, %struct.bteinfo_s** %6, align 8
  %33 = call i32 @BTE_LNSTAT_LOAD(%struct.bteinfo_s* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @IBLS_ERROR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @BTE_SHUB2_ERROR(i32 %39)
  %41 = load %struct.bteinfo_s*, %struct.bteinfo_s** %6, align 8
  %42 = getelementptr inbounds %struct.bteinfo_s, %struct.bteinfo_s* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %62

43:                                               ; preds = %25
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @IBLS_BUSY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %62

49:                                               ; preds = %43
  %50 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 %52, 5
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @mod_timer(%struct.timer_list* %50, i64 %55)
  %57 = load %struct.nodepda_s*, %struct.nodepda_s** %4, align 8
  %58 = call i32 (...) @smp_processor_id()
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @BTE_PRINTK(i8* %60)
  store i32 1, i32* %2, align 4
  br label %74

62:                                               ; preds = %48, %38
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %21

65:                                               ; preds = %21
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @ia64_sn_bte_recovery(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %73 = call i32 @del_timer(%struct.timer_list* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %71, %49
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @cnodeid_to_nasid(i32) #1

declare dso_local i32 @BTE_LNSTAT_LOAD(%struct.bteinfo_s*) #1

declare dso_local i32 @BTE_SHUB2_ERROR(i32) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #1

declare dso_local i32 @BTE_PRINTK(i8*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @ia64_sn_bte_recovery(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @del_timer(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
