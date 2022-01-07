; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_proc.c_proc_print_scsidevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_proc.c_proc_print_scsidevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Host: scsi%d Channel: %02d Id: %02d Lun: %02d\0A  Vendor: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" Model: \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" Rev: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  Type:   %s \00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"               ANSI  SCSI revision: %02x\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" CCS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @proc_print_scsidevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_print_scsidevice(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.seq_file*
  store %struct.seq_file* %9, %struct.seq_file** %6, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i32 @scsi_is_sdev_device(%struct.device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %157

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %5, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %59, %14
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 32
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %58

55:                                               ; preds = %36
  %56 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %45
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %91, %62
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 16
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %70 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 32
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %79 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %80 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %90

87:                                               ; preds = %68
  %88 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %89 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %77
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %65

94:                                               ; preds = %65
  %95 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %96 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %123, %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %102 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 32
  br i1 %108, label %109, label %119

109:                                              ; preds = %100
  %110 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %111 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %112 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  br label %122

119:                                              ; preds = %100
  %120 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %121 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %109
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %97

126:                                              ; preds = %97
  %127 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %128 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %129 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %130 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %131 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @scsi_device_type(i32 %132)
  %134 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %136 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %137 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %140 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 1
  %143 = zext i1 %142 to i32
  %144 = sub nsw i32 %138, %143
  %145 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %144)
  %146 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %153

150:                                              ; preds = %126
  %151 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %152 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %156

153:                                              ; preds = %126
  %154 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %155 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %13
  ret i32 0
}

declare dso_local i32 @scsi_is_sdev_device(%struct.device*) #1

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @scsi_device_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
