; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_unmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_resp_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i8* }
%struct.sdebug_dev_info = type { i32 }
%struct.unmap_block_desc = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@check_condition_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.sdebug_dev_info*)* @resp_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_unmap(%struct.scsi_cmnd* %0, %struct.sdebug_dev_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.sdebug_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.unmap_block_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.sdebug_dev_info* %1, %struct.sdebug_dev_info** %5, align 8
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %15 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %16 = call i32 @check_readiness(%struct.scsi_cmnd* %14, i32 1, %struct.sdebug_dev_info* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %3, align 4
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 7
  %26 = call i32 @get_unaligned_be16(i8* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %28 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = sub i32 %33, 8
  %35 = udiv i32 %34, 16
  store i32 %35, i32* %10, align 4
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %36)
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call i8* @kmalloc(i32 %37, i32 %38)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %21
  %43 = load i32, i32* @check_condition_result, align 4
  store i32 %43, i32* %3, align 4
  br label %105

44:                                               ; preds = %21
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %47)
  %49 = call i32 @scsi_sg_copy_to_buffer(%struct.scsi_cmnd* %45, i8* %46, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = call i32 @get_unaligned_be16(i8* %51)
  %53 = load i32, i32* %9, align 4
  %54 = sub i32 %53, 2
  %55 = icmp ne i32 %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = call i32 @get_unaligned_be16(i8* %59)
  %61 = load i32, i32* %10, align 4
  %62 = mul i32 %61, 16
  %63 = icmp ne i32 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 8
  %68 = bitcast i8* %67 to %struct.unmap_block_desc*
  store %struct.unmap_block_desc* %68, %struct.unmap_block_desc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %97, %44
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.unmap_block_desc*, %struct.unmap_block_desc** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %74, i64 %76
  %78 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %77, i32 0, i32 1
  %79 = call i64 @get_unaligned_be64(i32* %78)
  store i64 %79, i64* %12, align 8
  %80 = load %struct.unmap_block_desc*, %struct.unmap_block_desc** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %80, i64 %82
  %84 = getelementptr inbounds %struct.unmap_block_desc, %struct.unmap_block_desc* %83, i32 0, i32 0
  %85 = call i32 @get_unaligned_be32(i32* %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.sdebug_dev_info*, %struct.sdebug_dev_info** %5, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @check_device_access_params(%struct.sdebug_dev_info* %86, i64 %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %101

93:                                               ; preds = %73
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @unmap_region(i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %69

100:                                              ; preds = %69
  store i32 0, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @kfree(i8* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %101, %42, %19
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @check_readiness(%struct.scsi_cmnd*, i32, %struct.sdebug_dev_info*) #1

declare dso_local i32 @get_unaligned_be16(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @scsi_sg_copy_to_buffer(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i64 @get_unaligned_be64(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @check_device_access_params(%struct.sdebug_dev_info*, i64, i32) #1

declare dso_local i32 @unmap_region(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
