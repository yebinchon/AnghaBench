; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_chap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_get_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ql4_chap_table = type { i32, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_RAW_ACCESS_ADDR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chap Cookie: x%x\0A\00", align 1
@CHAP_VALID_COOKIE = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No valid chap entry found\0A\00", align 1
@QL4_CHAP_MAX_SECRET_LEN = common dso_local global i32 0, align 4
@QL4_CHAP_MAX_NAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_get_chap(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_qla_host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ql4_chap_table*, align 8
  %15 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @QLA_ERROR, align 4
  store i32 %16, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ql4_chap_table* @dma_pool_alloc(i32 %19, i32 %20, i32* %15)
  store %struct.ql4_chap_table* %21, %struct.ql4_chap_table** %14, align 8
  %22 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %23 = icmp eq %struct.ql4_chap_table* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %122

27:                                               ; preds = %4
  store i32 12, i32* %13, align 4
  %28 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @memset(%struct.ql4_chap_table* %28, i32 0, i32 %29)
  %31 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %32 = call i64 @is_qla40XX(%struct.scsi_qla_host* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %36, %37
  %39 = or i32 %35, %38
  store i32 %39, i32* %12, align 4
  br label %66

40:                                               ; preds = %27
  %41 = load i32, i32* @FLASH_RAW_ACCESS_ADDR, align 4
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %43 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 2
  %47 = add nsw i32 %41, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %40
  %53 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 2
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %52, %40
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %34
  %67 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @qla4xxx_get_flash(%struct.scsi_qla_host* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @QLA_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %10, align 4
  br label %114

78:                                               ; preds = %66
  %79 = load i32, i32* @KERN_INFO, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %81 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %82 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @__le16_to_cpu(i32 %83)
  %85 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %79, %struct.scsi_qla_host* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = call i32 @DEBUG2(i32 %85)
  %87 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %88 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @__le16_to_cpu(i32 %89)
  %91 = load i64, i64* @CHAP_VALID_COOKIE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %96 = call i32 (i32, %struct.scsi_qla_host*, i8*, ...) @ql4_printk(i32 %94, %struct.scsi_qla_host* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %114

97:                                               ; preds = %78
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %100 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @QL4_CHAP_MAX_SECRET_LEN, align 4
  %103 = call i32 @strncpy(i8* %98, i32 %101, i32 %102)
  %104 = load i8*, i8** %7, align 8
  %105 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %106 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @QL4_CHAP_MAX_NAME_LEN, align 4
  %109 = call i32 @strncpy(i8* %104, i32 %107, i32 %108)
  %110 = load i64, i64* @CHAP_VALID_COOKIE, align 8
  %111 = call i32 @__constant_cpu_to_le16(i64 %110)
  %112 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %113 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %97, %93, %75
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %116 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @dma_pool_free(i32 %117, %struct.ql4_chap_table* %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %114, %24
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.ql4_chap_table* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.ql4_chap_table*, i32, i32) #1

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4xxx_get_flash(%struct.scsi_qla_host*, i32, i32, i32) #1

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*, ...) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @__constant_cpu_to_le16(i64) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ql4_chap_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
