; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_link_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_link_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_link* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_link_online(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_link*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %4 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %5 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  store %struct.ata_link* %8, %struct.ata_link** %3, align 8
  %9 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %11 = icmp eq %struct.ata_link* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %15 = call i64 @ata_phys_link_online(%struct.ata_link* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %19 = icmp ne %struct.ata_link* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %22 = call i64 @ata_phys_link_online(%struct.ata_link* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi i1 [ true, %1 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ata_phys_link_online(%struct.ata_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
