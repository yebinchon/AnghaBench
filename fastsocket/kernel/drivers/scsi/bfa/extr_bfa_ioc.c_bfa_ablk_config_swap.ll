; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ablk_config_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ablk_config_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ablk_cfg_s = type { %struct.bfa_ablk_cfg_inst_s* }
%struct.bfa_ablk_cfg_inst_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

@BFA_ABLK_MAX = common dso_local global i32 0, align 4
@BFA_ABLK_MAX_PFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ablk_cfg_s*)* @bfa_ablk_config_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ablk_config_swap(%struct.bfa_ablk_cfg_s* %0) #0 {
  %2 = alloca %struct.bfa_ablk_cfg_s*, align 8
  %3 = alloca %struct.bfa_ablk_cfg_inst_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.bfa_ablk_cfg_s* %0, %struct.bfa_ablk_cfg_s** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %112, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BFA_ABLK_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %115

11:                                               ; preds = %7
  %12 = load %struct.bfa_ablk_cfg_s*, %struct.bfa_ablk_cfg_s** %2, align 8
  %13 = getelementptr inbounds %struct.bfa_ablk_cfg_s, %struct.bfa_ablk_cfg_s* %12, i32 0, i32 0
  %14 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %14, i64 %16
  store %struct.bfa_ablk_cfg_inst_s* %17, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %108, %11
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @BFA_ABLK_MAX_PFS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %18
  %23 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @be16_to_cpu(i8* %31)
  %33 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i8* %32, i8** %39, align 8
  %40 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @be16_to_cpu(i8* %48)
  %50 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i8* %49, i8** %56, align 8
  %57 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i8* @be16_to_cpu(i8* %65)
  %67 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i8* %66, i8** %73, align 8
  %74 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %75 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i8* @be16_to_cpu(i8* %82)
  %84 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %85 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* %83, i8** %90, align 8
  %91 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %92 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i8* @be16_to_cpu(i8* %99)
  %101 = load %struct.bfa_ablk_cfg_inst_s*, %struct.bfa_ablk_cfg_inst_s** %3, align 8
  %102 = getelementptr inbounds %struct.bfa_ablk_cfg_inst_s, %struct.bfa_ablk_cfg_inst_s* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i8* %100, i8** %107, align 8
  br label %108

108:                                              ; preds = %22
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %18

111:                                              ; preds = %18
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %7

115:                                              ; preds = %7
  ret void
}

declare dso_local i8* @be16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
