; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_profile_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_profile_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.bfa_itnim_latency_s }
%struct.bfa_itnim_latency_s = type { i64*, i64*, i32*, i32* }
%struct.scsi_cmnd = type { i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioim_profile_comp(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca %struct.bfa_ioim_s*, align 8
  %3 = alloca %struct.bfa_itnim_latency_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %2, align 8
  %6 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.bfa_itnim_latency_s* %10, %struct.bfa_itnim_latency_s** %3, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  store i64 %15, i64* %4, align 8
  %16 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.scsi_cmnd*
  %20 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %19)
  %21 = call i64 @bfa_ioim_get_index(i32 %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @bfa_itnim_ioprofile_update(%struct.TYPE_4__* %24, i64 %25)
  %27 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %1
  %43 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  br label %51

49:                                               ; preds = %1
  %50 = load i64, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %42
  %52 = phi i64 [ %48, %42 ], [ %50, %49 ]
  %53 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %54 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %52, i64* %57, align 8
  %58 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %51
  %67 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  br label %75

73:                                               ; preds = %51
  %74 = load i64, i64* %4, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = phi i64 [ %72, %66 ], [ %74, %73 ]
  %77 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %78 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %76, i64* %81, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.bfa_itnim_latency_s*, %struct.bfa_itnim_latency_s** %3, align 8
  %84 = getelementptr inbounds %struct.bfa_itnim_latency_s, %struct.bfa_itnim_latency_s* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %82
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  ret void
}

declare dso_local i64 @bfa_ioim_get_index(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @bfa_itnim_ioprofile_update(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
