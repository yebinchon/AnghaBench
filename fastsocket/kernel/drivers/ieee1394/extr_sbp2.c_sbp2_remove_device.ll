; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i64, %struct.TYPE_7__*, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, %struct.sbp2_fwhost_info* }
%struct.TYPE_7__ = type { i32 }
%struct.sbp2_fwhost_info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@sbp2_hi_logical_units_lock = common dso_local global i32 0, align 4
@CSR1212_INVALID_ADDR_SPACE = common dso_local global i64 0, align 8
@sbp2_highlevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_lu*)* @sbp2_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2_remove_device(%struct.sbp2_lu* %0) #0 {
  %2 = alloca %struct.sbp2_lu*, align 8
  %3 = alloca %struct.sbp2_fwhost_info*, align 8
  %4 = alloca i64, align 8
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %2, align 8
  %5 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %6 = icmp ne %struct.sbp2_lu* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %187

8:                                                ; preds = %1
  %9 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %10 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %9, i32 0, i32 16
  %11 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %10, align 8
  store %struct.sbp2_fwhost_info* %11, %struct.sbp2_fwhost_info** %3, align 8
  %12 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %13 = icmp ne %struct.sbp2_fwhost_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %184

15:                                               ; preds = %8
  %16 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %17 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %16, i32 0, i32 15
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %22 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @scsi_remove_host(i64 %23)
  %25 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %26 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %25, i32 0, i32 15
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @scsi_host_put(i64 %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = call i32 (...) @flush_scheduled_work()
  %31 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %32 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %33 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @sbp2util_remove_command_orb_pool(%struct.sbp2_lu* %31, %struct.TYPE_9__* %34)
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @write_lock_irqsave(i32* @sbp2_hi_logical_units_lock, i64 %36)
  %38 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %39 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %38, i32 0, i32 14
  %40 = call i32 @list_del(i32* %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @write_unlock_irqrestore(i32* @sbp2_hi_logical_units_lock, i64 %41)
  %43 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %44 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %29
  %48 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %49 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %55 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %58 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_free_coherent(i32 %53, i32 4, i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %47, %29
  %62 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %63 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %62, i32 0, i32 11
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %68 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %74 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %73, i32 0, i32 11
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %77 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dma_free_coherent(i32 %72, i32 4, i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %66, %61
  %81 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %82 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %87 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %93 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %92, i32 0, i32 9
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %96 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dma_free_coherent(i32 %91, i32 4, i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %85, %80
  %100 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %101 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %106 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %112 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %111, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %115 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @dma_free_coherent(i32 %110, i32 4, i64 %113, i32 %116)
  br label %118

118:                                              ; preds = %104, %99
  %119 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %120 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %125 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %131 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %134 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @dma_free_coherent(i32 %129, i32 4, i64 %132, i32 %135)
  br label %137

137:                                              ; preds = %123, %118
  %138 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %139 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %144 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %150 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %153 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @dma_free_coherent(i32 %148, i32 4, i64 %151, i32 %154)
  br label %156

156:                                              ; preds = %142, %137
  %157 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %158 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CSR1212_INVALID_ADDR_SPACE, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %164 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %163, i32 0, i32 0
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %164, align 8
  %166 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %167 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @hpsb_unregister_addrspace(i32* @sbp2_highlevel, %struct.TYPE_9__* %165, i64 %168)
  br label %170

170:                                              ; preds = %162, %156
  %171 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %172 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %171, i32 0, i32 1
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = call i32 @dev_set_drvdata(i32* %174, i32* null)
  %176 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %3, align 8
  %177 = getelementptr inbounds %struct.sbp2_fwhost_info, %struct.sbp2_fwhost_info* %176, i32 0, i32 0
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @module_put(i32 %182)
  br label %184

184:                                              ; preds = %170, %14
  %185 = load %struct.sbp2_lu*, %struct.sbp2_lu** %2, align 8
  %186 = call i32 @kfree(%struct.sbp2_lu* %185)
  br label %187

187:                                              ; preds = %184, %7
  ret void
}

declare dso_local i32 @scsi_remove_host(i64) #1

declare dso_local i32 @scsi_host_put(i64) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @sbp2util_remove_command_orb_pool(%struct.sbp2_lu*, %struct.TYPE_9__*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @hpsb_unregister_addrspace(i32*, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.sbp2_lu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
