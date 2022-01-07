; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_nvram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { i32 }
%struct.sym_nvram = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SYM_SYMBIOS_NVRAM = common dso_local global i32 0, align 4
@SYM_TEKRAM_NVRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sym_read_nvram(%struct.sym_device* %0, %struct.sym_nvram* %1) #0 {
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca %struct.sym_nvram*, align 8
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  store %struct.sym_nvram* %1, %struct.sym_nvram** %4, align 8
  %5 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %6 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %7 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i32 @sym_read_Symbios_nvram(%struct.sym_device* %5, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @SYM_SYMBIOS_NVRAM, align 4
  %13 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %14 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %16 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %17 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = call i32 @sym_display_Symbios_nvram(%struct.sym_device* %15, i32* %18)
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %22 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %23 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @sym_read_Tekram_nvram(%struct.sym_device* %21, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @SYM_TEKRAM_NVRAM, align 4
  %29 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %30 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %32 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %33 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @sym_display_Tekram_nvram(%struct.sym_device* %31, i32* %34)
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %38 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %39 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @sym_read_parisc_pdc(%struct.sym_device* %37, i32* %40)
  %42 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %43 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %27
  br label %45

45:                                               ; preds = %44, %11
  %46 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %47 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  ret i32 %48
}

declare dso_local i32 @sym_read_Symbios_nvram(%struct.sym_device*, i32*) #1

declare dso_local i32 @sym_display_Symbios_nvram(%struct.sym_device*, i32*) #1

declare dso_local i32 @sym_read_Tekram_nvram(%struct.sym_device*, i32*) #1

declare dso_local i32 @sym_display_Tekram_nvram(%struct.sym_device*, i32*) #1

declare dso_local i32 @sym_read_parisc_pdc(%struct.sym_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
