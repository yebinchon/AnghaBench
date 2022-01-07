; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_put_start_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_put_start_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i64, i64, i32, i32, i8**, i32, i64, %struct.sym_ccb* }
%struct.sym_ccb = type { i32, i32, i32, i32 }

@MAX_QUEUE = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_QUEUE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"queuepos=%d\0A\00", align 1
@nc_istat = common dso_local global i32 0, align 4
@SIGP = common dso_local global i32 0, align 4
@HF_HINT_IARB = common dso_local global i32 0, align 4
@HX_DMAP_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_put_start_queue(%struct.sym_hcb* %0, %struct.sym_ccb* %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_ccb*, align 8
  %5 = alloca i32, align 4
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store %struct.sym_ccb* %1, %struct.sym_ccb** %4, align 8
  %6 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %7 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 2
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @MAX_QUEUE, align 4
  %12 = mul nsw i32 %11, 2
  %13 = icmp sge i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %17 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @cpu_to_scr(i32 %18)
  %20 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %21 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %20, i32 0, i32 4
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  store i8* %19, i8** %25, align 8
  %26 = call i32 (...) @MEMORY_WRITE_BARRIER()
  %27 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %28 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_scr(i32 %29)
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %32 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %31, i32 0, i32 4
  %33 = load i8**, i8*** %32, align 8
  %34 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %35 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %33, i64 %37
  store i8* %30, i8** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %41 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @DEBUG_FLAGS, align 4
  %43 = load i32, i32* @DEBUG_QUEUE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %15
  %47 = load i32, i32* @KERN_DEBUG, align 4
  %48 = load %struct.sym_ccb*, %struct.sym_ccb** %4, align 8
  %49 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %52 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @scmd_printk(i32 %47, i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %46, %15
  %56 = call i32 (...) @MEMORY_WRITE_BARRIER()
  %57 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %58 = load i32, i32* @nc_istat, align 4
  %59 = load i32, i32* @SIGP, align 4
  %60 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %61 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = call i32 @OUTB(%struct.sym_hcb* %57, i32 %58, i32 %63)
  ret void
}

declare dso_local i8* @cpu_to_scr(i32) #1

declare dso_local i32 @MEMORY_WRITE_BARRIER(...) #1

declare dso_local i32 @scmd_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
