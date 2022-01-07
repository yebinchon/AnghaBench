; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_set_chap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_mbx.c_qla4xxx_set_chap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, i64 }
%struct.ql4_chap_table = type { i32, i32, i32, i32, i32 }

@QLA_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BIT_6 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@MAX_CHAP_SECRET_LEN = common dso_local global i32 0, align 4
@MAX_CHAP_NAME_LEN = common dso_local global i32 0, align 4
@CHAP_VALID_COOKIE = common dso_local global i32 0, align 4
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_OPT_RMW_COMMIT = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i8*, i8*, i32, i32)* @qla4xxx_set_chap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla4xxx_set_chap(%struct.scsi_qla_host* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
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
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @QLA_ERROR, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ql4_chap_table* @dma_pool_alloc(i32 %19, i32 %20, i32* %15)
  store %struct.ql4_chap_table* %21, %struct.ql4_chap_table** %14, align 8
  %22 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %23 = icmp eq %struct.ql4_chap_table* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %109

27:                                               ; preds = %5
  %28 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %29 = call i32 @memset(%struct.ql4_chap_table* %28, i32 0, i32 20)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @BIT_6, align 4
  %34 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %35 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @BIT_7, align 4
  %40 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %41 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %48 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %50 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @MAX_CHAP_SECRET_LEN, align 4
  %54 = call i32 @strncpy(i32 %51, i8* %52, i32 %53)
  %55 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %56 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* @MAX_CHAP_NAME_LEN, align 4
  %60 = call i32 @strncpy(i32 %57, i8* %58, i32 %59)
  %61 = load i32, i32* @CHAP_VALID_COOKIE, align 4
  %62 = call i32 @__constant_cpu_to_le16(i32 %61)
  %63 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %64 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 20
  %70 = or i64 %66, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FLASH_OPT_RMW_COMMIT, align 4
  %76 = call i32 @qla4xxx_set_flash(%struct.scsi_qla_host* %72, i32 %73, i32 %74, i32 20, i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @QLA_SUCCESS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %44
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %87 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.ql4_chap_table*
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ql4_chap_table, %struct.ql4_chap_table* %89, i64 %91
  %93 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %94 = call i32 @memcpy(%struct.ql4_chap_table* %92, %struct.ql4_chap_table* %93, i32 20)
  br label %95

95:                                               ; preds = %85, %80, %44
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %6, align 8
  %97 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ql4_chap_table*, %struct.ql4_chap_table** %14, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @dma_pool_free(i32 %98, %struct.ql4_chap_table* %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @QLA_SUCCESS, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %95
  br label %109

109:                                              ; preds = %108, %24
  %110 = load i32, i32* %11, align 4
  ret i32 %110
}

declare dso_local %struct.ql4_chap_table* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.ql4_chap_table*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @__constant_cpu_to_le16(i32) #1

declare dso_local i32 @qla4xxx_set_flash(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ql4_chap_table*, %struct.ql4_chap_table*, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.ql4_chap_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
