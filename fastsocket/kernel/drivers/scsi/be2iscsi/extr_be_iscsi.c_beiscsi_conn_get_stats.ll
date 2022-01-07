; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_conn_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.iscsi_stats = type { %struct.TYPE_2__*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.beiscsi_hba = type { i32 }
%struct.beiscsi_conn = type { %struct.beiscsi_hba* }

@KERN_INFO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BS_%d : In beiscsi_conn_get_stats\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"eh_abort_cnt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_conn_get_stats(%struct.iscsi_cls_conn* %0, %struct.iscsi_stats* %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_stats*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.beiscsi_hba*, align 8
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store %struct.iscsi_stats* %1, %struct.iscsi_stats** %4, align 8
  %7 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %7, i32 0, i32 0
  %9 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  store %struct.iscsi_conn* %9, %struct.iscsi_conn** %5, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %6, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.beiscsi_conn*
  %14 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %13, i32 0, i32 0
  %15 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %14, align 8
  store %struct.beiscsi_hba* %15, %struct.beiscsi_hba** %6, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %6, align 8
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %19 = call i32 @beiscsi_log(%struct.beiscsi_hba* %16, i32 %17, i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %23, i32 0, i32 12
  store i32 %22, i32* %24, align 8
  %25 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 4
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %49 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %54 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %56 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %59 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %68 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %70 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %72 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @strcpy(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %78 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %79 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.iscsi_stats*, %struct.iscsi_stats** %4, align 8
  %82 = getelementptr inbounds %struct.iscsi_stats, %struct.iscsi_stats* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  ret void
}

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
