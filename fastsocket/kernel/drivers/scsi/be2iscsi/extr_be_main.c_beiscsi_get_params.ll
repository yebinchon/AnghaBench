; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_get_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@BE2_TMFS = common dso_local global i32 0, align 4
@BE2_NOPOUT_REQ = common dso_local global i32 0, align 4
@BE2_SGE = common dso_local global i32 0, align 4
@BE2_DEFPDU_HDR_SZ = common dso_local global i32 0, align 4
@BE2_DEFPDU_DATA_SZ = common dso_local global i32 0, align 4
@BE2_CMDS_PER_CXN = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BM_%d : phba->params.num_eq_entries=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.beiscsi_hba*)* @beiscsi_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @beiscsi_get_params(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %3 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %4 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BE2_TMFS, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @BE2_NOPOUT_REQ, align 4
  %14 = add nsw i32 %12, %13
  %15 = sub nsw i32 %6, %14
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %20 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %24 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %31 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %34 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %38 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @BE2_SGE, align 4
  %41 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %42 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 10
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @BE2_DEFPDU_HDR_SZ, align 4
  %45 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %46 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 9
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @BE2_DEFPDU_DATA_SZ, align 4
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store i32 %48, i32* %51, align 4
  %52 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %53 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i32 64, i32* %54, align 4
  %55 = load i32, i32* @BE2_CMDS_PER_CXN, align 4
  %56 = mul nsw i32 %55, 2
  %57 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %58 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 2
  %62 = add nsw i32 %56, %61
  %63 = load i32, i32* @BE2_TMFS, align 4
  %64 = add nsw i32 %62, %63
  %65 = sdiv i32 %64, 512
  %66 = add nsw i32 %65, 1
  %67 = mul nsw i32 %66, 512
  %68 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %69 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32 %67, i32* %70, align 4
  %71 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %72 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 1024
  br i1 %75, label %76, label %77

76:                                               ; preds = %1
  br label %82

77:                                               ; preds = %1
  %78 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %79 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %77, %76
  %83 = phi i32 [ 1024, %76 ], [ %81, %77 ]
  %84 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %85 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %88 = load i32, i32* @KERN_INFO, align 4
  %89 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %90 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %91 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @beiscsi_log(%struct.beiscsi_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @BE2_CMDS_PER_CXN, align 4
  %96 = mul nsw i32 %95, 2
  %97 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %98 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  %102 = add nsw i32 %96, %101
  %103 = load i32, i32* @BE2_TMFS, align 4
  %104 = add nsw i32 %102, %103
  %105 = sdiv i32 %104, 512
  %106 = add nsw i32 %105, 1
  %107 = mul nsw i32 %106, 512
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %109 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 6
  store i32 %107, i32* %110, align 4
  %111 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %112 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 7
  store i32 256, i32* %113, align 4
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
