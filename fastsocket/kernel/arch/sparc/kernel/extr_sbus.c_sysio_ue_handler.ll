; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sbus.c_sysio_ue_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_sbus.c_sysio_ue_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.iommu* }
%struct.iommu = type { i32 }

@SYSIO_UE_AFSR = common dso_local global i64 0, align 8
@SYSIO_UE_AFAR = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_PPIO = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_PDRD = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_PDWR = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SPIO = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SDRD = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SDWR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"portid\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"SYSIO[%x]: Uncorrectable ECC Error, primary error type[%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DVMA Read\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"DVMA Write\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"SYSIO[%x]: DOFF[%lx] SIZE[%lx] MID[%lx]\0A\00", align 1
@SYSIO_UEAFSR_DOFF = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_SIZE = common dso_local global i64 0, align 8
@SYSIO_UEAFSR_MID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"SYSIO[%x]: AFAR[%016lx]\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"SYSIO[%x]: Secondary UE errors [\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"(PIO)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"(DVMA Read)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"(DVMA Write)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sysio_ue_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysio_ue_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.of_device*, align 8
  %6 = alloca %struct.iommu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.of_device*
  store %struct.of_device* %16, %struct.of_device** %5, align 8
  %17 = load %struct.of_device*, %struct.of_device** %5, align 8
  %18 = getelementptr inbounds %struct.of_device, %struct.of_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.iommu*, %struct.iommu** %20, align 8
  store %struct.iommu* %21, %struct.iommu** %6, align 8
  %22 = load %struct.iommu*, %struct.iommu** %6, align 8
  %23 = getelementptr inbounds %struct.iommu, %struct.iommu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 8192
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @SYSIO_UE_AFSR, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @SYSIO_UE_AFAR, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @upa_readq(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @upa_readq(i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @SYSIO_UEAFSR_PPIO, align 8
  %39 = load i64, i64* @SYSIO_UEAFSR_PDRD, align 8
  %40 = or i64 %38, %39
  %41 = load i64, i64* @SYSIO_UEAFSR_PDWR, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @SYSIO_UEAFSR_SPIO, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @SYSIO_UEAFSR_SDRD, align 8
  %46 = or i64 %44, %45
  %47 = load i64, i64* @SYSIO_UEAFSR_SDWR, align 8
  %48 = or i64 %46, %47
  %49 = and i64 %37, %48
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @upa_writeq(i64 %50, i64 %51)
  %53 = load %struct.of_device*, %struct.of_device** %5, align 8
  %54 = getelementptr inbounds %struct.of_device, %struct.of_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @of_getintprop_default(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @SYSIO_UEAFSR_PPIO, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %2
  br label %78

63:                                               ; preds = %2
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @SYSIO_UEAFSR_PDRD, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %76

69:                                               ; preds = %63
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @SYSIO_UEAFSR_PDWR, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  br label %76

76:                                               ; preds = %69, %68
  %77 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %68 ], [ %75, %69 ]
  br label %78

78:                                               ; preds = %76, %62
  %79 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %62 ], [ %77, %76 ]
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %57, i8* %79)
  %81 = load i32, i32* %14, align 4
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @SYSIO_UEAFSR_DOFF, align 8
  %84 = and i64 %82, %83
  %85 = lshr i64 %84, 45
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* @SYSIO_UEAFSR_SIZE, align 8
  %88 = and i64 %86, %87
  %89 = lshr i64 %88, 42
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @SYSIO_UEAFSR_MID, align 8
  %92 = and i64 %90, %91
  %93 = lshr i64 %92, 37
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %81, i64 %85, i64 %89, i64 %93)
  %95 = load i32, i32* %14, align 4
  %96 = load i64, i64* %11, align 8
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %95, i64 %96)
  %98 = load i32, i32* %14, align 4
  %99 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  store i32 0, i32* %13, align 4
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @SYSIO_UEAFSR_SPIO, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %78
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %78
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @SYSIO_UEAFSR_SDRD, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %108
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* @SYSIO_UEAFSR_SDWR, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  %125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %126
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %133 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %133
}

declare dso_local i64 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i64, i64) #1

declare dso_local i32 @of_getintprop_default(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
