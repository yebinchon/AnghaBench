; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_set_vw_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_set_vw_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Setting size to VGA\0A\00", align 1
@STV_IMAGE_VGA_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_VGA_ROWS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Setting size to CIF\0A\00", align 1
@STV_IMAGE_CIF_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_CIF_ROWS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Setting size to QVGA\0A\00", align 1
@STV_IMAGE_QVGA_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_QVGA_ROWS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Setting size to QCIF\0A\00", align 1
@STV_IMAGE_QCIF_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_QCIF_ROWS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*, i32)* @set_vw_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vw_size(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %8 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %168 [
    i32 128, label %12
    i32 131, label %36
    i32 129, label %60
    i32 132, label %84
    i32 133, label %99
    i32 134, label %114
    i32 135, label %129
    i32 130, label %144
  ]

12:                                               ; preds = %2
  %13 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** @STV_IMAGE_VGA_COLS, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %17 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i8*, i8** @STV_IMAGE_VGA_ROWS, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %23 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i8*, i8** @STV_IMAGE_VGA_COLS, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i8*, i8** @STV_IMAGE_VGA_ROWS, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %34 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  br label %171

36:                                               ; preds = %2
  %37 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** @STV_IMAGE_CIF_COLS, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %41 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i8*, i8** @STV_IMAGE_CIF_ROWS, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %47 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %45, i32* %49, align 4
  %50 = load i8*, i8** @STV_IMAGE_CIF_COLS, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load i8*, i8** @STV_IMAGE_CIF_ROWS, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  br label %171

60:                                               ; preds = %2
  %61 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i8*, i8** @STV_IMAGE_QVGA_COLS, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %65 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load i8*, i8** @STV_IMAGE_QVGA_ROWS, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %71 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load i8*, i8** @STV_IMAGE_QVGA_COLS, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %77 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  %79 = load i8*, i8** @STV_IMAGE_QVGA_ROWS, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  br label %171

84:                                               ; preds = %2
  %85 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %86 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 288, i32* %88, align 4
  %89 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %90 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 216, i32* %92, align 4
  %93 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %94 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 288, i32* %95, align 4
  %96 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 216, i32* %98, align 4
  br label %171

99:                                               ; preds = %2
  %100 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %101 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i32 256, i32* %102, align 4
  %103 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %104 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 192, i32* %105, align 4
  %106 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %107 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 256, i32* %109, align 4
  %110 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %111 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 192, i32* %113, align 4
  br label %171

114:                                              ; preds = %2
  %115 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %116 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 224, i32* %117, align 4
  %118 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %119 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  store i32 168, i32* %120, align 4
  %121 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %122 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i32 224, i32* %124, align 4
  %125 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %126 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 168, i32* %128, align 4
  br label %171

129:                                              ; preds = %2
  %130 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %131 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 192, i32* %132, align 4
  %133 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %134 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 144, i32* %135, align 4
  %136 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %137 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 192, i32* %139, align 4
  %140 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  store i32 144, i32* %143, align 4
  br label %171

144:                                              ; preds = %2
  %145 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i8*, i8** @STV_IMAGE_QCIF_COLS, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %149 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  %152 = load i8*, i8** @STV_IMAGE_QCIF_ROWS, align 8
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %155 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load i8*, i8** @STV_IMAGE_QCIF_COLS, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %161 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load i8*, i8** @STV_IMAGE_QCIF_ROWS, align 8
  %164 = ptrtoint i8* %163 to i32
  %165 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %166 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  br label %171

168:                                              ; preds = %2
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %168, %144, %129, %114, %99, %84, %60, %36, %12
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
