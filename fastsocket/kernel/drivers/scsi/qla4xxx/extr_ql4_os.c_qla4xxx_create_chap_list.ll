; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_create_chap_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_create_chap_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_4__*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_CHAP_ENTRIES_40XX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory for chap_flash_data\0A\00", align 1
@FLASH_CHAP_OFFSET = common dso_local global i32 0, align 4
@FLASH_RAW_ACCESS_ADDR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"No memory for ha->chap_list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*)* @qla4xxx_create_chap_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4xxx_create_chap_list(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = call i64 @is_qla40XX(%struct.scsi_qla_host* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @MAX_CHAP_ENTRIES_40XX, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @dma_alloc_coherent(i32* %26, i32 %27, i32* %6, i32 %28)
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @KERN_ERR, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %35 = call i32 @ql4_printk(i32 %33, %struct.scsi_qla_host* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %104

36:                                               ; preds = %22
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %38 = call i64 @is_qla40XX(%struct.scsi_qla_host* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @FLASH_CHAP_OFFSET, align 4
  store i32 %41, i32* %5, align 4
  br label %59

42:                                               ; preds = %36
  %43 = load i32, i32* @FLASH_RAW_ACCESS_ADDR, align 4
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 2
  %49 = add nsw i32 %43, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %42
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @qla4xxx_get_flash(%struct.scsi_qla_host* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @QLA_SUCCESS, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %95

69:                                               ; preds = %59
  %70 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %71 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = call i32* @vmalloc(i32 %75)
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %78 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %77, i32 0, i32 2
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %81 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* @KERN_ERR, align 4
  %86 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %87 = call i32 @ql4_printk(i32 %85, %struct.scsi_qla_host* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %95

88:                                               ; preds = %79
  %89 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %90 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @memcpy(i32* %91, i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %84, %68
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %97 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @dma_free_coherent(i32* %99, i32 %100, i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %95, %32
  ret void
}

declare dso_local i64 @is_qla40XX(%struct.scsi_qla_host*) #1

declare dso_local i32* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i32 @qla4xxx_get_flash(%struct.scsi_qla_host*, i32, i32, i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
