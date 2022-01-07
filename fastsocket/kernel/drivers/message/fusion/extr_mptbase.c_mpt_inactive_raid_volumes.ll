; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_inactive_raid_volumes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptbase.c_mpt_inactive_raid_volumes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.inactive_raid_component_info = type { i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@MPI_CONFIG_PAGETYPE_RAID_VOLUME = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_HEADER = common dso_local global i32 0, align 4
@MPI_CONFIG_ACTION_PAGE_READ_CURRENT = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_STATUS_FLAG_VOLUME_INACTIVE = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_STATUS_FLAG_ENABLED = common dso_local global i32 0, align 4
@MPI_RAIDVOL0_STATUS_STATE_FAILED = common dso_local global i64 0, align 8
@MPI_RAIDVOL0_STATUS_STATE_MISSING = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, i32, i32)* @mpt_inactive_raid_volumes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_inactive_raid_volumes(%struct.TYPE_26__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__, align 4
  %13 = alloca %struct.inactive_raid_component_info*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  %15 = call i32 @memset(%struct.TYPE_27__* %7, i32 0, i32 32)
  %16 = call i32 @memset(%struct.TYPE_27__* %8, i32 0, i32 32)
  %17 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_VOLUME, align 4
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 5
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store %struct.TYPE_27__* %8, %struct.TYPE_27__** %25, align 8
  %26 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_HEADER, align 4
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = call i64 @mpt_config(%struct.TYPE_26__* %28, %struct.TYPE_27__* %7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %170

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  br label %170

37:                                               ; preds = %32
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 4
  %44 = call %struct.TYPE_24__* @pci_alloc_consistent(i32 %40, i32 %43, i32* %9)
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %10, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %46 = icmp ne %struct.TYPE_24__* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %170

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_CURRENT, align 4
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %54 = call i64 @mpt_config(%struct.TYPE_26__* %53, %struct.TYPE_27__* %7)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %170

57:                                               ; preds = %48
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %170

63:                                               ; preds = %57
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @MPI_RAIDVOL0_STATUS_FLAG_VOLUME_INACTIVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @MPI_RAIDVOL0_STATUS_FLAG_ENABLED, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MPI_RAIDVOL0_STATUS_STATE_FAILED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MPI_RAIDVOL0_STATUS_STATE_MISSING, align 8
  %92 = icmp eq i64 %90, %91
  br label %93

93:                                               ; preds = %86, %79, %71, %63
  %94 = phi i1 [ true, %79 ], [ true, %71 ], [ true, %63 ], [ %92, %86 ]
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %170

100:                                              ; preds = %93
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = call i32 @mutex_lock(i32* %103)
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %162, %100
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %165

111:                                              ; preds = %105
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @mpt_raid_phys_disk_pg0(%struct.TYPE_26__* %112, i32 %120, %struct.TYPE_25__* %12)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %111
  br label %162

124:                                              ; preds = %111
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call %struct.inactive_raid_component_info* @kmalloc(i32 28, i32 %125)
  store %struct.inactive_raid_component_info* %126, %struct.inactive_raid_component_info** %13, align 8
  %127 = icmp eq %struct.inactive_raid_component_info* %126, null
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %162

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %132 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %135 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %139 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  store i32 %137, i32* %140, align 4
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %144 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %149 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %154 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load %struct.inactive_raid_component_info*, %struct.inactive_raid_component_info** %13, align 8
  %157 = getelementptr inbounds %struct.inactive_raid_component_info, %struct.inactive_raid_component_info* %156, i32 0, i32 2
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = call i32 @list_add_tail(i32* %157, i32* %160)
  br label %162

162:                                              ; preds = %129, %128, %123
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %105

165:                                              ; preds = %105
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %170

170:                                              ; preds = %165, %99, %62, %56, %47, %36, %31
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %172 = icmp ne %struct.TYPE_24__* %171, null
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @pci_free_consistent(i32 %176, i32 %179, %struct.TYPE_24__* %180, i32 %181)
  br label %183

183:                                              ; preds = %173, %170
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @mpt_config(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_24__* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @mpt_raid_phys_disk_pg0(%struct.TYPE_26__*, i32, %struct.TYPE_25__*) #1

declare dso_local %struct.inactive_raid_component_info* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
