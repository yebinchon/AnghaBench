; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_dma_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, i32, i32, %struct.rsxx_dma_ctrl*, i32, i64, i64, i64 }
%struct.rsxx_dma_ctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32*, i32*, %struct.rsxx_cardinfo*, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"Initializing %d DMA targets\0A\00", align 1
@STATUS_BUFFER_SIZE8 = common dso_local global i32 0, align 4
@COMMAND_BUFFER_SIZE8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_dma_setup(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsxx_dma_ctrl*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %8 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %9 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %8)
  %10 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %11 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %22 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 4096
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %29 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %28, i32 0, i32 3
  %30 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %30, i64 %32
  %34 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %33, i32 0, i32 7
  store i64 %27, i64* %34, align 8
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %40 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %42 = call i32 @rsxx_dma_queue_reset(%struct.rsxx_cardinfo* %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %80, %38
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %46 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %43
  %50 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %51 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %54 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %53, i32 0, i32 3
  %55 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %55, i64 %57
  %59 = call i32 @rsxx_dma_ctrl_init(i32 %52, %struct.rsxx_dma_ctrl* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %117

63:                                               ; preds = %49
  %64 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %65 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %66 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %65, i32 0, i32 3
  %67 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %67, i64 %69
  %71 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %70, i32 0, i32 6
  store %struct.rsxx_cardinfo* %64, %struct.rsxx_cardinfo** %71, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %74 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %73, i32 0, i32 3
  %75 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %75, i64 %77
  %79 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %78, i32 0, i32 0
  store i32 %72, i32* %79, align 8
  br label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %43

83:                                               ; preds = %43
  %84 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %85 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %87 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %92 = call i32 @rsxx_dma_configure(%struct.rsxx_cardinfo* %91)
  br label %93

93:                                               ; preds = %90, %83
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %97 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %102 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %101, i32 0, i32 4
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @spin_lock_irqsave(i32* %102, i64 %103)
  %105 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @CR_INTR_DMA(i32 %106)
  %108 = call i32 @rsxx_enable_ier_and_isr(%struct.rsxx_cardinfo* %105, i32 %107)
  %109 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %110 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %109, i32 0, i32 4
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %94

116:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %210

117:                                              ; preds = %62
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %205, %117
  %119 = load i32, i32* %6, align 4
  %120 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %121 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %208

124:                                              ; preds = %118
  %125 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %126 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %125, i32 0, i32 3
  %127 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %127, i64 %129
  store %struct.rsxx_dma_ctrl* %130, %struct.rsxx_dma_ctrl** %7, align 8
  %131 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %132 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %124
  %136 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %137 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @destroy_workqueue(i32* %138)
  %140 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %141 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %140, i32 0, i32 5
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %135, %124
  %143 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %144 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %149 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @destroy_workqueue(i32* %150)
  %152 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %153 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %152, i32 0, i32 4
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %147, %142
  %155 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %156 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %161 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @vfree(i64 %162)
  br label %164

164:                                              ; preds = %159, %154
  %165 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %166 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %164
  %171 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %172 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @STATUS_BUFFER_SIZE8, align 4
  %175 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %176 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %180 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @pci_free_consistent(i32 %173, i32 %174, i64 %178, i32 %182)
  br label %184

184:                                              ; preds = %170, %164
  %185 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %186 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %184
  %191 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %192 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @COMMAND_BUFFER_SIZE8, align 4
  %195 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %196 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.rsxx_dma_ctrl*, %struct.rsxx_dma_ctrl** %7, align 8
  %200 = getelementptr inbounds %struct.rsxx_dma_ctrl, %struct.rsxx_dma_ctrl* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @pci_free_consistent(i32 %193, i32 %194, i64 %198, i32 %202)
  br label %204

204:                                              ; preds = %190, %184
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %118

208:                                              ; preds = %118
  %209 = load i32, i32* %5, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %116
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_dma_queue_reset(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_dma_ctrl_init(i32, %struct.rsxx_dma_ctrl*) #1

declare dso_local i32 @rsxx_dma_configure(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rsxx_enable_ier_and_isr(%struct.rsxx_cardinfo*, i32) #1

declare dso_local i32 @CR_INTR_DMA(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @vfree(i64) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
