; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_read_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap-persistent.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { %struct.TYPE_4__*, i8*, i8*, %struct.disk_header*, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.disk_header = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DM_CHUNK_SIZE_DEFAULT_SECTORS = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@SNAP_MAGIC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid or corrupt snapshot\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"chunk size %u in device metadata overrides table chunk size of %u.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid on-disk chunk size %u: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*, i32*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.pstore* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pstore*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.disk_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pstore* %0, %struct.pstore** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.pstore*, %struct.pstore** %4, align 8
  %12 = getelementptr inbounds %struct.pstore, %struct.pstore* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @DM_CHUNK_SIZE_DEFAULT_SECTORS, align 4
  %19 = load %struct.pstore*, %struct.pstore** %4, align 8
  %20 = getelementptr inbounds %struct.pstore, %struct.pstore* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_3__* @dm_snap_cow(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bdev_logical_block_size(i32 %26)
  %28 = ashr i32 %27, 9
  %29 = call i32 @max(i32 %18, i32 %28)
  %30 = load %struct.pstore*, %struct.pstore** %4, align 8
  %31 = getelementptr inbounds %struct.pstore, %struct.pstore* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.pstore*, %struct.pstore** %4, align 8
  %35 = getelementptr inbounds %struct.pstore, %struct.pstore* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.pstore*, %struct.pstore** %4, align 8
  %41 = getelementptr inbounds %struct.pstore, %struct.pstore* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.pstore*, %struct.pstore** %4, align 8
  %45 = getelementptr inbounds %struct.pstore, %struct.pstore* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ffs(i32 %48)
  %50 = sub nsw i64 %49, 1
  %51 = load %struct.pstore*, %struct.pstore** %4, align 8
  %52 = getelementptr inbounds %struct.pstore, %struct.pstore* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i64 %50, i64* %54, align 8
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %17, %2
  %56 = call i32 (...) @dm_io_client_create()
  %57 = load %struct.pstore*, %struct.pstore** %4, align 8
  %58 = getelementptr inbounds %struct.pstore, %struct.pstore* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pstore*, %struct.pstore** %4, align 8
  %60 = getelementptr inbounds %struct.pstore, %struct.pstore* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.pstore*, %struct.pstore** %4, align 8
  %66 = getelementptr inbounds %struct.pstore, %struct.pstore* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %169

69:                                               ; preds = %55
  %70 = load %struct.pstore*, %struct.pstore** %4, align 8
  %71 = call i32 @alloc_area(%struct.pstore* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %169

76:                                               ; preds = %69
  %77 = load %struct.pstore*, %struct.pstore** %4, align 8
  %78 = load %struct.pstore*, %struct.pstore** %4, align 8
  %79 = getelementptr inbounds %struct.pstore, %struct.pstore* %78, i32 0, i32 3
  %80 = load %struct.disk_header*, %struct.disk_header** %79, align 8
  %81 = load i32, i32* @READ, align 4
  %82 = call i32 @chunk_io(%struct.pstore* %77, %struct.disk_header* %80, i32 0, i32 %81, i32 1)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  br label %165

86:                                               ; preds = %76
  %87 = load %struct.pstore*, %struct.pstore** %4, align 8
  %88 = getelementptr inbounds %struct.pstore, %struct.pstore* %87, i32 0, i32 3
  %89 = load %struct.disk_header*, %struct.disk_header** %88, align 8
  store %struct.disk_header* %89, %struct.disk_header** %7, align 8
  %90 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %91 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32*, i32** %5, align 8
  store i32 1, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %169

97:                                               ; preds = %86
  %98 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %99 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = load i8*, i8** @SNAP_MAGIC, align 8
  %103 = icmp ne i8* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %165

108:                                              ; preds = %97
  %109 = load i32*, i32** %5, align 8
  store i32 0, i32* %109, align 4
  %110 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %111 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = load %struct.pstore*, %struct.pstore** %4, align 8
  %115 = getelementptr inbounds %struct.pstore, %struct.pstore* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %117 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @le32_to_cpu(i32 %118)
  %120 = load %struct.pstore*, %struct.pstore** %4, align 8
  %121 = getelementptr inbounds %struct.pstore, %struct.pstore* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %123 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %8, align 4
  %127 = load %struct.pstore*, %struct.pstore** %4, align 8
  %128 = getelementptr inbounds %struct.pstore, %struct.pstore* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %169

135:                                              ; preds = %108
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.pstore*, %struct.pstore** %4, align 8
  %141 = getelementptr inbounds %struct.pstore, %struct.pstore* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %144)
  br label %146

146:                                              ; preds = %138, %135
  %147 = load %struct.pstore*, %struct.pstore** %4, align 8
  %148 = call i32 @free_area(%struct.pstore* %147)
  %149 = load %struct.pstore*, %struct.pstore** %4, align 8
  %150 = getelementptr inbounds %struct.pstore, %struct.pstore* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @dm_exception_store_set_chunk_size(%struct.TYPE_4__* %151, i32 %152, i8** %10)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %146
  %157 = load i32, i32* %8, align 4
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %157, i8* %158)
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %169

161:                                              ; preds = %146
  %162 = load %struct.pstore*, %struct.pstore** %4, align 8
  %163 = call i32 @alloc_area(%struct.pstore* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %169

165:                                              ; preds = %104, %85
  %166 = load %struct.pstore*, %struct.pstore** %4, align 8
  %167 = call i32 @free_area(%struct.pstore* %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %161, %156, %134, %95, %74, %64
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local %struct.TYPE_3__* @dm_snap_cow(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @dm_io_client_create(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @alloc_area(%struct.pstore*) #1

declare dso_local i32 @chunk_io(%struct.pstore*, %struct.disk_header*, i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @free_area(%struct.pstore*) #1

declare dso_local i32 @dm_exception_store_set_chunk_size(%struct.TYPE_4__*, i32, i8**) #1

declare dso_local i32 @DMERR(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
