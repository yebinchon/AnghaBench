; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dump_identify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_dump_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Serial No.: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Firmware Ver.: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Model: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Capacity: %llu sectors (%llu MB)\0A\00", align 1
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Card Type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*)* @mtip_dump_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_dump_identify(%struct.mtip_port* %0) #0 {
  %2 = alloca %struct.mtip_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca [42 x i8], align 16
  store %struct.mtip_port* %0, %struct.mtip_port** %2, align 8
  %6 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %7 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %106

11:                                               ; preds = %1
  %12 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %13 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %14 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 10
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @strlcpy(i8* %12, i8* %17, i32 21)
  %19 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %20 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %26 = call i32 (i32*, i8*, ...) @dev_info(i32* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %28 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %29 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 23
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @strlcpy(i8* %27, i8* %32, i32 9)
  %34 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %35 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %41 = call i32 (i32*, i8*, ...) @dev_info(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %43 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %44 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 27
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @strlcpy(i8* %42, i8* %47, i32 41)
  %49 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %50 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %56 = call i32 (i32*, i8*, ...) @dev_info(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %58 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i64 @mtip_hw_get_capacity(%struct.TYPE_4__* %59, i64* %3)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %11
  %63 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %64 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %3, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %3, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @ATA_SECT_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  %75 = ashr i32 %74, 20
  %76 = call i32 (i32*, i8*, ...) @dev_info(i32* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %62, %11
  %78 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %79 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* @PCI_REVISION_ID, align 4
  %84 = call i32 @pci_read_config_word(%struct.TYPE_3__* %82, i32 %83, i16* %4)
  %85 = load i16, i16* %4, align 2
  %86 = zext i16 %85 to i32
  %87 = and i32 %86, 255
  switch i32 %87, label %94 [
    i32 1, label %88
    i32 3, label %91
  ]

88:                                               ; preds = %77
  %89 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %90 = call i32 @strlcpy(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 3)
  br label %97

91:                                               ; preds = %77
  %92 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %93 = call i32 @strlcpy(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 3)
  br label %97

94:                                               ; preds = %77
  %95 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %96 = call i32 @strlcpy(i8* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 2)
  br label %97

97:                                               ; preds = %94, %91, %88
  %98 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %99 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = getelementptr inbounds [42 x i8], [42 x i8]* %5, i64 0, i64 0
  %105 = call i32 (i32*, i8*, ...) @dev_info(i32* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %97, %10
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @mtip_hw_get_capacity(%struct.TYPE_4__*, i64*) #1

declare dso_local i32 @pci_read_config_word(%struct.TYPE_3__*, i32, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
