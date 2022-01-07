; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_dump_wakeup_param_cmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_dump_wakeup_param_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.prog_id = type { i32, i64, i32, i32, i32 }

@__const.lpfc_dump_wakeup_param_cmpl.dist_char = private unnamed_addr constant [5 x i8] c"nabx\00", align 1
@MBX_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%d.%d%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d%d%c%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_10__*)* @lpfc_dump_wakeup_param_cmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_dump_wakeup_param_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.prog_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca [5 x i8], align 1
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i8 32, i8* %7, align 1
  %9 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.lpfc_dump_wakeup_param_cmpl.dist_char, i32 0, i32 0), i64 5, i1 false)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MBX_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mempool_free(%struct.TYPE_10__* %18, i32 %21)
  br label %93

23:                                               ; preds = %2
  %24 = bitcast i64* %6 to %struct.prog_id*
  store %struct.prog_id* %24, %struct.prog_id** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 7
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %34 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %39 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %7, align 1
  br label %44

44:                                               ; preds = %37, %23
  %45 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %46 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %51 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %59 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %62 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %65 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, i32, i32, i32, ...) @sprintf(i32 %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63, i32 %66)
  br label %87

68:                                               ; preds = %49, %44
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %73 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %76 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %79 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i8, i8* %7, align 1
  %82 = sext i8 %81 to i32
  %83 = load %struct.prog_id*, %struct.prog_id** %5, align 8
  %84 = getelementptr inbounds %struct.prog_id, %struct.prog_id* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i8*, i32, i32, i32, ...) @sprintf(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %77, i32 %80, i32 %82, i64 %85)
  br label %87

87:                                               ; preds = %68, %54
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mempool_free(%struct.TYPE_10__* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mempool_free(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
