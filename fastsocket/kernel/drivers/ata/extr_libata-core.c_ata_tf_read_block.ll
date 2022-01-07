; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_tf_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_tf_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.ata_device = type { i32, i32 }

@ATA_TFLAG_LBA = common dso_local global i32 0, align 4
@ATA_TFLAG_LBA48 = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"device reported invalid CHS sector 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_tf_read_block(%struct.ata_taskfile* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_taskfile*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_taskfile* %0, %struct.ata_taskfile** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %10 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ATA_TFLAG_LBA, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  %16 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %17 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATA_TFLAG_LBA48, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %15
  %23 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %24 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 40
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %31 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 %33, 32
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %38 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 24
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %15
  %45 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %46 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 15
  %49 = shl i32 %48, 24
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %22
  %53 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %54 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %60 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %66 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %107

70:                                               ; preds = %2
  %71 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %72 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 8
  %78 = or i32 %73, %77
  store i32 %78, i32* %6, align 4
  %79 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %80 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  store i32 %82, i32* %7, align 4
  %83 = load %struct.ata_taskfile*, %struct.ata_taskfile** %3, align 8
  %84 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %70
  %89 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %90 = load i32, i32* @KERN_WARNING, align 4
  %91 = call i32 @ata_dev_printk(%struct.ata_device* %89, i32 %90, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %70
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %95 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %101 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %92, %52
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
