; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_allocate_low_mem_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_allocate_low_mem_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.zfcp_adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@FSF_STATUS_READS_RECOM = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_adapter*)* @zfcp_allocate_low_mem_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_allocate_low_mem_buffers(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  %4 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 7
  store i8* %4, i8** %7, align 8
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 7
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %113

16:                                               ; preds = %1
  %17 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 6
  store i8* %17, i8** %20, align 8
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %113

29:                                               ; preds = %16
  %30 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %31 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i8* %30, i8** %33, align 8
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %113

42:                                               ; preds = %29
  %43 = call i8* @mempool_create_kmalloc_pool(i32 1, i32 4)
  %44 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %113

55:                                               ; preds = %42
  %56 = load i32, i32* @FSF_STATUS_READS_RECOM, align 4
  %57 = call i8* @mempool_create_kmalloc_pool(i32 %56, i32 4)
  %58 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  store i8* %57, i8** %60, align 8
  %61 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %55
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %113

69:                                               ; preds = %55
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 2), align 4
  %71 = call i8* @mempool_create_slab_pool(i32 4, i32 %70)
  %72 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i8* %71, i8** %74, align 8
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %69
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %113

83:                                               ; preds = %69
  %84 = load i32, i32* @FSF_STATUS_READS_RECOM, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 1), align 4
  %86 = call i8* @mempool_create_slab_pool(i32 %84, i32 %85)
  %87 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %113

98:                                               ; preds = %83
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0), align 4
  %100 = call i8* @mempool_create_slab_pool(i32 1, i32 %99)
  %101 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %100, i8** %103, align 8
  %104 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %98
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %109, %95, %80, %66, %52, %39, %26, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i8* @mempool_create_slab_pool(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
