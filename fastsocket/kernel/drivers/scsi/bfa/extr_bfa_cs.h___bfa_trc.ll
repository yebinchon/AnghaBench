; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_cs.h___bfa_trc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_cs.h___bfa_trc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_trc_mod_s = type { i32, i32, i64, %struct.bfa_trc_s* }
%struct.bfa_trc_s = type { i32, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@BFA_TRC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_trc_mod_s*, i32, i32, i32)* @__bfa_trc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfa_trc(%struct.bfa_trc_mod_s* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bfa_trc_mod_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bfa_trc_s*, align 8
  store %struct.bfa_trc_mod_s* %0, %struct.bfa_trc_mod_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %15 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %14, i32 0, i32 3
  %16 = load %struct.bfa_trc_s*, %struct.bfa_trc_s** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bfa_trc_s, %struct.bfa_trc_s* %16, i64 %18
  store %struct.bfa_trc_s* %19, %struct.bfa_trc_s** %10, align 8
  %20 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %70

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.bfa_trc_s*, %struct.bfa_trc_s** %10, align 8
  %30 = getelementptr inbounds %struct.bfa_trc_s, %struct.bfa_trc_s* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.bfa_trc_s*, %struct.bfa_trc_s** %10, align 8
  %35 = getelementptr inbounds %struct.bfa_trc_s, %struct.bfa_trc_s* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.bfa_trc_s*, %struct.bfa_trc_s** %10, align 8
  %38 = getelementptr inbounds %struct.bfa_trc_s, %struct.bfa_trc_s* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %41 = call i32 @BFA_TRC_TS(%struct.bfa_trc_mod_s* %40)
  %42 = load %struct.bfa_trc_s*, %struct.bfa_trc_s** %10, align 8
  %43 = getelementptr inbounds %struct.bfa_trc_s, %struct.bfa_trc_s* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @BFA_TRC_MAX, align 4
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %47, %49
  %51 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %57 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %25
  %61 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @BFA_TRC_MAX, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  %68 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %69 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %24, %60, %25
  ret void
}

declare dso_local i32 @BFA_TRC_TS(%struct.bfa_trc_mod_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
