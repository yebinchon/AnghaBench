; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_cs.h___bfa_trc32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_cs.h___bfa_trc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_trc_mod_s = type { i32, i32, i64, %struct.bfa_trc_s* }
%struct.bfa_trc_s = type { i32, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BFA_TRC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_trc_mod_s*, i32, i32, i32)* @__bfa_trc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bfa_trc32(%struct.bfa_trc_mod_s* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br label %71

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
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %42 = call i32 @BFA_TRC_TS(%struct.bfa_trc_mod_s* %41)
  %43 = load %struct.bfa_trc_s*, %struct.bfa_trc_s** %10, align 8
  %44 = getelementptr inbounds %struct.bfa_trc_s, %struct.bfa_trc_s* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %46 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* @BFA_TRC_MAX, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %48, %50
  %52 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %55 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %25
  %62 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %63 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* @BFA_TRC_MAX, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  %69 = load %struct.bfa_trc_mod_s*, %struct.bfa_trc_mod_s** %5, align 8
  %70 = getelementptr inbounds %struct.bfa_trc_mod_s, %struct.bfa_trc_mod_s* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %24, %61, %25
  ret void
}

declare dso_local i32 @BFA_TRC_TS(%struct.bfa_trc_mod_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
