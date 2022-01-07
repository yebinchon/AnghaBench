; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_down_xfermask_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_down_xfermask_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i64, i64, i64 }

@ATA_DNXFER_QUIET = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ATA_UDMA_MASK_40C = common dso_local global i64 0, align 8
@ATA_MASK_PIO = common dso_local global i64 0, align 8
@ATA_MASK_MWDMA = common dso_local global i64 0, align 8
@ATA_MASK_UDMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"limiting speed to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_down_xfermask_limit(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ATA_DNXFER_QUIET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @ATA_DNXFER_QUIET, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ata_pack_xfermask(i64 %27, i64 %30, i64 %33)
  store i64 %34, i64* %7, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @ata_unpack_xfermask(i64 %35, i64* %9, i64* %10, i64* %11)
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %96 [
    i32 128, label %38
    i32 131, label %48
    i32 132, label %88
    i32 129, label %92
    i32 130, label %95
  ]

38:                                               ; preds = %2
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @fls(i64 %39)
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = and i64 %46, %45
  store i64 %47, i64* %9, align 8
  br label %98

48:                                               ; preds = %2
  %49 = load i64, i64* %11, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @fls(i64 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %11, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %51
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %154

66:                                               ; preds = %51
  br label %87

67:                                               ; preds = %48
  %68 = load i64, i64* %10, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @fls(i64 %71)
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = shl i32 1, %74
  %76 = xor i32 %75, -1
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %10, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %154

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %66
  br label %98

88:                                               ; preds = %2
  %89 = load i64, i64* @ATA_UDMA_MASK_40C, align 8
  %90 = load i64, i64* %11, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %11, align 8
  br label %98

92:                                               ; preds = %2
  %93 = load i64, i64* %9, align 8
  %94 = and i64 %93, 1
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %2, %92
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %98

96:                                               ; preds = %2
  %97 = call i32 (...) @BUG()
  br label %98

98:                                               ; preds = %96, %95, %88, %87, %38
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @ata_pack_xfermask(i64 %99, i64 %100, i64 %101)
  %103 = load i64, i64* %8, align 8
  %104 = and i64 %103, %102
  store i64 %104, i64* %8, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load i64, i64* @ATA_MASK_PIO, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %98
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109, %98
  %114 = load i32, i32* @ENOENT, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %154

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @ATA_MASK_MWDMA, align 8
  %122 = load i64, i64* @ATA_MASK_UDMA, align 8
  %123 = or i64 %121, %122
  %124 = and i64 %120, %123
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %128 = load i64, i64* %8, align 8
  %129 = call i8* @ata_mode_string(i64 %128)
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @ATA_MASK_PIO, align 8
  %132 = and i64 %130, %131
  %133 = call i8* @ata_mode_string(i64 %132)
  %134 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %127, i32 32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %129, i8* %133)
  br label %140

135:                                              ; preds = %119
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %137 = load i64, i64* %8, align 8
  %138 = call i8* @ata_mode_string(i64 %137)
  %139 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %136, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %126
  %141 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %142 = load i32, i32* @KERN_WARNING, align 4
  %143 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %144 = call i32 @ata_dev_printk(%struct.ata_device* %141, i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %140, %116
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %148 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %147, i32 0, i32 0
  %149 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %150 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %149, i32 0, i32 1
  %151 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %152 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %151, i32 0, i32 2
  %153 = call i32 @ata_unpack_xfermask(i64 %146, i64* %148, i64* %150, i64* %152)
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %145, %113, %82, %63
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i64 @ata_pack_xfermask(i64, i64, i64) #1

declare dso_local i32 @ata_unpack_xfermask(i64, i64*, i64*, i64*) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @ata_mode_string(i64) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
