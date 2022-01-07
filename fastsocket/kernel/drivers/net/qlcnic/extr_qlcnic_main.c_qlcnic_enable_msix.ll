; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_enable_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_enable_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.pci_dev = type { i32 }

@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed allocating msix_entries\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"using msi-x interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to allocate %d MSI-X interrupt vectors\0A\00", align 1
@QLC_83XX_MINIMUM_VECTOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Trying to allocate %d MSI-X interrupt vectors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_enable_msix(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 5
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %6, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_5__* @kcalloc(i32 %31, i32 4, i32 %32)
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %34, i32 0, i32 4
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %172

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %51 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %170

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %157, %64
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %79, %65
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %84 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %84, i32 0, i32 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @pci_enable_msix(%struct.pci_dev* %83, %struct.TYPE_5__* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %82
  %92 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %98 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  br label %116

112:                                              ; preds = %91
  %113 = load i32, i32* %5, align 4
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %115 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %100
  %117 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %118 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %117, i32 0, i32 0
  %119 = call i32 (i32*, i8*, ...) @dev_info(i32* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %172

121:                                              ; preds = %82
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %121
  %125 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 0
  %127 = load i32, i32* %5, align 4
  %128 = call i32 (i32*, i8*, ...) @dev_info(i32* %126, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %130 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %124
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @QLC_83XX_MINIMUM_VECTOR, align 4
  %135 = load i32, i32* %10, align 4
  %136 = sub nsw i32 %134, %135
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %3, align 4
  br label %172

140:                                              ; preds = %132
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @rounddown_pow_of_two(i32 %145)
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, %148
  store i32 %150, i32* %5, align 4
  br label %154

151:                                              ; preds = %124
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @rounddown_pow_of_two(i32 %152)
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %151, %140
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %5, align 4
  %161 = call i32 (i32*, i8*, ...) @dev_info(i32* %159, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  br label %65

162:                                              ; preds = %154
  br label %168

163:                                              ; preds = %121
  %164 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 0
  %166 = load i32, i32* %5, align 4
  %167 = call i32 (i32*, i8*, ...) @dev_info(i32* %165, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %163, %162
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169, %47
  %171 = load i32, i32* %7, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %138, %116, %40
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_5__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_enable_msix(%struct.pci_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
