; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_clear_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@BFA_IOBUCKET_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_itnim_clear_stats(%struct.bfa_itnim_s* %0) #0 {
  %2 = alloca %struct.bfa_itnim_s*, align 8
  %3 = alloca i32, align 4
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %2, align 8
  %4 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %5 = icmp ne %struct.bfa_itnim_s* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 1
  %10 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 8)
  %11 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %11, i32 0, i32 0
  %13 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 8)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %27, %7
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @BFA_IOBUCKET_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 -1, i32* %26, align 4
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %14

30:                                               ; preds = %6, %14
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
