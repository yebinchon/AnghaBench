; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_wait_after_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_scc.c_scc_wait_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { %struct.TYPE_2__*, %struct.ata_ioports }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32)* }
%struct.ata_ioports = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_wait_after_reset(%struct.ata_link* %0, i32 %1, i64 %2) #0 {
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
  %27 = call i32 @ata_msleep(%struct.ata_port* %26, i32 150)
  %28 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @ata_sff_wait_ready(%struct.ata_link* %28, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  br label %117

35:                                               ; preds = %3
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %35
  %39 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %42, align 8
  %44 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %45 = call i32 %43(%struct.ata_port* %44, i32 1)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %67, %38
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  %50 = load %struct.ata_ioports*, %struct.ata_ioports** %9, align 8
  %51 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @in_be32(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.ata_ioports*, %struct.ata_ioports** %9, align 8
  %55 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @in_be32(i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %70

64:                                               ; preds = %60, %49
  %65 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %66 = call i32 @ata_msleep(%struct.ata_port* %65, i32 50)
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %46

70:                                               ; preds = %63, %46
  %71 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @ata_sff_wait_ready(%struct.ata_link* %71, i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %117

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %83, %70
  br label %86

86:                                               ; preds = %85, %35
  %87 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %88 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %90, align 8
  %92 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %93 = call i32 %91(%struct.ata_port* %92, i32 0)
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %86
  %97 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %98 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %100, align 8
  %102 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %103 = call i32 %101(%struct.ata_port* %102, i32 1)
  br label %104

104:                                              ; preds = %96, %86
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %109 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %111, align 8
  %113 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %114 = call i32 %112(%struct.ata_port* %113, i32 0)
  br label %115

115:                                              ; preds = %107, %104
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %81, %33
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_sff_wait_ready(%struct.ata_link*, i64) #1

declare dso_local i32 @in_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
