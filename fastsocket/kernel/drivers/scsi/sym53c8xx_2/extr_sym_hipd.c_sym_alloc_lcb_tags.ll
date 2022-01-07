; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_alloc_lcb_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_alloc_lcb_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32, %struct.sym_tcb* }
%struct.sym_tcb = type { i32 }
%struct.sym_lcb = type { i32*, i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@SYM_CONF_MAX_TASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ITLQ_TBL\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i64, i64)* @sym_alloc_lcb_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_alloc_lcb_tags(%struct.sym_hcb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.sym_hcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sym_tcb*, align 8
  %8 = alloca %struct.sym_lcb*, align 8
  %9 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %11 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %10, i32 0, i32 1
  %12 = load %struct.sym_tcb*, %struct.sym_tcb** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.sym_tcb, %struct.sym_tcb* %12, i64 %13
  store %struct.sym_tcb* %14, %struct.sym_tcb** %7, align 8
  %15 = load %struct.sym_tcb*, %struct.sym_tcb** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.sym_lcb* @sym_lp(%struct.sym_tcb* %15, i64 %16)
  store %struct.sym_lcb* %17, %struct.sym_lcb** %8, align 8
  %18 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %19 = mul nsw i32 %18, 4
  %20 = call i8** @sym_calloc_dma(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %22 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %21, i32 0, i32 1
  store i8** %20, i8*** %22, align 8
  %23 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %24 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %23, i32 0, i32 1
  %25 = load i8**, i8*** %24, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %91

28:                                               ; preds = %3
  %29 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i32* @kcalloc(i32 %29, i32 1, i32 %30)
  %32 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %33 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  %34 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %35 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %28
  %39 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %40 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %39, i32 0, i32 1
  %41 = load i8**, i8*** %40, align 8
  %42 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %43 = mul nsw i32 %42, 4
  %44 = call i32 @sym_mfree_dma(i8** %41, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %46 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %45, i32 0, i32 1
  store i8** null, i8*** %46, align 8
  br label %91

47:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.sym_hcb*, %struct.sym_hcb** %4, align 8
  %54 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @cpu_to_scr(i32 %55)
  %57 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %58 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %48

66:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SYM_CONF_MAX_TASK, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %74 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %84 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = call i32 @vtobus(i8** %85)
  %87 = call i8* @cpu_to_scr(i32 %86)
  %88 = load %struct.sym_lcb*, %struct.sym_lcb** %8, align 8
  %89 = getelementptr inbounds %struct.sym_lcb, %struct.sym_lcb* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  br label %92

91:                                               ; preds = %38, %27
  br label %92

92:                                               ; preds = %91, %82
  ret void
}

declare dso_local %struct.sym_lcb* @sym_lp(%struct.sym_tcb*, i64) #1

declare dso_local i8** @sym_calloc_dma(i32, i8*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sym_mfree_dma(i8**, i32, i8*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @vtobus(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
