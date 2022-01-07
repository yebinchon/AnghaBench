; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_clear_masks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_topology.c_clear_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mask_info = type { %struct.mask_info*, i32 }

@core_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@book_info = common dso_local global %struct.mask_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_masks() #0 {
  %1 = alloca %struct.mask_info*, align 8
  store %struct.mask_info* @core_info, %struct.mask_info** %1, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = load %struct.mask_info*, %struct.mask_info** %1, align 8
  %4 = icmp ne %struct.mask_info* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load %struct.mask_info*, %struct.mask_info** %1, align 8
  %7 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @cpus_clear(i32 %8)
  %10 = load %struct.mask_info*, %struct.mask_info** %1, align 8
  %11 = getelementptr inbounds %struct.mask_info, %struct.mask_info* %10, i32 0, i32 0
  %12 = load %struct.mask_info*, %struct.mask_info** %11, align 8
  store %struct.mask_info* %12, %struct.mask_info** %1, align 8
  br label %2

13:                                               ; preds = %2
  ret void
}

declare dso_local i32 @cpus_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
