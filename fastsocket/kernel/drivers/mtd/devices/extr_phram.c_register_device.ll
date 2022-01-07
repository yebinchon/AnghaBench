; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_phram.c_register_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_phram.c_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phram_mtd_list = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioremap failed\0A\00", align 1
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@phram_erase = common dso_local global i32 0, align 4
@phram_point = common dso_local global i32 0, align 4
@phram_unpoint = common dso_local global i32 0, align 4
@phram_read = common dso_local global i32 0, align 4
@phram_write = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to register new device\0A\00", align 1
@phram_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_device(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.phram_mtd_list*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.phram_mtd_list* @kzalloc(i32 72, i32 %12)
  store %struct.phram_mtd_list* %13, %struct.phram_mtd_list** %8, align 8
  %14 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %15 = icmp ne %struct.phram_mtd_list* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %102

17:                                               ; preds = %3
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @ioremap(i64 %20, i64 %21)
  %23 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %24 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %27 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %99

33:                                               ; preds = %17
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %36 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %40 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* @MTD_CAP_RAM, align 4
  %43 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %44 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 12
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @phram_erase, align 4
  %47 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %48 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 11
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @phram_point, align 4
  %51 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %52 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 10
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @phram_unpoint, align 4
  %55 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %56 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 9
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @phram_read, align 4
  %59 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %60 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @phram_write, align 4
  %63 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %64 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @THIS_MODULE, align 4
  %67 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %68 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 6
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @MTD_RAM, align 4
  %71 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %72 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 5
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %76 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %79 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  %83 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %84 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %83, i32 0, i32 0
  %85 = call i64 @add_mtd_device(%struct.TYPE_2__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %33
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %93

89:                                               ; preds = %33
  %90 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %91 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %90, i32 0, i32 1
  %92 = call i32 @list_add_tail(i32* %91, i32* @phram_list)
  store i32 0, i32* %4, align 4
  br label %104

93:                                               ; preds = %87
  %94 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %95 = getelementptr inbounds %struct.phram_mtd_list, %struct.phram_mtd_list* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @iounmap(i32 %97)
  br label %99

99:                                               ; preds = %93, %31
  %100 = load %struct.phram_mtd_list*, %struct.phram_mtd_list** %8, align 8
  %101 = call i32 @kfree(%struct.phram_mtd_list* %100)
  br label %102

102:                                              ; preds = %99, %16
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %89
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.phram_mtd_list* @kzalloc(i32, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @add_mtd_device(%struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.phram_mtd_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
