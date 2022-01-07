; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_scr_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_scr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_scr_write(%struct.ata_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %9 = call i64 @ata_is_host_link(%struct.ata_link* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %13 = call i64 @sata_scr_valid(%struct.ata_link* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %17 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ata_link*, i32, i32)**
  %23 = load i32 (%struct.ata_link*, i32, i32)*, i32 (%struct.ata_link*, i32, i32)** %22, align 8
  %24 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 %23(%struct.ata_link* %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %11
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @sata_pmp_scr_write(%struct.ata_link* %32, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %28, %15
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i64 @sata_scr_valid(%struct.ata_link*) #1

declare dso_local i32 @sata_pmp_scr_write(%struct.ata_link*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
