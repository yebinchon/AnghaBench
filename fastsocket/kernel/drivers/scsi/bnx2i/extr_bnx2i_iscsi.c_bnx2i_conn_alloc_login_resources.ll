; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_alloc_login_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_conn_alloc_login_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i64 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"login resource alloc failed!!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2i_hba*, %struct.bnx2i_conn*)* @bnx2i_conn_alloc_login_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_conn_alloc_login_resources(%struct.bnx2i_hba* %0, %struct.bnx2i_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2i_hba*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  store %struct.bnx2i_hba* %0, %struct.bnx2i_hba** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  %6 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %7 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @dma_alloc_coherent(i32* %9, i32 %10, i32* %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %18 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %165

26:                                               ; preds = %2
  %27 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 11
  store i64 0, i64* %29, align 8
  %30 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %35 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 10
  store i32* %33, i32** %36, align 8
  %37 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %38 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %42 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %43 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @dma_alloc_coherent(i32* %40, i32 %41, i32* %44, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32* %47, i32** %50, align 8
  %51 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %52 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  br label %147

57:                                               ; preds = %26
  %58 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %59 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 9
  store i32 %58, i32* %61, align 8
  %62 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %67 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 8
  store i32* %65, i32** %68, align 8
  %69 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %70 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %75 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dma_alloc_coherent(i32* %72, i32 %73, i32* %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %81 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 4
  store i32* %79, i32** %82, align 8
  %83 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %57
  br label %129

89:                                               ; preds = %57
  %90 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %96 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 7
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @dma_alloc_coherent(i32* %93, i32 %94, i32* %97, i32 %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %102 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 6
  store i32* %100, i32** %103, align 8
  %104 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %105 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = icmp eq i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %89
  br label %111

110:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %175

111:                                              ; preds = %109
  %112 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %113 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %118 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %122 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @dma_free_coherent(i32* %115, i32 %116, i32* %120, i32 %124)
  %126 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %127 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  store i32* null, i32** %128, align 8
  br label %129

129:                                              ; preds = %111, %88
  %130 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %131 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %135 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %136 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %140 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dma_free_coherent(i32* %133, i32 %134, i32* %138, i32 %142)
  %144 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %145 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %129, %56
  %148 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %4, align 8
  %149 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %153 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %154 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %158 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dma_free_coherent(i32* %151, i32 %152, i32* %156, i32 %160)
  %162 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %163 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %147, %25
  %166 = load i32, i32* @KERN_ERR, align 4
  %167 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %168 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @iscsi_conn_printk(i32 %166, i32 %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @ENOMEM, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %165, %110
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @iscsi_conn_printk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
