; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_get_volume_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_kapi.c_ubi_get_volume_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ubi_volume_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_get_volume_info(%struct.ubi_volume_desc* %0, %struct.ubi_volume_info* %1) #0 {
  %3 = alloca %struct.ubi_volume_desc*, align 8
  %4 = alloca %struct.ubi_volume_info*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %3, align 8
  store %struct.ubi_volume_info* %1, %struct.ubi_volume_info** %4, align 8
  %5 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %6 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %4, align 8
  %14 = call i32 @ubi_do_get_volume_info(i32 %9, %struct.TYPE_2__* %12, %struct.ubi_volume_info* %13)
  ret void
}

declare dso_local i32 @ubi_do_get_volume_info(i32, %struct.TYPE_2__*, %struct.ubi_volume_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
