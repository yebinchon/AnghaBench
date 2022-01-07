; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_cper_print_pcie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_cper.c_cper_print_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_pcie = type { i32, i64, i64, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i32, i64, i8*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.acpi_hest_generic_data = type { i32 }

@CPER_PCIE_VALID_PORT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%sport_type: %d, %s\0A\00", align 1
@cper_pcie_port_type_strs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@CPER_PCIE_VALID_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"%sversion: %d.%d\0A\00", align 1
@CPER_PCIE_VALID_COMMAND_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%scommand: 0x%04x, status: 0x%04x\0A\00", align 1
@CPER_PCIE_VALID_DEVICE_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"%sdevice_id: %04x:%02x:%02x.%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%sslot: %d\0A\00", align 1
@CPER_PCIE_SLOT_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"%ssecondary_bus: 0x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"%svendor_id: 0x%04x, device_id: 0x%04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%sclass_code: %02x%02x%02x\0A\00", align 1
@CPER_PCIE_VALID_SERIAL_NUMBER = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"%sserial number: 0x%04x, 0x%04x\0A\00", align 1
@CPER_PCIE_VALID_BRIDGE_CONTROL_STATUS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [53 x i8] c"%sbridge: secondary_status: 0x%04x, control: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cper_sec_pcie*, %struct.acpi_hest_generic_data*)* @cper_print_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cper_print_pcie(i8* %0, %struct.cper_sec_pcie* %1, %struct.acpi_hest_generic_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cper_sec_pcie*, align 8
  %6 = alloca %struct.acpi_hest_generic_data*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cper_sec_pcie* %1, %struct.cper_sec_pcie** %5, align 8
  store %struct.acpi_hest_generic_data* %2, %struct.acpi_hest_generic_data** %6, align 8
  %8 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %9 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CPER_PCIE_VALID_PORT_TYPE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %17 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %20 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i8**, i8*** @cper_pcie_port_type_strs, align 8
  %23 = call i64 @ARRAY_SIZE(i8** %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load i8**, i8*** @cper_pcie_port_type_strs, align 8
  %27 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %28 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %25
  %34 = phi i8* [ %31, %25 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %32 ]
  %35 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %15, i64 %18, i8* %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %38 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CPER_PCIE_VALID_VERSION, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %46 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %50 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %44, i64 %48, i8* %52)
  br label %54

54:                                               ; preds = %43, %36
  %55 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %56 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CPER_PCIE_VALID_COMMAND_STATUS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %64 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %67 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %62, i64 %65, i8* %68)
  br label %70

70:                                               ; preds = %61, %54
  %71 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %72 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CPER_PCIE_VALID_DEVICE_ID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %139

77:                                               ; preds = %70
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %80 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %85 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %89 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %93 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %78, i64 %83, i32 %87, i32 %91, i32 %95)
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %99 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CPER_PCIE_SLOT_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %97, i64 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %108 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %106, i64 %111)
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %115 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %119 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %113, i64 %117, i8* %121)
  %123 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %124 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  store i32* %126, i32** %7, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %127, i64 %131, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %77, %70
  %140 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %141 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CPER_PCIE_VALID_SERIAL_NUMBER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = load i8*, i8** %4, align 8
  %148 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %149 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %153 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %147, i64 %151, i8* %155)
  br label %157

157:                                              ; preds = %146, %139
  %158 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %159 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CPER_PCIE_VALID_BRIDGE_CONTROL_STATUS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %157
  %165 = load i8*, i8** %4, align 8
  %166 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %167 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.cper_sec_pcie*, %struct.cper_sec_pcie** %5, align 8
  %171 = getelementptr inbounds %struct.cper_sec_pcie, %struct.cper_sec_pcie* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (i8*, i8*, i64, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %165, i64 %169, i8* %173)
  br label %175

175:                                              ; preds = %164, %157
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i64, ...) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
