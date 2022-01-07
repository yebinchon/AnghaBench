; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_extract_wakeup_device_power_package.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_bus_extract_wakeup_device_power_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%union.acpi_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %union.acpi_object* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@AE_BAD_DATA = common dso_local global i32 0, align 4
@ACPI_MAX_HANDLES = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*, %union.acpi_object*)* @acpi_bus_extract_wakeup_device_power_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_extract_wakeup_device_power_package(%struct.acpi_device* %0, %union.acpi_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_object*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store %union.acpi_object* %1, %union.acpi_object** %5, align 8
  store i32 0, i32* %6, align 4
  store %union.acpi_object* null, %union.acpi_object** %7, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %12 = icmp ne %union.acpi_object* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %15 = bitcast %union.acpi_object* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %10, %2
  %20 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %20, i32* %3, align 4
  br label %187

21:                                               ; preds = %13
  %22 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %23 = bitcast %union.acpi_object* %22 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %26 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %25, i64 0
  store %union.acpi_object* %26, %union.acpi_object** %7, align 8
  %27 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %28 = icmp ne %union.acpi_object* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %30, i32* %3, align 4
  br label %187

31:                                               ; preds = %21
  %32 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %33 = bitcast %union.acpi_object* %32 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 2
  br i1 %42, label %63, label %43

43:                                               ; preds = %37
  %44 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %union.acpi_object*, %union.acpi_object** %46, align 8
  %48 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %47, i64 0
  %49 = bitcast %union.acpi_object* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %43
  %54 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %union.acpi_object*, %union.acpi_object** %56, align 8
  %58 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %57, i64 1
  %59 = bitcast %union.acpi_object* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53, %43, %37
  %64 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %64, i32* %3, align 4
  br label %187

65:                                               ; preds = %53
  %66 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_7__*
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %union.acpi_object*, %union.acpi_object** %68, align 8
  %70 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %69, i64 0
  %71 = bitcast %union.acpi_object* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 8
  %77 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %78 = bitcast %union.acpi_object* %77 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %union.acpi_object*, %union.acpi_object** %79, align 8
  %81 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %80, i64 1
  %82 = bitcast %union.acpi_object* %81 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %86 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  store i64 %84, i64* %87, align 8
  br label %105

88:                                               ; preds = %31
  %89 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %90 = bitcast %union.acpi_object* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %96 = bitcast %union.acpi_object* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %100 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i64 %98, i64* %101, align 8
  br label %104

102:                                              ; preds = %88
  %103 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %103, i32* %3, align 4
  br label %187

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %65
  %106 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %107 = bitcast %union.acpi_object* %106 to %struct.TYPE_7__*
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load %union.acpi_object*, %union.acpi_object** %108, align 8
  %110 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %109, i64 1
  store %union.acpi_object* %110, %union.acpi_object** %7, align 8
  %111 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %112 = bitcast %union.acpi_object* %111 to i64*
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %117, i32* %3, align 4
  br label %187

118:                                              ; preds = %105
  %119 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %120 = bitcast %union.acpi_object* %119 to %struct.TYPE_6__*
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %124 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i64 %122, i64* %125, align 8
  %126 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %127 = bitcast %union.acpi_object* %126 to %struct.TYPE_7__*
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 2
  %131 = load i32, i32* @ACPI_MAX_HANDLES, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %118
  %134 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %134, i32* %3, align 4
  br label %187

135:                                              ; preds = %118
  %136 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %137 = bitcast %union.acpi_object* %136 to %struct.TYPE_7__*
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 2
  %141 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %142 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 8
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %182, %135
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %148 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %146, %151
  br i1 %152, label %153, label %185

153:                                              ; preds = %145
  %154 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %155 = bitcast %union.acpi_object* %154 to %struct.TYPE_7__*
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load %union.acpi_object*, %union.acpi_object** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %157, i64 %160
  store %union.acpi_object* %161, %union.acpi_object** %7, align 8
  %162 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %163 = bitcast %union.acpi_object* %162 to i64*
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %168, i32* %3, align 4
  br label %187

169:                                              ; preds = %153
  %170 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %171 = bitcast %union.acpi_object* %170 to %struct.TYPE_10__*
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %175 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %173, i32* %181, align 4
  br label %182

182:                                              ; preds = %169
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %145

185:                                              ; preds = %145
  %186 = load i32, i32* @AE_OK, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %167, %133, %116, %102, %63, %29, %19
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
