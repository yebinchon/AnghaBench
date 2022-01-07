; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_figure_lunaddrbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_figure_lunaddrbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.ReportLUNdata = type { i32** }

@RAID_CTLR_LUNID = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @figure_lunaddrbytes(%struct.ctlr_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.ReportLUNdata* %5, %struct.ReportLUNdata* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ctlr_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ReportLUNdata*, align 8
  %15 = alloca %struct.ReportLUNdata*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ReportLUNdata* %5, %struct.ReportLUNdata** %14, align 8
  store %struct.ReportLUNdata* %6, %struct.ReportLUNdata** %15, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %18, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32*, i32** @RAID_CTLR_LUNID, align 8
  store i32* %34, i32** %8, align 8
  br label %73

35:                                               ; preds = %7
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %14, align 8
  %41 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = sub nsw i32 %43, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %42, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32* %51, i32** %8, align 8
  br label %73

52:                                               ; preds = %35
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %15, align 8
  %58 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = sub nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %59, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32* %70, i32** %8, align 8
  br label %73

71:                                               ; preds = %52
  %72 = call i32 (...) @BUG()
  store i32* null, i32** %8, align 8
  br label %73

73:                                               ; preds = %71, %56, %39, %33
  %74 = load i32*, i32** %8, align 8
  ret i32* %74
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
