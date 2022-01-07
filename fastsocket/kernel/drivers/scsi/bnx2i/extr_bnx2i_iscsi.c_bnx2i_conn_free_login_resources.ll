; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_free_login_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_free_login_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2i_hba*, %struct.bnx2i_conn*)* @bnx2i_conn_free_login_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_conn_free_login_resources(%struct.bnx2i_hba* %0, %struct.bnx2i_conn* %1) #0 {
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca %struct.bnx2i_conn*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %3, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %4, align 8
  %5 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %6 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 6
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_free_coherent(i32* %14, i32 %15, i32* %19, i32 %23)
  %25 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %10, %2
  %29 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %36 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %41 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %45 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_free_coherent(i32* %38, i32 %39, i32* %43, i32 %47)
  %49 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %50 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %34, %28
  %53 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %60 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %64 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %65 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %69 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32* %62, i32 %63, i32* %67, i32 %71)
  %73 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %74 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %58, %52
  %77 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %78 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %88 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %89 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %93 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dma_free_coherent(i32* %86, i32 %87, i32* %91, i32 %95)
  %97 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %4, align 8
  %98 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %82, %76
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
