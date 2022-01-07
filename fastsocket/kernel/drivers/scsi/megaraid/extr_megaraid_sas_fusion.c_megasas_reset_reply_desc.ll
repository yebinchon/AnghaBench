; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_reset_reply_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_reset_reply_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i64, %struct.fusion_context* }
%struct.fusion_context = type { i32, %union.MPI2_REPLY_DESCRIPTORS_UNION*, i64* }
%union.MPI2_REPLY_DESCRIPTORS_UNION = type { i32 }

@ULLONG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @megasas_reset_reply_desc(%struct.megasas_instance* %0) #0 {
  %2 = alloca %struct.megasas_instance*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fusion_context*, align 8
  %6 = alloca %union.MPI2_REPLY_DESCRIPTORS_UNION*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %2, align 8
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %8 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %7, i32 0, i32 1
  %9 = load %struct.fusion_context*, %struct.fusion_context** %8, align 8
  store %struct.fusion_context* %9, %struct.fusion_context** %5, align 8
  %10 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %11 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %2, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i64 [ %17, %14 ], [ 1, %18 ]
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %33, %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %28 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %22

36:                                               ; preds = %22
  %37 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %38 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %37, i32 0, i32 1
  %39 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %38, align 8
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %39, %union.MPI2_REPLY_DESCRIPTORS_UNION** %6, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %52, %36
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %43 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %44, %45
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* @ULLONG_MAX, align 4
  %50 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %6, align 8
  %51 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  %55 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %6, align 8
  %56 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION, %union.MPI2_REPLY_DESCRIPTORS_UNION* %55, i32 1
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %56, %union.MPI2_REPLY_DESCRIPTORS_UNION** %6, align 8
  br label %40

57:                                               ; preds = %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
