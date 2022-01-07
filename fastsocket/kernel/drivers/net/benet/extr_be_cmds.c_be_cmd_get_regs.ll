; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, %struct.be_cmd_resp_get_fat* }
%struct.be_cmd_resp_get_fat = type { i8*, i32, i8*, i8*, i8*, i32 }
%struct.be_mcc_wrb = type { i32 }
%struct.be_cmd_req_get_fat = type { i8*, i32, i8*, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Memory allocation failure while retrieving FAT data\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_MANAGE_FAT = common dso_local global i32 0, align 4
@RETRIEVE_FAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"FAT Table Retrieve error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @be_cmd_get_regs(%struct.be_adapter* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.be_dma_mem, align 8
  %8 = alloca %struct.be_mcc_wrb*, align 8
  %9 = alloca %struct.be_cmd_req_get_fat*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.be_cmd_resp_get_fat*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 8, i64* %13, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %137

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %11, align 8
  %22 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  store i32 61488, i32* %22, align 8
  %23 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 1
  %29 = call %struct.be_cmd_resp_get_fat* @pci_alloc_consistent(%struct.TYPE_3__* %25, i32 %27, i32* %28)
  %30 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  store %struct.be_cmd_resp_get_fat* %29, %struct.be_cmd_resp_get_fat** %30, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %32 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %31, align 8
  %33 = icmp ne %struct.be_cmd_resp_get_fat* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  %37 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %137

42:                                               ; preds = %20
  %43 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  br label %46

46:                                               ; preds = %115, %42
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %122

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @min(i64 %50, i64 61440)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %11, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %11, align 8
  %55 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %56 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %55)
  store %struct.be_mcc_wrb* %56, %struct.be_mcc_wrb** %8, align 8
  %57 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %58 = icmp ne %struct.be_mcc_wrb* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %123

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %64 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %63, align 8
  %65 = bitcast %struct.be_cmd_resp_get_fat* %64 to %struct.be_cmd_req_get_fat*
  store %struct.be_cmd_req_get_fat* %65, %struct.be_cmd_req_get_fat** %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add i64 48, %66
  store i64 %67, i64* %14, align 8
  %68 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %9, align 8
  %69 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %68, i32 0, i32 5
  %70 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %71 = load i32, i32* @OPCODE_COMMON_MANAGE_FAT, align 4
  %72 = load i64, i64* %14, align 8
  %73 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %8, align 8
  %74 = call i32 @be_wrb_cmd_hdr_prepare(i32* %69, i32 %70, i32 %71, i64 %72, %struct.be_mcc_wrb* %73, %struct.be_dma_mem* %7)
  %75 = load i64, i64* @RETRIEVE_FAT, align 8
  %76 = call i8* @cpu_to_le32(i64 %75)
  %77 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %9, align 8
  %78 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %9, align 8
  %82 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i8* @cpu_to_le32(i64 %83)
  %85 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %9, align 8
  %86 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i8* @cpu_to_le32(i64 %87)
  %89 = load %struct.be_cmd_req_get_fat*, %struct.be_cmd_req_get_fat** %9, align 8
  %90 = getelementptr inbounds %struct.be_cmd_req_get_fat, %struct.be_cmd_req_get_fat* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %92 = call i32 @be_mcc_notify_wait(%struct.be_adapter* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %62
  %96 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %97 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %96, align 8
  store %struct.be_cmd_resp_get_fat* %97, %struct.be_cmd_resp_get_fat** %16, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr i8, i8* %98, i64 %99
  %101 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %16, align 8
  %102 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %16, align 8
  %105 = getelementptr inbounds %struct.be_cmd_resp_get_fat, %struct.be_cmd_resp_get_fat* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @le32_to_cpu(i8* %106)
  %108 = call i32 @memcpy(i8* %100, i32 %103, i32 %107)
  br label %115

109:                                              ; preds = %62
  %110 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %123

115:                                              ; preds = %95
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %13, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %13, align 8
  br label %46

122:                                              ; preds = %46
  br label %123

123:                                              ; preds = %122, %109, %59
  %124 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %125 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %130 = load %struct.be_cmd_resp_get_fat*, %struct.be_cmd_resp_get_fat** %129, align 8
  %131 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pci_free_consistent(%struct.TYPE_3__* %126, i32 %128, %struct.be_cmd_resp_get_fat* %130, i32 %132)
  %134 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %135 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %134, i32 0, i32 0
  %136 = call i32 @spin_unlock_bh(i32* %135)
  br label %137

137:                                              ; preds = %123, %34, %19
  ret void
}

declare dso_local %struct.be_cmd_resp_get_fat* @pci_alloc_consistent(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i64, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @be_mcc_notify_wait(%struct.be_adapter*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @pci_free_consistent(%struct.TYPE_3__*, i32, %struct.be_cmd_resp_get_fat*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
