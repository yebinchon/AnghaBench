; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_hw_buffers_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_hw_buffers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_dma_ctrl = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.TYPE_3__ = type { i64, i32, i32* }

@STATUS_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@COMMAND_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SB_ADD_LO = common dso_local global i64 0, align 8
@SB_ADD_HI = common dso_local global i64 0, align 8
@CB_ADD_LO = common dso_local global i64 0, align 8
@CB_ADD_HI = common dso_local global i64 0, align 8
@HW_STATUS_CNT = common dso_local global i64 0, align 8
@RSXX_MAX_OUTSTANDING_CMDS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed reading status cnt x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SW_STATUS_CNT = common dso_local global i64 0, align 8
@HW_CMD_IDX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed reading cmd cnt x%x\0A\00", align 1
@SW_CMD_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_hw_buffers_init(%struct.pci_dev* %0, %struct.rsxx_dma_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.rsxx_dma_ctrl*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.rsxx_dma_ctrl* %1, %struct.rsxx_dma_ctrl** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %8 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %9 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i8* @pci_alloc_consistent(%struct.pci_dev* %6, i32 %7, i32* %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %14 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32* %12, i32** %15, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %18 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %19 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i8* @pci_alloc_consistent(%struct.pci_dev* %16, i32 %17, i32* %20)
  %22 = bitcast i8* %21 to i32*
  %23 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %24 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32* %22, i32** %25, align 8
  %26 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %27 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %33 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %191

40:                                               ; preds = %31
  %41 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %42 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %46 = call i32 @memset(i32* %44, i32 172, i32 %45)
  %47 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %48 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @lower_32_bits(i32 %50)
  %52 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %53 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SB_ADD_LO, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @iowrite32(i64 %51, i64 %56)
  %58 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %59 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @upper_32_bits(i32 %61)
  %63 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %64 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SB_ADD_HI, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @iowrite32(i64 %62, i64 %67)
  %69 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %70 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %74 = call i32 @memset(i32* %72, i32 131, i32 %73)
  %75 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %76 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @lower_32_bits(i32 %78)
  %80 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %81 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CB_ADD_LO, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @iowrite32(i64 %79, i64 %84)
  %86 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %87 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @upper_32_bits(i32 %89)
  %91 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %92 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CB_ADD_HI, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @iowrite32(i64 %90, i64 %95)
  %97 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %98 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HW_STATUS_CNT, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i8* @ioread32(i64 %101)
  %103 = ptrtoint i8* %102 to i64
  %104 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %105 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %108 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RSXX_MAX_OUTSTANDING_CMDS, align 8
  %112 = icmp sgt i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %40
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %114, i32 0, i32 0
  %116 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %117 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @dev_crit(i32* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %191

123:                                              ; preds = %40
  %124 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %125 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %129 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @HW_STATUS_CNT, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @iowrite32(i64 %127, i64 %132)
  %134 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %135 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %139 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SW_STATUS_CNT, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @iowrite32(i64 %137, i64 %142)
  %144 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %145 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HW_CMD_IDX, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i8* @ioread32(i64 %148)
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %152 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i64 %150, i64* %153, align 8
  %154 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %155 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @RSXX_MAX_OUTSTANDING_CMDS, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %123
  %161 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %162 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %161, i32 0, i32 0
  %163 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %164 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @dev_crit(i32* %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %191

170:                                              ; preds = %123
  %171 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %172 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %176 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @HW_CMD_IDX, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @iowrite32(i64 %174, i64 %179)
  %181 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %182 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %5, align 8
  %186 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SW_CMD_IDX, align 8
  %189 = add nsw i64 %187, %188
  %190 = call i32 @iowrite32(i64 %184, i64 %189)
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %170, %160, %113, %37
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i8* @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

declare dso_local i8* @ioread32(i64) #1

declare dso_local i32 @dev_crit(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
