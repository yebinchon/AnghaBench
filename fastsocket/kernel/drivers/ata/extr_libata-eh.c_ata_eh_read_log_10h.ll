; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_read_log_10h.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_read_log_10h.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ata_taskfile = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_LOG_SATA_NCQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid checksum 0x%x on log page 10h\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32*, %struct.ata_taskfile*)* @ata_eh_read_log_10h to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_read_log_10h(%struct.ata_device* %0, i32* %1, %struct.ata_taskfile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ata_taskfile*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ata_taskfile* %2, %struct.ata_taskfile** %7, align 8
  %12 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %13 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %20 = load i32, i32* @ATA_LOG_SATA_NCQ, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ata_read_log_page(%struct.ata_device* %19, i32 %20, i32* %21, i32 1)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %122

28:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ATA_SECT_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %49 = load i32, i32* @KERN_WARNING, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ata_dev_printk(%struct.ata_device* %48, i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %122

61:                                               ; preds = %52
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 31
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %71 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %76 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %81 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %86 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %91 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %96 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %101 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %106 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 10
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %111 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 12
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %116 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = load i32*, i32** %8, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 13
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ata_taskfile*, %struct.ata_taskfile** %7, align 8
  %121 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 4
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %61, %58, %25
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @ata_read_log_page(%struct.ata_device*, i32, i32*, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
