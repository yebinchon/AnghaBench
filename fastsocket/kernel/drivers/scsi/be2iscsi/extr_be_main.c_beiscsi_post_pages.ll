; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_post_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_post_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.be_mem_descriptor* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.be_mem_descriptor = type { i32, %struct.mem_array* }
%struct.mem_array = type { i32 }
%struct.be_dma_mem = type { i32 }

@HWI_MEM_SGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"BM_%d : post sgl failed.\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"BM_%d : POSTED PAGES\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @beiscsi_post_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_post_pages(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.be_mem_descriptor*, align 8
  %5 = alloca %struct.mem_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_dma_mem, align 4
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %10 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %10, i32 0, i32 3
  %12 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %11, align 8
  store %struct.be_mem_descriptor* %12, %struct.be_mem_descriptor** %4, align 8
  %13 = load i32, i32* @HWI_MEM_SGE, align 4
  %14 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %14, i64 %15
  store %struct.be_mem_descriptor* %16, %struct.be_mem_descriptor** %4, align 8
  %17 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %17, i32 0, i32 1
  %19 = load %struct.mem_array*, %struct.mem_array** %18, align 8
  store %struct.mem_array* %19, %struct.mem_array** %5, align 8
  %20 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %21 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %27 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %25, %30
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = udiv i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %73, %1
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.be_mem_descriptor*, %struct.be_mem_descriptor** %4, align 8
  %39 = getelementptr inbounds %struct.be_mem_descriptor, %struct.be_mem_descriptor* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %44 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %45 = call i32 @hwi_build_be_sgl_arr(%struct.beiscsi_hba* %43, %struct.mem_array* %44, %struct.be_dma_mem* %8)
  %46 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %47 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %50 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PAGE_SIZE, align 4
  %53 = sdiv i32 %51, %52
  %54 = call i32 @be_cmd_iscsi_post_sgl_pages(i32* %47, %struct.be_dma_mem* %8, i32 %48, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %56 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = sdiv i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %42
  %65 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %68 = call i32 @beiscsi_log(%struct.beiscsi_hba* %65, i32 %66, i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %2, align 4
  br label %81

70:                                               ; preds = %42
  %71 = load %struct.mem_array*, %struct.mem_array** %5, align 8
  %72 = getelementptr inbounds %struct.mem_array, %struct.mem_array* %71, i32 1
  store %struct.mem_array* %72, %struct.mem_array** %5, align 8
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %36

76:                                               ; preds = %36
  %77 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %80 = call i32 @beiscsi_log(%struct.beiscsi_hba* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %64
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @hwi_build_be_sgl_arr(%struct.beiscsi_hba*, %struct.mem_array*, %struct.be_dma_mem*) #1

declare dso_local i32 @be_cmd_iscsi_post_sgl_pages(i32*, %struct.be_dma_mem*, i32, i32) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
