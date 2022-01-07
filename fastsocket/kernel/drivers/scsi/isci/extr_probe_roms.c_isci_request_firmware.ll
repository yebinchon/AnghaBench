; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_probe_roms.c_isci_request_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_probe_roms.c_isci_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_orom = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.firmware = type { i32, i64 }

@ISCI_FW_NAME = common dso_local global i32 0, align 4
@ISCI_ROM_SIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.isci_orom* @isci_request_firmware(%struct.pci_dev* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.isci_orom*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.isci_orom*, align 8
  %7 = alloca %struct.isci_orom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store %struct.isci_orom* null, %struct.isci_orom** %6, align 8
  %10 = load i32, i32* @ISCI_FW_NAME, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call i64 @request_firmware(%struct.firmware** %5, i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.isci_orom* null, %struct.isci_orom** %3, align 8
  br label %148

16:                                               ; preds = %2
  %17 = load %struct.firmware*, %struct.firmware** %5, align 8
  %18 = getelementptr inbounds %struct.firmware, %struct.firmware* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 16
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %144

23:                                               ; preds = %16
  %24 = load %struct.firmware*, %struct.firmware** %5, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.isci_orom*
  store %struct.isci_orom* %27, %struct.isci_orom** %7, align 8
  %28 = load i32, i32* @ISCI_ROM_SIG, align 4
  %29 = load %struct.isci_orom*, %struct.isci_orom** %7, align 8
  %30 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ISCI_ROM_SIG, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = call i64 @strncmp(i32 %28, i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %144

38:                                               ; preds = %23
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load %struct.firmware*, %struct.firmware** %5, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.isci_orom* @devm_kzalloc(i32* %40, i32 %43, i32 %44)
  store %struct.isci_orom* %45, %struct.isci_orom** %6, align 8
  %46 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %47 = icmp ne %struct.isci_orom* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  br label %144

49:                                               ; preds = %38
  %50 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %51 = load %struct.firmware*, %struct.firmware** %5, align 8
  %52 = getelementptr inbounds %struct.firmware, %struct.firmware* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.firmware*, %struct.firmware** %5, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(%struct.isci_orom* %50, i64 %53, i32 %56)
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i64 @is_c0(%struct.pci_dev* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i64 @is_c1(%struct.pci_dev* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %49
  br label %144

66:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %140, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %70 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %71)
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %143

74:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %136, %74
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %78 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %84)
  %86 = icmp slt i32 %76, %85
  br i1 %86, label %87, label %139

87:                                               ; preds = %75
  %88 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %89 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 949251, i32* %99, align 8
  %100 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %101 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 949251, i32* %111, align 4
  %112 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %113 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  store i32 949251, i32* %123, align 8
  %124 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  %125 = getelementptr inbounds %struct.isci_orom, %struct.isci_orom* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  store i32 949251, i32* %135, align 4
  br label %136

136:                                              ; preds = %87
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %75

139:                                              ; preds = %75
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %67

143:                                              ; preds = %67
  br label %144

144:                                              ; preds = %143, %65, %48, %37, %22
  %145 = load %struct.firmware*, %struct.firmware** %5, align 8
  %146 = call i32 @release_firmware(%struct.firmware* %145)
  %147 = load %struct.isci_orom*, %struct.isci_orom** %6, align 8
  store %struct.isci_orom* %147, %struct.isci_orom** %3, align 8
  br label %148

148:                                              ; preds = %144, %15
  %149 = load %struct.isci_orom*, %struct.isci_orom** %3, align 8
  ret %struct.isci_orom* %149
}

declare dso_local i64 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.isci_orom* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.isci_orom*, i64, i32) #1

declare dso_local i64 @is_c0(%struct.pci_dev*) #1

declare dso_local i64 @is_c1(%struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
