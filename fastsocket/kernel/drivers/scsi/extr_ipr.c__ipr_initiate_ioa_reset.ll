; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c__ipr_initiate_ioa_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c__ipr_initiate_ioa_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { i32, i32, %struct.ipr_cmnd*, i32, %struct.TYPE_3__* }
%struct.ipr_cmnd = type { i32 (%struct.ipr_cmnd*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, i32 (%struct.ipr_cmnd*)*, i32)* @_ipr_initiate_ioa_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ipr_initiate_ioa_reset(%struct.ipr_ioa_cfg* %0, i32 (%struct.ipr_cmnd*)* %1, i32 %2) #0 {
  %4 = alloca %struct.ipr_ioa_cfg*, align 8
  %5 = alloca i32 (%struct.ipr_cmnd*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_cmnd*, align 8
  %8 = alloca i32, align 4
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %4, align 8
  store i32 (%struct.ipr_cmnd*)* %1, i32 (%struct.ipr_cmnd*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %41, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %18, i32 0, i32 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @spin_unlock(i32* %39)
  br label %41

41:                                               ; preds = %17
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %11

44:                                               ; preds = %11
  %45 = call i32 (...) @wmb()
  %46 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %47 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @scsi_block_requests(i32 %57)
  br label %59

59:                                               ; preds = %54, %44
  %60 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %61 = call %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg* %60)
  store %struct.ipr_cmnd* %61, %struct.ipr_cmnd** %7, align 8
  %62 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %7, align 8
  %63 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %4, align 8
  %64 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %63, i32 0, i32 2
  store %struct.ipr_cmnd* %62, %struct.ipr_cmnd** %64, align 8
  %65 = load i32 (%struct.ipr_cmnd*)*, i32 (%struct.ipr_cmnd*)** %5, align 8
  %66 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %7, align 8
  %67 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %66, i32 0, i32 0
  store i32 (%struct.ipr_cmnd*)* %65, i32 (%struct.ipr_cmnd*)** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %7, align 8
  %70 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %7, align 8
  %73 = call i32 @ipr_reset_ioa_job(%struct.ipr_cmnd* %72)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @scsi_block_requests(i32) #1

declare dso_local %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg*) #1

declare dso_local i32 @ipr_reset_ioa_job(%struct.ipr_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
