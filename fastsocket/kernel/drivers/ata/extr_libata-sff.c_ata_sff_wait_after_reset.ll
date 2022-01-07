; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_wait_after_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-sff.c_ata_sff_wait_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__*, %struct.ata_ioports }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32)* }
%struct.ata_ioports = type { i32, i32 }

@ATA_WAIT_AFTER_RESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_wait_after_reset(%struct.ata_link* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.ata_ioports*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %17 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %18 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %17, i32 0, i32 0
  %19 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  store %struct.ata_port* %19, %struct.ata_port** %8, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  store %struct.ata_ioports* %21, %struct.ata_ioports** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 2
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %26 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %27 = load i32, i32* @ATA_WAIT_AFTER_RESET, align 4
  %28 = call i32 @ata_msleep(%struct.ata_port* %26, i32 %27)
  %29 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ata_sff_wait_ready(%struct.ata_link* %29, i64 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %118

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %36
  %40 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %43, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %46 = call i32 %44(%struct.ata_port* %45, i32 1)
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %68, %39
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load %struct.ata_ioports*, %struct.ata_ioports** %9, align 8
  %52 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ioread8(i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.ata_ioports*, %struct.ata_ioports** %9, align 8
  %56 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ioread8(i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %71

65:                                               ; preds = %61, %50
  %66 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %67 = call i32 @ata_msleep(%struct.ata_port* %66, i32 50)
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %14, align 4
  br label %47

71:                                               ; preds = %64, %47
  %72 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @ata_sff_wait_ready(%struct.ata_link* %72, i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp ne i32 %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %118

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %84, %71
  br label %87

87:                                               ; preds = %86, %36
  %88 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %89 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %91, align 8
  %93 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %94 = call i32 %92(%struct.ata_port* %93, i32 0)
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %87
  %98 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %99 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %101, align 8
  %103 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %104 = call i32 %102(%struct.ata_port* %103, i32 1)
  br label %105

105:                                              ; preds = %97, %87
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %110 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %112, align 8
  %114 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %115 = call i32 %113(%struct.ata_port* %114, i32 0)
  br label %116

116:                                              ; preds = %108, %105
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %82, %34
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_sff_wait_ready(%struct.ata_link*, i64) #1

declare dso_local i32 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
