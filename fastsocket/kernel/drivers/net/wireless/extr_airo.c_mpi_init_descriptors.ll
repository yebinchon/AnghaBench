; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_mpi_init_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_mpi_init_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_13__, %struct.TYPE_15__*, i64, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_14__ = type { i32, i64, i32, i8* }

@SUCCESS = common dso_local global i32 0, align 4
@CMD_ALLOCATEAUX = common dso_local global i8* null, align 8
@FID_RX = common dso_local global i32 0, align 4
@MPI_MAX_FIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't allocate RX FID\00", align 1
@FID_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't allocate TX FID\00", align 1
@RID_RW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't allocate RID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*)* @mpi_init_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_init_descriptors(%struct.airo_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  %8 = load i32, i32* @SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %10 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %12 = call i32 @netif_stop_queue(%struct.TYPE_15__* %11)
  %13 = call i32 @memset(%struct.TYPE_14__* %5, i32 0, i32 32)
  %14 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 32)
  %15 = load i8*, i8** @CMD_ALLOCATEAUX, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @FID_RX, align 4
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %20 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %26 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* @MPI_MAX_FIDS, align 4
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %33 = call i32 @issuecommand(%struct.airo_info* %32, %struct.TYPE_14__* %4, %struct.TYPE_14__* %5)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %1
  %38 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %39 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @airo_print_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %185

45:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MPI_MAX_FIDS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %52 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %51, i32 0, i32 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %60 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %59, i32 0, i32 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = call i32 @memcpy_toio(i64 %58, %struct.TYPE_16__* %65, i32 4)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %46

70:                                               ; preds = %46
  %71 = call i32 @memset(%struct.TYPE_14__* %5, i32 0, i32 32)
  %72 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 32)
  %73 = load i8*, i8** @CMD_ALLOCATEAUX, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* @FID_TX, align 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %78 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %77, i32 0, i32 3
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %84 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load i32, i32* @MPI_MAX_FIDS, align 4
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %119, %70
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MPI_MAX_FIDS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %96 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %95, i32 0, i32 3
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %104 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %103, i32 0, i32 3
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %112 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %111, i32 0, i32 3
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = call i32 @memcpy_toio(i64 %110, %struct.TYPE_16__* %117, i32 4)
  br label %119

119:                                              ; preds = %94
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %90

122:                                              ; preds = %90
  %123 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %124 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %123, i32 0, i32 3
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %133 = call i32 @issuecommand(%struct.airo_info* %132, %struct.TYPE_14__* %4, %struct.TYPE_14__* %5)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SUCCESS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %122
  %138 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %139 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %138, i32 0, i32 1
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @airo_print_err(i32 %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %2, align 4
  br label %185

145:                                              ; preds = %122
  %146 = call i32 @memset(%struct.TYPE_14__* %5, i32 0, i32 32)
  %147 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 32)
  %148 = load i8*, i8** @CMD_ALLOCATEAUX, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 3
  store i8* %148, i8** %149, align 8
  %150 = load i32, i32* @RID_RW, align 4
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  store i32 %150, i32* %151, align 8
  %152 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %153 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %157 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 1
  store i64 %159, i64* %160, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i32 1, i32* %161, align 8
  %162 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %163 = call i32 @issuecommand(%struct.airo_info* %162, %struct.TYPE_14__* %4, %struct.TYPE_14__* %5)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @SUCCESS, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %145
  %168 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %169 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %168, i32 0, i32 1
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @airo_print_err(i32 %172, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %2, align 4
  br label %185

175:                                              ; preds = %145
  %176 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %177 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %181 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = call i32 @memcpy_toio(i64 %179, %struct.TYPE_16__* %182, i32 4)
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %175, %167, %137, %37
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @netif_stop_queue(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @issuecommand(%struct.airo_info*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @airo_print_err(i32, i8*) #1

declare dso_local i32 @memcpy_toio(i64, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
