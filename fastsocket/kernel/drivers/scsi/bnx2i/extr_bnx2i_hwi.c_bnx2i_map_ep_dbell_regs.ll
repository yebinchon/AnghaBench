; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_map_ep_dbell_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_map_ep_dbell_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_endpoint = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@BNX2I_NX2_DEV_57710 = common dso_local global i32 0, align 4
@BNX2X_DOORBELL_PCI_BAR = common dso_local global i32 0, align 4
@BNX2I_5771X_DBELL_PAGE_SIZE = common dso_local global i32 0, align 4
@DPM_TRIGER_TYPE = common dso_local global i32 0, align 4
@BNX2I_NX2_DEV_5709 = common dso_local global i32 0, align 4
@BNX2I_MQ_BIN_MODE = common dso_local global i64 0, align 8
@BNX2_MQ_CONFIG2 = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG2_FIRST_L4L5 = common dso_local global i32 0, align 4
@BNX2_MQ_CONFIG2_CONT_SZ = common dso_local global i32 0, align 4
@CTX_OFFSET = common dso_local global i32 0, align 4
@MAX_CID_CNT = common dso_local global i32 0, align 4
@MB_KERNEL_CTX_SIZE = common dso_local global i32 0, align 4
@BNX2I_570X_PAGE_SIZE_DEFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CNIC_ARM_CQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_map_ep_dbell_regs(%struct.bnx2i_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2i_endpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2i_endpoint* %0, %struct.bnx2i_endpoint** %3, align 8
  %10 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %11 = call i32 @bnx2i_get_cid_num(%struct.bnx2i_endpoint* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @BNX2I_NX2_DEV_57710, align 4
  %13 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = call i64 @test_bit(i32 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BNX2X_DOORBELL_PCI_BAR, align 4
  %26 = call i32 @pci_resource_start(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @BNX2I_5771X_DBELL_PAGE_SIZE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 131071
  %30 = mul nsw i32 %27, %29
  %31 = load i32, i32* @DPM_TRIGER_TYPE, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  %36 = call i8* @ioremap_nocache(i32 %35, i32 4)
  %37 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  br label %121

40:                                               ; preds = %1
  %41 = load i32, i32* @BNX2I_NX2_DEV_5709, align 4
  %42 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %43 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = call i64 @test_bit(i32 %41, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %40
  %49 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BNX2I_MQ_BIN_MODE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %48
  %57 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %58 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* @BNX2_MQ_CONFIG2, align 4
  %61 = call i32 @REG_RD(%struct.TYPE_4__* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @BNX2_MQ_CONFIG2_FIRST_L4L5, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @BNX2_MQ_CONFIG2_CONT_SZ, align 4
  %67 = and i32 %65, %66
  %68 = ashr i32 %67, 3
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %56
  %72 = load i32, i32* @CTX_OFFSET, align 4
  %73 = load i32, i32* @MAX_CID_CNT, align 4
  %74 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %72, %75
  %77 = load i32, i32* @BNX2I_570X_PAGE_SIZE_DEFAULT, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %80, %81
  %83 = add nsw i32 %82, 256
  %84 = mul nsw i32 %77, %83
  %85 = add nsw i32 %76, %84
  store i32 %85, i32* %5, align 4
  br label %92

86:                                               ; preds = %56
  %87 = load i32, i32* @CTX_OFFSET, align 4
  %88 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %89 = load i32, i32* %4, align 4
  %90 = mul nsw i32 %88, %89
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %86, %71
  br label %99

93:                                               ; preds = %48, %40
  %94 = load i32, i32* @CTX_OFFSET, align 4
  %95 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %96 = load i32, i32* %4, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %92
  %100 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %101 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* @MB_KERNEL_CTX_SIZE, align 4
  %108 = call i8* @ioremap_nocache(i32 %106, i32 %107)
  %109 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %110 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %113 = getelementptr inbounds %struct.bnx2i_endpoint, %struct.bnx2i_endpoint* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %99
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %125

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %19
  %122 = load %struct.bnx2i_endpoint*, %struct.bnx2i_endpoint** %3, align 8
  %123 = load i32, i32* @CNIC_ARM_CQE, align 4
  %124 = call i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint* %122, i32 %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @bnx2i_get_cid_num(%struct.bnx2i_endpoint*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i8* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @REG_RD(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bnx2i_arm_cq_event_coalescing(%struct.bnx2i_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
