; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_eeh_save_issued_dmas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_rsxx_eeh_save_issued_dmas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.rsxx_dma = type { i64, i32, i32 }
%struct.list_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RSXX_MAX_OUTSTANDING_CMDS = common dso_local global i32 0, align 4
@HW_CMD_BLK_WRITE = common dso_local global i64 0, align 8
@HW_CMD_BLK_DISCARD = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsxx_eeh_save_issued_dmas(%struct.rsxx_cardinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsxx_dma*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.rsxx_cardinfo* %0, %struct.rsxx_cardinfo** %3, align 8
  %9 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %10 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.list_head* @kzalloc(i32 %14, i32 %15)
  store %struct.list_head* %16, %struct.list_head** %8, align 8
  %17 = load %struct.list_head*, %struct.list_head** %8, align 8
  %18 = icmp ne %struct.list_head* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %212

22:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %206, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %26 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %209

29:                                               ; preds = %23
  %30 = load %struct.list_head*, %struct.list_head** %8, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 %32
  %34 = call i32 @INIT_LIST_HEAD(%struct.list_head* %33)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %146, %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RSXX_MAX_OUTSTANDING_CMDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %149

39:                                               ; preds = %35
  %40 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %41 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.rsxx_dma* @get_tracker_dma(i32 %47, i32 %48)
  store %struct.rsxx_dma* %49, %struct.rsxx_dma** %7, align 8
  %50 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %51 = icmp eq %struct.rsxx_dma* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  br label %146

53:                                               ; preds = %39
  %54 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %55 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HW_CMD_BLK_WRITE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %61 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  br label %99

70:                                               ; preds = %53
  %71 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %72 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @HW_CMD_BLK_DISCARD, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %78 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  br label %98

87:                                               ; preds = %70
  %88 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %89 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %87, %76
  br label %99

99:                                               ; preds = %98, %59
  %100 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %101 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HW_CMD_BLK_DISCARD, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %99
  %106 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %107 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %110 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %113 = call i32 @get_dma_size(%struct.rsxx_dma* %112)
  %114 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %115 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @HW_CMD_BLK_WRITE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %123

121:                                              ; preds = %105
  %122 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  %125 = call i32 @pci_unmap_page(i32 %108, i32 %111, i32 %113, i32 %124)
  br label %126

126:                                              ; preds = %123, %99
  %127 = load %struct.rsxx_dma*, %struct.rsxx_dma** %7, align 8
  %128 = getelementptr inbounds %struct.rsxx_dma, %struct.rsxx_dma* %127, i32 0, i32 1
  %129 = load %struct.list_head*, %struct.list_head** %8, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.list_head, %struct.list_head* %129, i64 %131
  %133 = call i32 @list_add_tail(i32* %128, %struct.list_head* %132)
  %134 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %135 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @push_tracker(i32 %141, i32 %142)
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %126, %52
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %35

149:                                              ; preds = %35
  %150 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %151 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = call i32 @spin_lock_bh(i32* %156)
  %158 = load %struct.list_head*, %struct.list_head** %8, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.list_head, %struct.list_head* %158, i64 %160
  %162 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %163 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %162, i32 0, i32 1
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 3
  %169 = call i32 @list_splice(%struct.list_head* %161, i32* %168)
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %172 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %171, i32 0, i32 1
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  %179 = call i32 @atomic_sub(i32 %170, i32* %178)
  %180 = load i32, i32* %6, align 4
  %181 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %182 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, %180
  store i32 %190, i32* %188, align 8
  %191 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %192 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %191, i32 0, i32 1
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %199 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = call i32 @spin_unlock_bh(i32* %204)
  br label %206

206:                                              ; preds = %149
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %23

209:                                              ; preds = %23
  %210 = load %struct.list_head*, %struct.list_head** %8, align 8
  %211 = call i32 @kfree(%struct.list_head* %210)
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %209, %19
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.list_head* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.rsxx_dma* @get_tracker_dma(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @get_dma_size(%struct.rsxx_dma*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @push_tracker(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
