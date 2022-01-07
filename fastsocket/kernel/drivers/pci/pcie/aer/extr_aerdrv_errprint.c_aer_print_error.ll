; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_errprint.c_aer_print_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_errprint.c_aer_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aer_err_info = type { i32, i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [80 x i8] c"PCIe Bus Error: severity=%s, type=Unaccessible, id=%04x(Unregistered Agent ID)\0A\00", align 1
@aer_error_severity_string = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"PCIe Bus Error: severity=%s, type=%s, id=%04x(%s)\0A\00", align 1
@aer_error_layer = common dso_local global i32* null, align 8
@aer_agent_string = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"  device [%04x:%04x] error status/mask=%08x/%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"  TLP Header: %02x%02x%02x%02x %02x%02x%02x%02x %02x%02x%02x%02x %02x%02x%02x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"  Error of this Agent(%04x) is reported first\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aer_print_error(%struct.pci_dev* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %14, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %20 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i32*, i32** @aer_error_severity_string, align 8
  %27 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %28 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %162

34:                                               ; preds = %2
  %35 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %36 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %39 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @AER_GET_LAYER_ERROR(i64 %37, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %43 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %46 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @AER_GET_AGENT(i64 %44, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = load i32*, i32** @aer_error_severity_string, align 8
  %52 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %53 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** @aer_error_layer, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** @aer_agent_string, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %61, i32 %62, i32 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 1
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %78 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %81 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %85 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %86 = call i32 @__aer_print_error(%struct.pci_dev* %84, %struct.aer_err_info* %85)
  %87 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %88 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %161

91:                                               ; preds = %34
  %92 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %93 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %92, i32 0, i32 5
  %94 = bitcast i32* %93 to i8*
  store i8* %94, i8** %8, align 8
  %95 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 1
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 2
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i8*, i8** %8, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 6
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 5
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 4
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 11
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 10
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 9
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 8
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 15
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i8*, i8** %8, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 14
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 13
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 12
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %104, i32 %108, i32 %111, i32 %115, i32 %119, i32 %123, i32 %127, i32 %131, i32 %135, i32 %139, i32 %143, i32 %147, i32 %151, i32 %155, i32 %159)
  br label %161

161:                                              ; preds = %91, %34
  br label %162

162:                                              ; preds = %161, %23
  %163 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %164 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %169 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %174 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %180 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %179, i32 0, i32 1
  %181 = load i32, i32* %5, align 4
  %182 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %180, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %178, %172, %167, %162
  %184 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %185 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %184, i32 0, i32 1
  %186 = call i32 @dev_name(i32* %185)
  %187 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %188 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %191 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = xor i32 %192, -1
  %194 = and i32 %189, %193
  %195 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %196 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @trace_aer_event(i32 %186, i32 %194, i64 %197)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @AER_GET_LAYER_ERROR(i64, i32) #1

declare dso_local i32 @AER_GET_AGENT(i64, i32) #1

declare dso_local i32 @__aer_print_error(%struct.pci_dev*, %struct.aer_err_info*) #1

declare dso_local i32 @trace_aer_event(i32, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
