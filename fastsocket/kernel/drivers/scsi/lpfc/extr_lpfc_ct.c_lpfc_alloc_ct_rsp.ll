; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_alloc_ct_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_alloc_ct_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_dmabuf = type { i32, i32, i8* }
%struct.lpfc_hba = type { i32 }
%struct.ulp_bde64 = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@FCELSSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SLI_CTNS_GID_FT = common dso_local global i32 0, align 4
@SLI_CTNS_GFF_ID = common dso_local global i32 0, align 4
@MEM_PRI = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_dmabuf* (%struct.lpfc_hba*, i32, %struct.ulp_bde64*, i32, i32*)* @lpfc_alloc_ct_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_dmabuf* @lpfc_alloc_ct_rsp(%struct.lpfc_hba* %0, i32 %1, %struct.ulp_bde64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ulp_bde64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ulp_bde64* %2, %struct.ulp_bde64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @FCELSSIZE, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @FCELSSIZE, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %14, align 4
  br label %25

25:                                               ; preds = %95, %23
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %136

28:                                               ; preds = %25
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.lpfc_dmabuf* @kmalloc(i32 16, i32 %29)
  store %struct.lpfc_dmabuf* %30, %struct.lpfc_dmabuf** %13, align 8
  %31 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %32 = icmp ne %struct.lpfc_dmabuf* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %35 = icmp ne %struct.lpfc_dmabuf* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %38 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %39 = call i32 @lpfc_free_ct_rsp(%struct.lpfc_hba* %37, %struct.lpfc_dmabuf* %38)
  br label %40

40:                                               ; preds = %36, %33
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %6, align 8
  br label %140

41:                                               ; preds = %28
  %42 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %43 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SLI_CTNS_GFF_ID, align 4
  %52 = call i32 @be16_to_cpu(i32 %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49, %41
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %56 = load i32, i32* @MEM_PRI, align 4
  %57 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %58 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %57, i32 0, i32 0
  %59 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %55, i32 %56, i32* %58)
  %60 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %61 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  br label %69

62:                                               ; preds = %49
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %64 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %65 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %64, i32 0, i32 0
  %66 = call i8* @lpfc_mbuf_alloc(%struct.lpfc_hba* %63, i32 0, i32* %65)
  %67 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %68 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %62, %54
  %70 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %71 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %76 = call i32 @kfree(%struct.lpfc_dmabuf* %75)
  %77 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %78 = icmp ne %struct.lpfc_dmabuf* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %81 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %82 = call i32 @lpfc_free_ct_rsp(%struct.lpfc_hba* %80, %struct.lpfc_dmabuf* %81)
  br label %83

83:                                               ; preds = %79, %74
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %6, align 8
  br label %140

84:                                               ; preds = %69
  %85 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %86 = icmp ne %struct.lpfc_dmabuf* %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  store %struct.lpfc_dmabuf* %88, %struct.lpfc_dmabuf** %12, align 8
  br label %95

89:                                               ; preds = %84
  %90 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %91 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %90, i32 0, i32 1
  %92 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %93 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %92, i32 0, i32 1
  %94 = call i32 @list_add_tail(i32* %91, i32* %93)
  br label %95

95:                                               ; preds = %89, %87
  %96 = load i32, i32* @BUFF_TYPE_BDE_64I, align 4
  %97 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %98 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %96, i32* %100, align 8
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %102 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @putPaddrLow(i32 %103)
  %105 = call i8* @le32_to_cpu(i8* %104)
  %106 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %107 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %109 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i8* @putPaddrHigh(i32 %110)
  %112 = call i8* @le32_to_cpu(i8* %111)
  %113 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %114 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %118 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i64 %116, i64* %120, align 8
  %121 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %122 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i8* @le32_to_cpu(i8* %124)
  %126 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %127 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  %129 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %130 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %129, i32 1
  store %struct.ulp_bde64* %130, %struct.ulp_bde64** %9, align 8
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %10, align 4
  br label %25

136:                                              ; preds = %25
  %137 = load i32, i32* %15, align 4
  %138 = load i32*, i32** %11, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* %139, %struct.lpfc_dmabuf** %6, align 8
  br label %140

140:                                              ; preds = %136, %83, %40
  %141 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  ret %struct.lpfc_dmabuf* %141
}

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_free_ct_rsp(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @putPaddrLow(i32) #1

declare dso_local i8* @putPaddrHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
