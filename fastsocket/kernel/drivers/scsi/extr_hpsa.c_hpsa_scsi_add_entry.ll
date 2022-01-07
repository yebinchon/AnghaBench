; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_scsi_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_2__*, %struct.hpsa_scsi_dev_t** }
%struct.TYPE_2__ = type { i32 }
%struct.hpsa_scsi_dev_t = type { i32, i32*, i32, i32, i32 }

@HPSA_MAX_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"too many devices, some will be inaccessible.\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"physical device with no LUN=0, suspect firmware bug or unsupported hardware configuration.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s device c%db%dt%dl%d added.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i32, %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t**, i32*)* @hpsa_scsi_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_add_entry(%struct.ctlr_info* %0, i32 %1, %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %10 = alloca %struct.hpsa_scsi_dev_t**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i8], align 1
  %15 = alloca [8 x i8], align 1
  %16 = alloca %struct.hpsa_scsi_dev_t*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.hpsa_scsi_dev_t* %2, %struct.hpsa_scsi_dev_t** %9, align 8
  store %struct.hpsa_scsi_dev_t** %3, %struct.hpsa_scsi_dev_t*** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %18 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @HPSA_MAX_DEVICES, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %161

29:                                               ; preds = %5
  %30 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %31 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %121

35:                                               ; preds = %29
  %36 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %37 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %44 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %45 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %48 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %51 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %50, i32 0, i32 2
  %52 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %53 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %52, i32 0, i32 0
  %54 = call i64 @hpsa_find_target_lun(%struct.ctlr_info* %43, i32* %46, i32 %49, i32* %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %161

57:                                               ; preds = %42
  br label %121

58:                                               ; preds = %35
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %60 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %61 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @memcpy(i8* %59, i32* %62, i32 8)
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 4
  store i8 0, i8* %64, align 1
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %106, %58
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %65
  %70 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %71 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %70, i32 0, i32 2
  %72 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %72, i64 %74
  %76 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %75, align 8
  store %struct.hpsa_scsi_dev_t* %76, %struct.hpsa_scsi_dev_t** %16, align 8
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %78 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %16, align 8
  %79 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @memcpy(i8* %77, i32* %80, i32 8)
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 4
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %85 = call i64 @memcmp(i8* %83, i8* %84, i32 8)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %69
  %88 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %16, align 8
  %89 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %92 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %16, align 8
  %94 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %97 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %99 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %104 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %69
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %65

109:                                              ; preds = %87, %65
  %110 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %111 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %116 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = call i32 @dev_warn(i32* %118, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %161

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %57, %34
  %122 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %123 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %124 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %123, i32 0, i32 2
  %125 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %125, i64 %127
  store %struct.hpsa_scsi_dev_t* %122, %struct.hpsa_scsi_dev_t** %128, align 8
  %129 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %130 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %134 = load %struct.hpsa_scsi_dev_t**, %struct.hpsa_scsi_dev_t*** %10, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %134, i64 %137
  store %struct.hpsa_scsi_dev_t* %133, %struct.hpsa_scsi_dev_t** %138, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %143 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %147 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @scsi_device_type(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %152 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %155 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %9, align 8
  %158 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @dev_info(i32* %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %150, i32 %153, i32 %156, i32 %159)
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %121, %114, %56, %23
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @hpsa_find_target_lun(%struct.ctlr_info*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_device_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
